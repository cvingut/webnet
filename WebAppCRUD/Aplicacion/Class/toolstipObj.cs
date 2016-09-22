using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

namespace WebAppCRUD.Aplicacion.Class
{
    public class toolstipObj
    {


        public void HtmlChipset(int i)
        {

            HtmlGenericControl gpContent = new HtmlGenericControl();

            if (gpContent != null)
            {

                System.Web.UI.HtmlControls.HtmlGenericControl chipset = new HtmlGenericControl("DIV");
                chipset.Attributes.Add("class", "gp_column");


                HtmlGenericControl number = new HtmlGenericControl("DIV");
                number.Attributes.Add("class", "ctooltip");
                HtmlGenericControl toolstip = new HtmlGenericControl("DIV");
                toolstip.Attributes.Add("class", "tooltiptext");
                toolstip.InnerHtml = "<b>Number</b>";
                number.InnerText = i.ToString();
                number.Controls.Add(toolstip);
                HtmlGenericControl active = new HtmlGenericControl();
                active.Controls.Add(number);

                HtmlGenericControl chipsetActiveStatus = new HtmlGenericControl();
                chipsetActiveStatus.Controls.Add(active);

                chipset.Controls.Add(chipsetActiveStatus);

                //chipset.Controls.Add(HtmlData(null, i));
                gpContent.Controls.Add(chipset);

            }
            else
            {
                //Notificar que no se encontró 
            }

        }
    }
}