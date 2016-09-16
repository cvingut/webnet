<%@ Page Title="" Language="C#" MasterPageFile="~/Aplicacion/Chipset.Master" AutoEventWireup="true" CodeBehind="ChipsetUpdateDevice.aspx.cs" Inherits="WebAppCRUD.Aplicacion.Pages.ChipsetUpdateDevice" %>

<asp:Content ID="ContentTitle" ContentPlaceHolderID="title" runat="server">
    Update Device Chipset
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .ctnDevice {
            margin: 10px;
            padding: 10px;
            height: 600px;
        }

        h2 {
            text-align: center;
        }

        .propDevice {
            height: 467px;
            min-height: 100%;
        }

        .chipsetDevice {
            height: 467px;
            min-height: 100%;
        }

        #custom-search-input .search-query {
            margin-bottom: 0;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-top-left-radius: 3px;
        }


        #custom-search-input button {
            padding-top: 4px;
            padding-bottom: 4px;
            padding-right: 10px;
            margin-right: 1px;
            border: 1px solid ghostwhite;
            background: 0;
            background-color: white;
            color: rgba(0,0,0,.5);
            z-index: 3;
        }

        .input-group-btn {
            left: -39px;
        }

        /*#imaginary_container {
            /*margin-top: 20%;*/ /* Don't copy this */
        }*/

        .stylish-input-group .input-group-addon {
            background: white !important;
        }

        .stylish-input-group .form-control {
            border-right: 0;
            box-shadow: 0 0 0;
            border-color: #ccc;
        }

        .stylish-input-group button {
            border: 0;
            background: transparent;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="panel  panel-default ctnDevice">
                    <div class="container-fluid">
                        <div class="row">
                            <div style="background-color: gainsboro; height: auto; padding: 5px 10px 5px 10px">
                                 <%--<div id="imaginary_container">--%>
                                    <div class="input-group stylish-input-group">
                                        <input type="text" class="form-control" placeholder="Search">
                                        <span class="input-group-addon">
                                            <button type="submit">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                               <%-- </div>--%>
                                <%--<div id="custom-search-input" class="input-group col-md-12">
                                    <input type="text" class="search-query form-control" placeholder="Search" aria-label="Device" />
                                    <span class="input-group-btn">
                                        <button class="btn btn-danger" type="button">
                                            <span class=" glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>
                                </div>--%>

                               
                            </div>
                        </div>
                        <div class="row">
                            <h2>
                                <asp:Label ID="lbTerminalName" runat="server" Text="Terminal Name" ToolTip="Terminal Name"></asp:Label></h2>

                        </div>
                        <div class="container-fluid">
                            <div class="row">

                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 propDevice">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 chipsetDevice" style="border-left: 1px solid gainsboro">
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="panel  panel-default ctnDevice">
                </div>
            </div>
        </div>

    </div>



</asp:Content>
