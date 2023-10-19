using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico3
{
    public partial class EliminarCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedIndex == 0)
            {
                this.SqlDataSource1.SelectParameters["id"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader datos;
                datos = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    Label4.Text =  datos["id"].ToString();
                    Label5.Text = datos["descripcion"].ToString();
                }
                else
                    this.Label3.Text = "La cuenta no existe";
            }

            else if (RadioButtonList1.SelectedIndex == 1)
            {
                this.SqlDataSource2.SelectParameters["descripcion"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader datos;
                datos = (SqlDataReader)this.SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    Label4.Text =  datos["id"].ToString();
                    Label5.Text = datos["descripcion"].ToString();
                }
                else
                    this.Label3.Text = "La cuenta no existe";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            if (RadioButtonList1.SelectedIndex == 0)
            {

                this.SqlDataSource1.DeleteParameters["id"].DefaultValue = this.Label4.Text;
                
                int cant = this.SqlDataSource1.Delete();
                if (cant == 1)
                    this.Label3.Text = $"La cuenta {Label3.Text} fue correctamente eliminada";
                else
                    this.Label3.Text = "error al intentar eliminar la cuenta " + Label3.Text;

            }
            else if (RadioButtonList1.SelectedIndex == 1)
            {
                this.SqlDataSource2.DeleteParameters["id"].DefaultValue = this.Label4.Text;
                
                int cant = this.SqlDataSource2.Delete();
                if (cant == 1)
                    this.Label3.Text = $"La cuenta {Label3.Text} fue correctamente eliminada";
                else
                    this.Label3.Text = "error al intentar eliminar la cuenta "+Label3.Text;
            }

        }
    }
}