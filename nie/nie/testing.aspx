<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="testing.aspx.vb" Inherits="nie.testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Call JavaScript From CodeBehind</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">


        function Redisplay() {
            swal({
                title: "Registration Successful",
                text: "Check Your Email",
                icon: "success",
                button: "Ok",
            }).then(function () {
                window.location = "homepage.aspx";
            });
           
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
