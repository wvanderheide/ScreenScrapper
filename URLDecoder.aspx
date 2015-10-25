<%@ Page Language="C#" Debug="true" EnableViewState="false" %>

<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Text" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">

    <script language="C#" runat="server">        
        private string _subString = string.Empty;
        private string _csvUrls = string.Empty;
        private const string _startReplace = "||s||";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                lt1.Text = HttpUtility.UrlDecode(txtUserPageURL.Text) + "<hr /><img width='300' src='" + HttpUtility.UrlDecode(txtUserPageURL.Text) + "' />";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
     
        Decode:  https%3A%2F%2Fscontent-sjc2-1.xx.fbcdn.net%2Fhphotos-xpt1%2Ft31.0-8%2F12109951_10153011984941441_2700730558602660098_o.jpg
        <asp:TextBox ID="txtUserPageURL" runat="server" Width="400" ></asp:TextBox>
        <asp:Button ID="btnGo" runat="server" Text="Go!" />
        
        <div id="DivData">
            <asp:Literal ID="lt1" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
