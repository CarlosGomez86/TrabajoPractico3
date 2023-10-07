using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPractico3
{
    public partial class ConsultarRegistros : System.Web.UI.Page
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
                    this.Label5.Text = "Número de cuenta";
                    this.Label6.Text = "Nombre y apellido";
                    this.Label3.Text = datos["idC"].ToString();
                    this.Label4.Text = datos["descripcion"].ToString();
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
                    this.Label6.Text = "Nombre y apellido";
                    this.Label3.Text = datos["idC"].ToString();
                    this.Label4.Text = datos["descripcion"].ToString();
                }
                else
                    Response.Write("La cuenta no existe");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {



            this.SqlDataSource2.SelectParameters["idCuenta"].DefaultValue = this.Label3.Text;
            this.SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)this.SqlDataSource2.Select(DataSourceSelectArguments.Empty);



            List<reg> registros = new List<reg>();

            int saldo = 0;
            while (datos.Read())
            {

                reg regi=new reg();

                regi.Registro = Convert.ToInt32(datos["id"]);

                if (Convert.ToInt32(datos["tipo"])==0)
                {
                    regi.Debe = Convert.ToInt32(datos["monto"]);
                    regi.Haber = 0;
                    saldo = saldo - regi.Debe;
                }
                else
                {
                    regi.Haber = Convert.ToInt32(datos["monto"]);
                    regi.Debe = 0;
                    saldo = saldo + regi.Haber;

                }
                regi.Saldo = saldo;

                registros.Add(regi);  
                
                


               
               
            }


         
            this.GridView1.DataSource = registros;

            

            this.GridView1.DataBind();

            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.Cells[1].Text != "0")
                {
                    row.Cells[1].BackColor = System.Drawing.Color.Green;
                    row.Cells[0].BackColor = System.Drawing.Color.Gray;

                }
                else
                {
                    row.Cells[2].BackColor = System.Drawing.Color.Red;
                    row.Cells[0].BackColor = System.Drawing.Color.Gray;
                }
                if ( int.Parse( row.Cells[3].Text) <0)
                    row.Cells[3].ForeColor=System.Drawing.Color.Red;
                else
                    row.Cells[3].ForeColor = System.Drawing.Color.Green;

            }
            


        }
    }
}