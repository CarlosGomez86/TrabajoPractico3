<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearRegistro.aspx.cs" Inherits="TrabajoPractico3.CrearRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 139px">
            <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="133px" HorizontalAlign="Center">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Crear Registro" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            </asp:Panel>
        </div>
        <div style="height: 622px">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="614px">
                <br />
                <br />
                &nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Buscar cuenta por:"></asp:Label>
                &nbsp;<br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Nro de cuenta</asp:ListItem>
                    <asp:ListItem>Nombre y Apellido</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
                &nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server"></asp:Label>
                &nbsp;<asp:Label ID="Label10" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;
                <br />
                &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Ingrese tipo de registro: "></asp:Label>
                <br />
                <br />
                &nbsp;<asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Debe</asp:ListItem>
                    <asp:ListItem>Haber</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Ingrese tipo de monto: "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Aceptar" />
                &nbsp;<asp:Label ID="Label8" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trabajoPractico3ConnectionString %>" DataSourceMode="DataReader" InsertCommand="insert into RegistrosContables (idCuenta,monto,tipo) values (@idCuenta,@monto,@tipo)" ProviderName="<%$ ConnectionStrings:trabajoPractico3ConnectionString.ProviderName %>" SelectCommand="SELECT idC, descripcion FROM Cuentas WHERE (idC = @idC)">
                    <InsertParameters>
                        <asp:Parameter Name="idCuenta" />
                        <asp:Parameter Name="monto" />
                        <asp:Parameter Name="tipo" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter Name="idC" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:trabajoPractico3ConnectionString %>" DataSourceMode="DataReader" ProviderName="<%$ ConnectionStrings:trabajoPractico3ConnectionString.ProviderName %>" SelectCommand="SELECT idC, descripcion FROM Cuentas WHERE (descripcion = @descripcion)">
                    <SelectParameters>
                        <asp:Parameter Name="descripcion" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>
</div>
        <div style="height: 107px">
            <asp:Panel ID="Panel3" runat="server" BackColor="#FF9966" Height="101px" HorizontalAlign="Right">
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/Principal.aspx">Ir a la página principal</asp:HyperLink>
            </asp:Panel>
</div>
    </form>
</body>
</html>
