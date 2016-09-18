using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

namespace WebAppCRUD.Aplicacion.Class
{
    public class Chipset
    {
        public string ImageUrl { get; set; }
        public string ImageAlt { get; set; }
        public bool active { get; set; }
        public int position { get; set; }
        public DataRow Data { get; set; }
        public int idChipset { get; set; }
        public List<Control> Controls { get; set; }
        public HtmlGenericControl HtmlChipsetControl { get; set; }

        public string cssClassChipset { get; set; }
        public string cssClassContentDataChipset { get; set; }
        public string cssClassContentDataGroupChipset { get; set; }
        public string cssClassContentDataSpecChipset { get; set; }
        public string cssClassContentImgChipset { get; set; }
        public Chipset() {
            this.updateDefaultValueClass();

            HtmlChipsetControl = new HtmlGenericControl("DIV");
            HtmlChipsetControl.Attributes.Add("class",cssClassChipset);

            HtmlChipsetControl.Controls.Add(this.getImgChipset());

        }

        private void updateDefaultValueClass()
        {
            cssClassChipset = "chipset_data";
            cssClassContentDataChipset = "content_data";
            cssClassContentDataSpecChipset = "content_group_data";
            cssClassContentImgChipset = "ctn_Img_Chipset";
            ImageUrl = "http://es.seaicons.com/wp-content/uploads/2015/11/Apps-Audio-Card-icon.png";

        }

        private HtmlGenericControl getImgChipset() {
            HtmlGenericControl tumbImg = new HtmlGenericControl("DIV");
            tumbImg.Attributes.Add("class", cssClassContentImgChipset);
            HtmlImage img = new HtmlImage();
            img.Src = ImageUrl;
            img.Alt = ImageAlt;
            tumbImg.Controls.Add(img);
            return tumbImg;

        }

        private HtmlGenericControl getDataChipset() {
            HtmlGenericControl content_data = new HtmlGenericControl("DIV");
            content_data.Attributes.Add("class", cssClassContentDataChipset);

            HtmlGenericControl content_group_data = new HtmlGenericControl("DIV");
            content_group_data.Attributes.Add("class", cssClassContentDataSpecChipset);




            return content_data;
        }


       
    }
}