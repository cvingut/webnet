using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

namespace WebAppCRUD.Aplicacion.Pages
{
    public partial class ChipsetUpdateDevice : Page
    {
        private bool active;

        public bool Paging;
        public int Limit ;
        public int Offset;
        public int Total;
        public int pActualPage;
        public int contentOverflow;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.active = true;
                Paging = true;
                Limit = 50;
                Offset = 0;
                Total = 2000;

              
                this.LoadChipsets();
               
                //gridChipset_Content.DataBinding=
            }
           
        }

        

        public void NextPage() {
            Offset += Limit;
            Offset = (Total - Offset < 0) ? Offset + (Total - Offset) : Offset;
        }

        public void BackPage() {
            Offset-=(Offset - Limit <= 0) ? 0 : Limit;
        }

        public void GoToPage(int Page) {
            Offset = Page * Limit - Limit;
        }

        public void LoadChipsets() {

            gridChipset_Content.Controls.Clear();
            for (int i = Offset; i < Limit+Offset; i++)
            {
                HtmlChipset(i);               
            }
            gridChipset_Content.DataBind();

        }

        public void HtmlChipset(int i) {

            HtmlGenericControl gpContent =gridChipset_Content;
            
            if (gpContent != null)
            {
                
                HtmlGenericControl chipset = new HtmlGenericControl("DIV");
                chipset.Attributes.Add("class", "gp_column");
                

                HtmlGenericControl number = new HtmlGenericControl("DIV");
                number.InnerText = i.ToString();

                HtmlGenericControl active = HtmlActive();
                active.Controls.Add(number);

                HtmlGenericControl chipsetActiveStatus = HtmlControls();
                chipsetActiveStatus.Controls.Add(active);

                chipset.Controls.Add(chipsetActiveStatus);

                chipset.Controls.Add(HtmlData(null,i));
                gpContent.Controls.Add(chipset);
               
            }
            else
            {
                //Notificar que no se encontró 
            }
           
        }

        public HtmlGenericControl HtmlControls() {

            HtmlGenericControl toolbar = new HtmlGenericControl("DIV");
            toolbar.Attributes.Add("class", "gp_ch_controls");

            return toolbar;
        }

        public bool getActive() {
            bool aux = this.active;
            if (active)
            {
                this.active = false;
            }
            return aux;
            
        }

        public string getClassActive() {
            return (getActive()) ? "active-chipset" : "inactive-chipset";
        }

        public HtmlGenericControl HtmlActive() {
            HtmlGenericControl activeControl = new HtmlGenericControl("DIV");
            activeControl.Attributes.Add("class",getClassActive());
            return activeControl;
        }

        public HtmlGenericControl HtmlData(DataSet data ,int ix) {

            HtmlGenericControl chipset_data = new HtmlGenericControl("DIV");
            chipset_data.Attributes.Add("class", "chipset_data");
            chipset_data.Attributes.Add("id", ix.ToString());
            chipset_data.Attributes.Add("draggable", "true");
            chipset_data.Attributes.Add("ondragstart", "drag(event)");


            #region Create ImgChipset
            HtmlGenericControl tumbImg = new HtmlGenericControl("DIV");
            tumbImg.Attributes.Add("class", "thumbnail ctn_Img_Chipset");
            HtmlImage img = new HtmlImage();
            img.Src = "http://es.seaicons.com/wp-content/uploads/2015/11/Apps-Audio-Card-icon.png";
            img.Alt = "Chipset";

            tumbImg.Controls.Add(img);

            #endregion

            chipset_data.Controls.Add(tumbImg);

            #region Create Content Data Chipset
            HtmlGenericControl content_data = new HtmlGenericControl("DIV");
            content_data.Attributes.Add("class", "content_data");

            HtmlGenericControl content_group_data = new HtmlGenericControl("DIV");
            content_group_data.Attributes.Add("class", "content_group_data");

            for (int i = 0; i < 14; i++)
            {
                addChipsetGroupToChipsetData(i, content_group_data);
            }

            content_data.Controls.Add(content_group_data);

            #endregion
            chipset_data.Controls.Add(content_data);

            return chipset_data;
        }

        public void addChipsetGroupToChipsetData(int idChipset, HtmlGenericControl group_data) {
            HtmlGenericControl chipset_group_spec = new HtmlGenericControl("DIV");
            chipset_group_spec.Attributes.Add("class", "chipset_group_spec");

            HtmlGenericControl group_name = new HtmlGenericControl("DIV");
            group_name.Attributes.Add("class", "group_name");

            Label lbGruopName = new Label();
            //lbGruopName.ID = "name_group_"+idChipset.ToString();
            lbGruopName.Text = "Name Group "+ idChipset.ToString();
            group_name.Controls.Add(lbGruopName);
            chipset_group_spec.Controls.Add(group_name);

            HtmlGenericControl content_specs_group = new HtmlGenericControl("DIV");
            content_specs_group.Attributes.Add("class", "content_specs_group");

            for (int i = 0; i < 24; i++)
            {
                addSpecChipsetToGroup(i, content_specs_group);
            }

            chipset_group_spec.Controls.Add(content_specs_group);
            group_data.Controls.Add(chipset_group_spec);
        }


        public void addSpecChipsetToGroup(int idChipset, HtmlGenericControl content_specs_group) {
            HtmlGenericControl spec_chipset = new HtmlGenericControl("DIV");
            spec_chipset.Attributes.Add("class", "spec_chipset "+ "Sepc_id"+idChipset.ToString());
            spec_chipset.Attributes.Add("onclick", "specActionClick(this,"+ idChipset+");");

            HtmlGenericControl spec_name = new HtmlGenericControl("DIV");
            spec_name.Attributes.Add("class", "spec_name");
            Label lbSpect = new Label();
            lbSpect.Text = "Name spec" + idChipset.ToString();
            //lbSpect.ID= "chipset_spec_name_"+ idChipset.ToString();
            lbSpect.CssClass = "chipset_spec_name";
            spec_name.Controls.Add(lbSpect);

            HtmlGenericControl spec_value = new HtmlGenericControl("DIV");
            spec_value.Attributes.Add("class", "spec_value");
            Label lbSpectv = new Label();
            lbSpectv.Text = "Value spec" + idChipset.ToString();
            //lbSpectv.ID = "chipset_spec_value" + idChipset.ToString();
            lbSpectv.CssClass = "chipset_spec_value";
            spec_value.Controls.Add(lbSpectv);


            spec_chipset.Controls.Add(spec_name);
            spec_chipset.Controls.Add(spec_value);

            content_specs_group.Controls.Add(spec_chipset);

        }

        protected void btn_Page_Next_Click(object sender, EventArgs e)
        {
            NextPage();
            LoadChipsets();
        }

        protected void btn_Page_Back_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Page_GoTo_Click(object sender, EventArgs e)
        {

        }
    }
}