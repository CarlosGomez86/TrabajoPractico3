<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="TrabajoPractico3.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 145px">
            <br />
            <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="87px" HorizontalAlign="Center" style="margin-top: 0px">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="X-Large" Font-Underline="True" Text="Libro Contable"></asp:Label>
            </asp:Panel>
        </div>
        <div style="height: 410px">
            <asp:Panel ID="Panel3" runat="server" BackColor="#FFCC66" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Height="401px">
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registros.aspx">Ir a Registros Contables</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" NavigateUrl="~/Cuentas.aspx">Ir a Cuentas</asp:HyperLink>
            </asp:Panel>
</div>
        <div style="height: 88px">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FF9966" Height="86px">
            </asp:Panel>
</div>
    </form>
</body>
</html>
