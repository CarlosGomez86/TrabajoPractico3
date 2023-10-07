using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico3
{
    public partial class GenerarCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.InsertParameters["descripcion"].DefaultValue = this.TextBox1.Text;
            
            
            this.SqlDataSource1.Insert();


            this.SqlDataSource2.SelectParameters["descripcion"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)this.SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            if (datos.Read())
                this.Label3.Text = " <br><br><br>Registro exitoso! <br>Titular: " + datos["descripcion"] + "<br>Cuenta Nro: " + datos["idC"];
            else
                this.Label3.Text = "Error al intentar generar la cuenta";
            
        }
    }
}