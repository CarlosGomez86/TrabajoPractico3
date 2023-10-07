using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico3
{
    public partial class CrearRegistro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
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

                    Label3.Text = "Número de cuenta: ";
                    Label4.Text = datos["idC"].ToString();
                    Label9.Text = "Nombre y Apellido: ";
                    Label10.Text = datos["descripcion"].ToString();
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
                    Label3.Text = "Número de cuenta: ";
                    Label4.Text = datos["idC"].ToString();
                    Label9.Text = "Nombre y Apellido: ";
                    Label10.Text = datos["descripcion"].ToString();
                }
                else
                    this.Label3.Text = "La cuenta no existe";

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.InsertParameters["idCuenta"].DefaultValue = this.Label4.Text;
            this.SqlDataSource1.InsertParameters["monto"].DefaultValue = this.TextBox2.Text;
            if(RadioButtonList2.SelectedIndex == 0)
            {
                this.SqlDataSource1.InsertParameters["tipo"].DefaultValue = "0";
            }
            else if(RadioButtonList2.SelectedIndex == 1) {
                this.SqlDataSource1.InsertParameters["tipo"].DefaultValue = "1";
            }


            this.SqlDataSource1.Insert();


            
            
                this.Label8.Text = " Registro exitoso!";
            
        }
    }
}