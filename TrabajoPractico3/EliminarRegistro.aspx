﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarRegistro.aspx.cs" Inherits="TrabajoPractico3.EliminarRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
               <div style="height: 139px">
                   <asp:Panel ID="Panel1" runat="server" BackColor="#FF9966" Height="135px" HorizontalAlign="Center">
                       <br />
                       <br />
                       <asp:Label ID="Label1" runat="server" Text="Eliminar Registro" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                   </asp:Panel>
        </div>
        <div style="height: 622px">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="618px">
                <br />
                <br />
                <br />
                &nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Buscar cuenta por:"></asp:Label>
                <br />
                <br />
                &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="24px">
                    <asp:ListItem Selected="True">Nro de cuenta</asp:ListItem>
                    <asp:ListItem>Nombre y Apellido</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="132px"></asp:TextBox>
                &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
                <br />
                <br />
                &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                <br />
                &nbsp;<br /> &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                &nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ver registros" />
                <br />
                <br />
                &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium">Seleccione registro a eliminar:</asp:Label>
                <br />
                <br />
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="17px" OnSelectedIndexChanged="Button1_Click" Width="186px">
                </asp:DropDownList>
                &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Eliminar" />
                &nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>" SelectCommand="SELECT id, descripcion FROM Cuentas WHERE (id = @id)">
                    <SelectParameters>
                        <asp:Parameter Name="id" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>" SelectCommand="SELECT id, descripcion FROM Cuentas WHERE (descripcion = @descripcion)">
                    <SelectParameters>
                        <asp:Parameter Name="descripcion" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" DeleteCommand="delete from RegistrosContables where id=@id" SelectCommand="SELECT RegistrosContables.id, RegistrosContables.idCuenta, RegistrosContables.monto, RegistrosContables.tipo, cue.id FROM RegistrosContables INNER JOIN Cuentas AS cue ON RegistrosContables.idCuenta = cue.id WHERE (RegistrosContables.idCuenta = @idCuenta)" ProviderName="<%$ ConnectionStrings:TP3ConnectionString.ProviderName %>">
                    <DeleteParameters>
                        <asp:Parameter Name="id" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:Parameter Name="idCuenta" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>
</div>
                        <div style="height: 107px">
                            <asp:Panel ID="Panel3" runat="server" BackColor="#FF9966" Height="104px" HorizontalAlign="Right">
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" NavigateUrl="~/Principal.aspx">Ir a la página principal</asp:HyperLink>
                            </asp:Panel>
</div>
        
    </form>
</body>
</html>
