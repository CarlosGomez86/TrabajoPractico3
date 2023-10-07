<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="TrabajoPractico3.Registros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 136px">
            <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="129px" HorizontalAlign="Center">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Registros Contables" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            </asp:Panel>
        </div>
        <div style="height: 622px">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="618px">
                <br />
                <br />
                <br />
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" NavigateUrl="~/CrearRegistro.aspx">Nuevo registro</asp:HyperLink>
                <br />
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" NavigateUrl="~/ConsultarRegistros.aspx">Consultar registros</asp:HyperLink>
                <br />
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" NavigateUrl="~/ModificarRegistro.aspx">Editar registro</asp:HyperLink>
                <br />
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" NavigateUrl="~/EliminarRegistro.aspx">Eliminar registro</asp:HyperLink>
            </asp:Panel>
</div>
        <div style="height: 107px">
            <asp:Panel ID="Panel3" runat="server" BackColor="#FF9966" Height="105px" HorizontalAlign="Right">
                <br />
                <br />
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" NavigateUrl="~/Registros.aspx">Ir a la página principal</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
</div>
    </form>
</body>
</html>
