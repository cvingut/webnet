using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.Aplication.Account
{
    public partial class Listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView dv = new DataView((DataTable)gvUsuarios.DataSource);           
        }
        
        //dataGridView1.CellFormatting += new DataGridViewCellFormattingEventHandler(dataGridView1_CellFormatting);

        //public void CustomersGridView_RowDataBound(Object sender, GridViewRowEventArgs e)
        //{

        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        string cabecera = e.Row.Cells[0].Text;
        //        for (int i = 0; i < e.Row.Cells.Count; i++)
        //        {

        //            e.Row.Cells[i].Text = e.Row.Cells[i].Text + "<div class='tooltiptext'><b>" + cabecera + "</b><br/>" + e.Row.Cells[i].Text + "</div>";
        //        }
        //        // Display the company name in italics.


        //    }

        //}


        //    void dataGridView1_CellFormatting(object sender,
        //DataGridViewCellFormattingEventArgs e)
        //    {
        //        if ((e.ColumnIndex == this.dataGridView1.Columns["Rating"].Index)
        //            && e.Value != null)
        //        {
        //            DataGridViewCell cell =
        //                this.dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex];
        //            if (e.Value.Equals("*"))
        //            {
        //                cell.ToolTipText = "very bad";
        //            }
        //            else if (e.Value.Equals("**"))
        //            {
        //                cell.ToolTipText = "bad";
        //            }
        //            else if (e.Value.Equals("***"))
        //            {
        //                cell.ToolTipText = "good";
        //            }
        //            else if (e.Value.Equals("****"))
        //            {
        //                cell.ToolTipText = "very good";
        //            }
        //        }
        //    }

        //private void dataGridView1_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        //{
        //    // If the column is the Artist column, check the
        //    // value.
        //    if (this.gvUsuarios.Columns[e.ColumnIndex].Name == "Artist")
        //    {
        //        if (e.Value != null)
        //        {
        //            // Check for the string "pink" in the cell.
        //            string stringValue = (string)e.Value;
        //            stringValue = stringValue.ToLower();
        //            if ((stringValue.IndexOf("pink") > -1))
        //            {
        //                e.CellStyle.BackColor = Color.Pink;
        //            }

        //        }
        //    }
        //    else if (this.gvUsuarios.Columns[e.ColumnIndex].Name == "Release Date")
        //    {
        //        ShortFormDateFormat(e);
        //    }
        //}

        //Even though the date internaly stores the year as YYYY, using formatting, the
        //UI can have the format in YY.  
        //private static void ShortFormDateFormat(DataGridViewCellFormattingEventArgs formatting)
        //{
        //    if (formatting.Value != null)
        //    {
        //        try
        //        {
        //            System.Text.StringBuilder dateString = new System.Text.StringBuilder();
        //            DateTime theDate = DateTime.Parse(formatting.Value.ToString());

        //            dateString.Append(theDate.Month);
        //            dateString.Append("/");
        //            dateString.Append(theDate.Day);
        //            dateString.Append("/");
        //            dateString.Append(theDate.Year.ToString().Substring(2));
        //            formatting.Value = dateString.ToString();
        //            formatting.FormattingApplied = true;
        //        }
        //        catch (FormatException)
        //        {
        //            // Set to false in case there are other handlers interested trying to
        //            // format this DataGridViewCellFormattingEventArgs instance.
        //            formatting.FormattingApplied = false;
        //        }
        //    }
        //}
    }
}