<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarCuenta.aspx.cs" Inherits="TrabajoPractico3.EliminarCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
             <div style="height: 136px">
                 <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="136px" HorizontalAlign="Center">
                     <br />
                     <br />
                     <asp:Label ID="Label1" runat="server" Text="Eliminar Cuenta" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                 </asp:Panel>
        </div><div style="height: 622px">
                 <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="622px">
                     <br />
                     <br />
                     <br />
                     <br />
                     &nbsp;
                     <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Buscar cuenta por:"></asp:Label>
                     <br />
                     <br />
                     <br />
                     &nbsp;
                     <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="24px">
                         <asp:ListItem>Nro de cuenta</asp:ListItem>
                         <asp:ListItem>Nombre y Apellido</asp:ListItem>
                     </asp:RadioButtonList>
                     <br />
                     <br />
                     &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="132px"></asp:TextBox>
                     &nbsp;
                     <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
                     <br />
                     <br />
                     <br />
                     &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                     <br />
                     <br />
&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                     <br />
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" DeleteCommand="delete from Cuentas where id=@id" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>" SelectCommand="SELECT id, descripcion FROM Cuentas WHERE (id = @id)">
                         <DeleteParameters>
                             <asp:Parameter Name="id" />
                         </DeleteParameters>
                         <SelectParameters>
                             <asp:Parameter Name="id" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" DeleteCommand="delete from Cuentas where id=@id" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>" SelectCommand="SELECT id, descripcion FROM Cuentas WHERE (descripcion = @descripcion)">
                         <DeleteParameters>
                             <asp:Parameter Name="id" />
                         </DeleteParameters>
                         <SelectParameters>
                             <asp:Parameter Name="descripcion" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <br />
                     &nbsp;<br /> &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Eliminar cuenta" />
                     &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                 </asp:Panel>
</div><div style="height: 107px">
                 <asp:Panel ID="Panel3" runat="server" BackColor="#FF9966" Height="101px" HorizontalAlign="Right">
                     <br />
                     <br />
                     <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/Principal.aspx">Ir a la página principal</asp:HyperLink>
                 </asp:Panel>
</div>
    </form>
</body>
</html>
