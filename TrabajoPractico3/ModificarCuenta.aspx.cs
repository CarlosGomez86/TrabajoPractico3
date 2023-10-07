using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico3
{
    public partial class ModificarCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                this.SqlDataSource1.SelectParameters["idC"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader datos;
                datos = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    this.Label5.Text = datos["idC"].ToString();
                    this.TextBox3.Text = datos["descripcion"].ToString();
                }
                else
                    Response.Write("La cuenta no existe");
            }

            else if (RadioButtonList1.SelectedIndex == 1)
            {
                this.SqlDataSource3.SelectParameters["descripcion"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSource3.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader datos;
                datos = (SqlDataReader)this.SqlDataSource3.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    this.Label5.Text = datos["idC"].ToString() ;
                    this.TextBox3.Text = datos["descripcion"].ToString();
                }
                else
                    Response.Write("La cuenta no existe");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (RadioButtonList1.SelectedIndex == 0) {

                this.SqlDataSource1.UpdateParameters["idC"].DefaultValue = this.Label5.Text;
                this.SqlDataSource1.UpdateParameters["descripcion"].DefaultValue = this.TextBox3.Text;
                int cant=this.SqlDataSource1.Update();
                if (cant == 1)
                    this.Label4.Text = "Se modificaron los datos";
                else
                    this.Label4.Text = "error al intentar actualizar la cuenta";
            
                }
            else if(RadioButtonList1.SelectedIndex == 1)
            {
                this.SqlDataSource3.UpdateParameters["idC"].DefaultValue = this.Label5.Text;
                this.SqlDataSource3.UpdateParameters["descripcion"].DefaultValue = this.TextBox3.Text;
                int cant = this.SqlDataSource3.Update();
                if (cant == 1)
                    this.Label4.Text = "Se modificaron los datos";
                else
                    this.Label4.Text = "error al intentar actualizar la cuenta";
            }
        }
    }
}