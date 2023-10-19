<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarCuenta.aspx.cs" Inherits="TrabajoPractico3.ModificarCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
           <div style="height: 138px">
               <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="139px" HorizontalAlign="Center">
                   <br />
                   <br />
                   <asp:Label ID="Label1" runat="server" Text="Actualizar Cuenta" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
               </asp:Panel>
        </div><div style="height: 622px">
               <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="619px">
                   <br />
                   <br />
                   &nbsp;<br /> &nbsp;
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
                   <br />
                   &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="132px"></asp:TextBox>
                   <br />
                   <br />
                   &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
                   <br />
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>" SelectCommand="SELECT id, descripcion FROM Cuentas WHERE (id = @id)" UpdateCommand="UPDATE Cuentas SET descripcion = @descripcion WHERE (id = @id)">
                       <SelectParameters>
                           <asp:Parameter Name="id" />
                       </SelectParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="descripcion" />
                           <asp:Parameter Name="id" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                   <br />
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>" SelectCommand="SELECT id,descripcion FROM Cuentas WHERE descripcion=@descripcion" UpdateCommand="UPDATE Cuentas SET descripcion=@descripcion WHERE id=@id">
                       <SelectParameters>
                           <asp:Parameter Name="descripcion" />
                       </SelectParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="descripcion" />
                           <asp:Parameter Name="id" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                   &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Número de cuenta:"></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>
                   <br />
&nbsp;<br /> &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Ingrese nuevos datos:"></asp:Label>
                   &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="149px"></asp:TextBox>
                   <br />
                   <br />
                   &nbsp;<br />
                   <br />
                   <br />
                   &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Actualizar" />
                   &nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
               </asp:Panel>
</div><div style="height: 114px">
               <asp:Panel ID="Panel3" runat="server" BackColor="#FF9966" Height="105px" HorizontalAlign="Right" style="margin-top: 6px">
                   <br />
                   <br />
                   <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/Principal.aspx">Ir a la página principal</asp:HyperLink>
               </asp:Panel>
</div>
    </form>
</body>
</html>
