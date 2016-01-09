<%@ Page Title="" Language="C#" MasterPageFile="~/Aplicacion/General.Master" AutoEventWireup="true" CodeBehind="ListarUsuarios.aspx.cs" Inherits="WebAppCRUD.Aplicacion.Pages.ListarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:sqldatasource runat="server" ID="DSUsuarios" ConnectionString="Data Sources=|DataDirectory|\DB.mdf" ProviderName="MySql.Data.MySqlClient" SelectCommand="Select [Id],[nombre],[apellido1],[apellido2],[cuenta] from Usuarios"></asp:sqldatasource>
    <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="DSUsuarios">
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="apellido1" HeaderText="Nombre" />
            <asp:BoundField DataField="apellido2" HeaderText="Nombre" />
            <asp:BoundField DataField="cuenta" HeaderText="Nombre" />

        </Columns> 
    </asp:GridView>
</asp:Content>
