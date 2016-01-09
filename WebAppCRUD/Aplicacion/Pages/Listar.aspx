<%@ Page Title="" Language="C#" MasterPageFile="~/Aplicacion/General.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="WebApp.Aplication.Account.Listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Listar datos de Usuarios</h1>
    <p>La tabla muestra los datos de los usuarios almacenados en una base de datos. Obtenidos
        mediante un sqldatasource y visualizados a travez de un GridView.
    </p>
    <form id="fpUsuarios" runat="server">
    <asp:sqldatasource runat="server" ID="DSUsuarios" ProviderName="System.Data.SqlServerCe.4.0" SelectCommand="Select [Id],[nombre],[apellido1],[apellido2],[cuenta] from Usuarios" ConnectionString="Data Source=|DataDirectory|\DB.sdf"></asp:sqldatasource>
    <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="DSUsuarios" GridLines="None"  
                AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"  
                PageSize="7">
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="apellido1" HeaderText="Primer Apellido" />
            <asp:BoundField DataField="apellido2" HeaderText="Segundo Apellido" />
            <asp:BoundField DataField="cuenta" HeaderText="Cuenta" />
        </Columns> 
    </asp:GridView>
    </form>
</asp:Content>
