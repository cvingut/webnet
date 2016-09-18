using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebAppCRUD.Aplicacion.Pages
{
    public partial class ChipsetUpdateDevice : Page
    {
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
            this.LoadChipsets();
        }

        public void LoadChipsets() {

            for (int i = 0; i < 6; i++)
            {
                this.HtmlChipset("<div class='gp_ch_controls'><div class='"+((i==0)? "active-chipset" : "inactive-chipset") + "'><span>"+ i.ToString() + "</span></div> <span class='glyphicon glyphicon-transfer' style='float:right'></span>Apply to<br>device</div><p> Contenido de los Chipset... </p>");
            }

        }

        public void HtmlChipset(string data) {

            HtmlGenericControl gpContent =gridChipset_Content;
            
            if (gpContent != null)
            {
                HtmlGenericControl chipset = new HtmlGenericControl("DIV");
                chipset.Attributes.Add("class", "gp_column");
                chipset.InnerHtml = data;
                gpContent.Controls.Add(chipset);
            }
            else
            {
                //Notificar que no se encontró 
            }
            
        }

        


    }
}