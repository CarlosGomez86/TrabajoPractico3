using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico3
{
    public partial class ConsultarCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                this.SqlDataSource2.SelectParameters["id"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader datos;
                datos = (SqlDataReader)this.SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    Label3.Text = "Número de cuenta:  " + datos["id"];
                    Label4.Text = "Nombre y Apellido: " + datos["descripcion"];
                }
                else
                    this.Label3.Text = "La cuenta no existe";
            }

            else if (RadioButtonList1.SelectedIndex == 1)
            {
                this.SqlDataSource1.SelectParameters["descripcion"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader datos;
                datos = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    Label3.Text = "Número de cuenta:  " + datos["id"];
                    Label4.Text = "Nombre y Apellido: " + datos["descripcion"];
                }
                else
                    this.Label3.Text = "La cuenta no existe";

            }
        }
    }
}