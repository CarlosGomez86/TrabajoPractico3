<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarCuenta.aspx.cs" Inherits="TrabajoPractico3.ConsultarCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
              <div style="height: 145px">
                  <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="142px" HorizontalAlign="Center">
                      <br />
                      <br />
                      <asp:Label ID="Label1" runat="server" Text="Consultar Cuenta" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                  </asp:Panel>
        </div><div style="height: 622px">
                  <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="622px">
                      &nbsp;&nbsp;<br />
                      <br />
                      <br />
                      <br />
                      &nbsp;
                      <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Consultar cuenta por:"></asp:Label>
                      <br />
                      <br />
                      &nbsp;
                      <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="24px">
                          <asp:ListItem Selected="True">Nro de cuenta</asp:ListItem>
                          <asp:ListItem>Nombre y Apellido</asp:ListItem>
                      </asp:RadioButtonList>
                      <br />
                      <br />
                      <br />
                      &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="132px"></asp:TextBox>
                      <br />
                      <br />
                      &nbsp;<br /> &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aceptar" />
                      <br />
                      <br />
                      &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                      <br />
                      <br />
                      &nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT id, descripcion FROM Cuentas WHERE (descripcion = @descripcion)" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>">
                          <SelectParameters>
                              <asp:Parameter Name="descripcion" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>" SelectCommand="SELECT id, descripcion FROM Cuentas WHERE (id = @id)">
                          <SelectParameters>
                              <asp:Parameter Name="id" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </asp:Panel>
</div><div style="height: 107px">
                  <asp:Panel ID="Panel3" runat="server" BackColor="#FF9966" Height="101px" HorizontalAlign="Right">
                      <br />
                      <br />
                      &nbsp;
                      <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/Principal.aspx">Ir a la página principal</asp:HyperLink>
                  </asp:Panel>
</div>
    </form>
</body>
</html>
