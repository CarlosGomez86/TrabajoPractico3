using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico3
{
    public partial class EliminarRegistro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                this.SqlDataSource1.SelectParameters["id"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader datos;
                datos = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    this.Label5.Text = "Número de cuenta";
                    this.Label7.Text = "Nombre y apellido";
                    this.Label6.Text = datos["id"].ToString();
                    this.Label8.Text = datos["descripcion"].ToString();
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
                    this.Label5.Text = "Número de cuenta";
                    this.Label7.Text = "Nombre y apellido";
                    this.Label6.Text = datos["id"].ToString();
                    this.Label8.Text = datos["descripcion"].ToString();
                }
                else
                    Response.Write("La cuenta no existe");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSource2.SelectParameters["idCuenta"].DefaultValue = this.Label6.Text;
            this.SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)this.SqlDataSource2.Select(DataSourceSelectArguments.Empty);


            while (datos.Read())
            {
                DropDownList1.Items.Add(datos["id"].ToString());
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            this.SqlDataSource2.DeleteParameters["id"].DefaultValue = this.DropDownList1.SelectedValue;
            int cant;
            cant = this.SqlDataSource2.Delete();
            if (cant == 1)
                Label10.Text = "El registro se eliminó correctamente";
            else
                Label10.Text = "El registro no pudo eliminarse";
        }
    }
}