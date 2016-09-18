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
        protected void Page_Load(object sender, EventArgs e)
        {
            //HtmlGenericControl NewDiv = new
            //HtmlGenericControl();
            //NewDiv.ID = "divcreated";

            //HtmlGenericControl createDiv =
            //new HtmlGenericControl("DIV");
            //createDiv.ID = "createDiv";
            //createDiv.Attributes.
            //createDiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "Yellow");
            //createDiv.Style.Add(HtmlTextWriterStyle.Color, "Red");
            //createDiv.Style.Add(HtmlTextWriterStyle.Height, "100px");
            //createDiv.Style.Add(HtmlTextWriterStyle.Width, "400px");
            //createDiv.InnerHtml = " I'm a div, from code behind ";
            //this.Controls.Add(createDiv);
            this.active = true;

            this.LoadChipsets();
        }

        public void LoadChipsets() {

            for (int i = 0; i < 6; i++)
            {
                HtmlChipset(i);               
            }


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

        public HtmlGenericControl HtmlData(DataSet data ) {


            return new HtmlGenericControl("DIV");

        }


    }
}