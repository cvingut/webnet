<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebAppCRUD.Aplicacion.Telerik.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <script type="text/javascript">
        function ColumnMouseOver(sender, eventArgs) {
            alert("Mouse is over column-header: " + eventArgs.get_gridColumn().get_element().cellIndex);
            //This get Element return html dom element.
        }
    </script>
    <form id="form1" runat="server">
    <div>
        <telerik:RadGrid RenderMode="Lightweight" ID="RadGrid1" runat="server">
            <ClientSettings>
                <ClientEvents OnColumnMouseOver="ColumnMouseOver" />
            </ClientSettings>
        </telerik:RadGrid>
    </div>
    </form>
</body>
</html>
