<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuentas.aspx.cs" Inherits="TrabajoPractico3.Cuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 661px">
    <form id="form1" runat="server">
        <div style="height: 84px">
            <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="79px" HorizontalAlign="Center">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Cuentas" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            </asp:Panel>
        </div>
        <div style="height: 492px">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="485px">
                &nbsp;<br />
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/GenerarCuenta.aspx">Generar nueva Cuenta</asp:HyperLink>
                <br />
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/ConsultarCuenta.aspx">Consultar Cuenta</asp:HyperLink>
                <br />
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/ModificarCuenta.aspx">Actualizar Cuenta</asp:HyperLink>
                <br />
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/EliminarCuenta.aspx">Eliminar Cuenta</asp:HyperLink>
            </asp:Panel>
</div>
        <div style="height: 113px">
            <asp:Panel ID="Panel3" runat="server" BackColor="#FF9966" Height="114px">
            </asp:Panel>
</div>
    </form>
</body>
</html>
