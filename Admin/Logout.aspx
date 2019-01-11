<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Admin_Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function keepMeLogout()
        {
            window.history.forward();
            window.setTimeout("location.href='AdminLogin.aspx'", 500); 
        }
    </script>
</head>
<body onload ="keepMeLogout()">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
