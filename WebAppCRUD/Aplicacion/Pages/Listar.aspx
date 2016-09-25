<%@ Page Title="" Language="C#" MasterPageFile="~/Aplicacion/General.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="WebApp.Aplication.Account.Listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     .tooltiptext::after {
            content: " ";
            position: absolute;
            bottom: 100%;  /* At the top of the tooltip */
            left: 25px;
            margin-left: -5px;
            border-width: 5px;
            border-style: solid;
            border-color: transparent transparent rgba(0, 0, 0, 0.59) transparent;
        }
        /* Tooltip text */
       .tooltiptext {
            visibility: hidden;   
            width:20em;       
            background-color: rgba(0, 0, 0, 0.59);
            color: #fff;
            text-align: center;
            padding: 5px;
            border-radius: 6px;
            /* Position the tooltip text - see examples below! */
            position: absolute;
            margin-top:10px;
            z-index: 1;
            /*top: 150%;*/
            /*left: 30%;*/
            /*bottom: 90%;*/
            margin-left: -20px;
        }
         td:hover .tooltiptext {
            visibility: visible;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript"> 

        function WebDataGridView_MouseDown(webDataGrid, evntArgs) {
            var event = evntArgs.get_browserEvent();

            if (evntArgs.get_item() != null && evntArgs.get_browserEvent().button == 0) {

                GetText(evntArgs.get_item().get_text());
            }
        }

        function GetText(text) {
            document.getElementById("<%= cellValue.ClientID %>").value = text;
        }

    </script>
    <h1>Listar datos de Usuarios</h1>
    <p>La tabla muestra los datos de los usuarios almacenados en una base de datos. Obtenidos
        mediante un sqldatasource y visualizados a travez de un GridView.
    </p>
    <form id="fpUsuarios" runat="server">
    <asp:Label ID="cellValue" runat="server"  Text="Select Cell"></asp:Label>
    <asp:sqldatasource runat="server" ID="DSUsuarios" ProviderName="System.Data.SqlServerCe.4.0" SelectCommand="Select [Id],[nombre],[apellido1],[apellido2],[cuenta] from Usuarios" ConnectionString="Data Source=|DataDirectory|\DB.sdf"></asp:sqldatasource>
    <asp:DataGrid ID="gvUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="DSUsuarios" GridLines="None"  
                AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"  
                PageSize="7" 
        >          
        <Columns>
            <asp:BoundColumn  DataField="nombre" HeaderText="Nombre"/>
            <asp:BoundColumn  DataField="apellido1" HeaderText="Primer Apellido" />
            <asp:BoundColumn  DataField="apellido2" HeaderText="Segundo Apellido" />
            <asp:BoundColumn  DataField="cuenta" HeaderText="Cuenta" />
        </Columns> 
    </asp:DataGrid>
    </form>
</asp:Content>
