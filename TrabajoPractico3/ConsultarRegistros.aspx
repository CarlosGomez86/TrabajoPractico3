<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarRegistros.aspx.cs" Inherits="TrabajoPractico3.ConsultarRegistros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
               <div style="height: 139px">
                   <asp:Panel ID="Panel3" runat="server" BackColor="#FF9966" Height="135px" HorizontalAlign="Center">
                       <br />
                       <br />
                       <asp:Label ID="Label1" runat="server" Text="Consultar Registros" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                   </asp:Panel>
        </div>
        <div style="height: 622px">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="657px">
                <br />
                <br />
                &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Buscar cuenta por:"></asp:Label>
                <br />
                <br />
                &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="24px">
                    <asp:ListItem Selected="True">Nro de cuenta</asp:ListItem>
                    <asp:ListItem>Nombre y Apellido</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="132px"></asp:TextBox>
                &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
                &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ver registros" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                &nbsp;
                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Black" HorizontalAlign="Center" Width="1337px">
                    <RowStyle BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Size="Medium" HorizontalAlign="Center" />
                </asp:GridView>
            </asp:Panel>
</div>
                        <div style="height: 136px">
                            <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="133px" HorizontalAlign="Right">
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/Principal.aspx">Ir a la página principal</asp:HyperLink>
                                &nbsp;&nbsp;
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trabajoPractico3ConnectionString %>" ProviderName="<%$ ConnectionStrings:trabajoPractico3ConnectionString.ProviderName %>" SelectCommand="SELECT idC, descripcion FROM Cuentas WHERE (idC = @idC)">
                                    <SelectParameters>
                                        <asp:Parameter Name="idC" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:trabajoPractico3ConnectionString %>" SelectCommand="SELECT RegistrosContables.id, RegistrosContables.idCuenta, RegistrosContables.monto, RegistrosContables.tipo, cue.idC FROM RegistrosContables INNER JOIN Cuentas AS cue ON RegistrosContables.idCuenta = cue.idC WHERE (RegistrosContables.idCuenta = @idCuenta)">
                                    <SelectParameters>
                                        <asp:Parameter Name="idCuenta" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:trabajoPractico3ConnectionString %>" ProviderName="<%$ ConnectionStrings:trabajoPractico3ConnectionString.ProviderName %>" SelectCommand="SELECT idC, descripcion FROM Cuentas WHERE (descripcion = @descripcion)">
                                    <SelectParameters>
                                        <asp:Parameter Name="idC" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>
</div>
        
    </form>
</body>
</html>
