<%@ Page Title="" Language="C#" MasterPageFile="~/Aplicacion/Chipset.Master" AutoEventWireup="true" CodeBehind="ChipsetUpdateDevice.aspx.cs" Inherits="WebAppCRUD.Aplicacion.Pages.ChipsetUpdateDevice" %>

<asp:Content ID="ContentTitle" ContentPlaceHolderID="title" runat="server">
    Update Device Chipset
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*
            ---------------- SEARCH COMPONENT ----------------------
        */
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
        /*
            ----------------  END SEARCH COMPONENT ----------------------
        */


        /*
            ------------------- FRAMEWORK COMPONENT ---------------------
        */
        .ctnDevice {
            margin: 10px;
            padding: 10px;
            height: 600px;
        }

        .ctnChipset {
            margin: 10px;
            padding: 10px;
            height: 532px;
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
            border-left: 1px solid gainsboro;
            padding-right: 0px;
        }

        /*
            ------------------- END FRAMEWORK COMPONENT ---------------------
        */



        /*
            ---------------------------- GRID PANEL ---------------------------
        */

        .gp_column {
            position: relative;
            height: 100%;
            width: 180px;
            border: 1px solid lightgrey;
            padding: 5px;
            margin: 5px;
            background-color: rgba(245, 245, 245, 0.60);
        }

        .active-chipset {
            position: inherit;
            width: 0;
            height: 0;
            left: -6px;
            top: -6px;
            border-right: 15px solid transparent;
            border-top: 15px solid #2e9b00;
            border-left: 15px solid #2e9b00;
            border-bottom: 15px solid transparent;
        }

        .inactive-chipset {
            position: inherit;
            /*display:none;*/
            width: 0;
            height: 0;
            left: -6px;
            top: -6px;
            border-right: 15px solid transparent;
            border-top: 15px solid #d7523f;
            border-left: 15px solid #d7523f;
            border-bottom: 15px solid transparent;
            /*Para que no se muestre*/
            border-top: 15px solid transparent;
            border-left: 15px solid transparent;
        }

            .inactive-chipset:hover {
                border-top: 15px solid #d7523f;
                border-left: 15px solid #d7523f;
            }

        .chipset_group_spec {
            padding: 5px;
        }

        .content_specs_group {
            border-top: 2px solid #cccedb;
            padding: 5px;
        }

        .spec_chipset {
            width: 100%;
            border-bottom: 1px dotted #cccedb;
            display: inline-block;
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
        }

            .spec_chipset:hover {
                background-color: rgba(195, 195, 195, 0.93);
                cursor: pointer;
            }

        .spec_name {
            font-weight: bold;
        }

        .group_name {
            font-style: italic;
            color: burlywood;
        }

        .content_data {
            position: relative;
            height: 250px;
            overflow-y: auto;
        }

        .gp_ch_controls {
            display: inline-flex;
            position: relative;
            width: 100%;
        }

        .toolbar {
            height: 48px;
            margin: 10px;
            padding: 5px;
        }

        .separator {
            float: right;
            border: none;
            border-left: 1px solid gainsboro;
            margin: 5px;
            width: 0px;
            padding: 0px;
            float: right;
        }

        .toolbar_btn_ch {
            float: right;
            border: none;
            background: none;
            margin: 5px;
        }

        .ctn_Img_Chipset {
            margin: 20px;
            background-color: transparent;
        }

        .Spec_Selected {
            background-color: rgba(195, 195, 195, 0.93);
        }


        /*
            ---------------------------- END GRID PANEL ---------------------------
        */
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="main" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="panel  panel-default ctnDevice">
                    <div class="container-fluid">
                        <div class="row">
                            <div style="background-color: gainsboro; height: auto; padding: 5px 10px 5px 10px">
                                <div class="input-group stylish-input-group">
                                    <input type="text" class="form-control" placeholder="Search">
                                    <span class="input-group-addon">
                                        <button type="submit">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <h2>
                                <asp:Label ID="lbTerminalName" runat="server" Text="Terminal Name" ToolTip="Terminal Name"></asp:Label>
                            </h2>

                        </div>
                        <div class="container-fluid">
                            <div class="row">

                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 propDevice">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 chipsetDevice">
                                    <div class="chipset_data">

                                        <a href="#" class="thumbnail" style="margin: 20px">
                                            <img src="http://es.seaicons.com/wp-content/uploads/2015/11/Apps-Audio-Card-icon.png" alt="Chipset">
                                        </a>
                                        <div class="content_data">
                                            <div class="content_group_data">

                                                <div class="chipset_group_spec">
                                                    <div class="group_name">
                                                        <asp:Label ID="name_group_n" runat="server" Text="Name Group"></asp:Label>
                                                    </div>
                                                    <div class="content_specs_group">
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="chipset_spec_name_idspec" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="chipset_spec_value_idspec" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label1" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label2" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label3" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label4" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="chipset_group_spec">
                                                    <div class="group_name">
                                                        <asp:Label ID="Label5" runat="server" Text="Name Group"></asp:Label>
                                                    </div>
                                                    <div class="content_specs_group">
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label6" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label7" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label8" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label9" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label10" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label11" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="chipset_group_spec">
                                                    <div class="group_name">
                                                        <asp:Label ID="Label12" runat="server" Text="Name Group"></asp:Label>
                                                    </div>
                                                    <div class="content_specs_group">
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label13" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label14" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label15" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label16" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label17" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label18" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="chipset_group_spec">
                                                    <div class="group_name">
                                                        <asp:Label ID="Label19" runat="server" Text="Name Group"></asp:Label>
                                                    </div>
                                                    <div class="content_specs_group">
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label20" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label21" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label22" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label23" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label24" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label25" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="chipset_group_spec">
                                                    <div class="group_name">
                                                        <asp:Label ID="Label26" runat="server" Text="Name Group"></asp:Label>
                                                    </div>
                                                    <div class="content_specs_group">
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label27" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label28" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label29" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label30" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="spec_chipset">
                                                            <div class="spec_name">
                                                                <asp:Label ID="Label31" runat="server" Text="Name Spec" CssClass="chipset_spec_name"></asp:Label>
                                                            </div>
                                                            <div class="spec_value">
                                                                <asp:Label ID="Label32" runat="server" Text="Spec Value" CssClass="chipset_spec_value"></asp:Label>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="panel panel-default toolbar">
                       <%-- <form runat="server" method="post" style="height: 40px">     --%>                      
                            <div class="input-group stylish-input-group" style="width: 100%">
                                <input type="text" class="form-control" placeholder="Search" title="Chipset">
                                <span class="input-group-addon">
                                    <button type="submit">
                                        <span class="glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                                <asp:Button runat="server" ID="btn_Page_Next" Text="Next >" OnClick="btn_Page_Next_Click" />
                                <asp:Button runat="server" ID="btn_Page_Back" Text="Back >" OnClick="btn_Page_Back_Click" />
                                <asp:Button runat="server" ID="btn_Page_GoTo" Text="2 >" OnClick="btn_Page_GoTo_Click" />
                                <asp:Button ID="btnAcept" Text="Accept" runat="server" CssClass="toolbar_btn_ch" />
                                <asp:Button runat="server" CssClass="separator" Enabled="false" />
                                <asp:Button ID="btnCancel" Text="Cancel" runat="server" CssClass="toolbar_btn_ch" />
                            </div>

                      <%--  </form>--%>
                    </div>
                </div>
                <div class="row">
                    <%--<form runat="server" method="post">--%>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="upGridPanel" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div id="gridChipset" runat="server" class="panel  panel-default ctnChipset" style="overflow-x: auto;">
                                    <div id="gridChipset_Content" class="row_content" runat="server" style="display: inline-flex; height: 98%; width: auto;">
                                    </div>
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="btn_Page_Next" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                    <%--</form>--%>
                </div>
            </div>
        </div>

    </div>



</asp:Content>
