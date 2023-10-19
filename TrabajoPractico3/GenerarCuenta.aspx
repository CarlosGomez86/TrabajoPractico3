<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerarCuenta.aspx.cs" Inherits="TrabajoPractico3.GenerarCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 139px">
            <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="139px" HorizontalAlign="Center">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Generar Cuenta" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            </asp:Panel>
        </div><div style="height: 810px">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="806px">
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Ingrese nombre y apellido del titular"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="267px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aceptar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" InsertCommand="INSERT INTO Cuentas (descripcion) VALUES(@descripcion)" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>">
                    <InsertParameters>
                        <asp:Parameter Name="descripcion" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>" SelectCommand="SELECT id,descripcion FROM Cuentas WHERE descripcion=@descripcion">
                    <SelectParameters>
                        <asp:Parameter Name="descripcion" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
