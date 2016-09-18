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
    public class GridChipset:HtmlGenericControl
    {
        public HtmlGenericControl Toolbar { get; set; }
        private HtmlGenericControl Content_Data { get; set; }
        public DataSet DataSource { get; set; }
        private HtmlGenericControl Paginbar { get; set; }

        public GridChipset() {
            
        }

    }
}