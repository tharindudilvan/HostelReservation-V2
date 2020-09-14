<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="nie.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <style type="text/css">
        .login-form {
            
            width: 340px;
            margin: 50px auto;
  	        font-size: 15px;
            background: #f7f7f7;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }
        .login-form h2 {
            margin: 0 0 15px;
        }
        .form-control, .btn {
            min-height: 38px;
            border-radius: 4px;
        }
        .btn {        
            font-size: 15px;
            font-weight: bold;
        }
         /*page footer*/
        .page-footer {
            background-color: #222;
            color: #ccc;
            padding: 60px 0 10px;
        }

        .footer-copyright {
            color: #666;
            padding: 10px 0;
        }
        /*page footer*/
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- begin top Banner -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2 text-center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;<img src="img/nielogo.jpg" class="img-rounded" alt="Cinque Terre" width="160" height="165"/>
                </div>
                <br />
                <br />
                <br />
                <div class="col-lg-8 text-left  " style="padding-left:0px;">
                    <asp:Label ID="NIEName" runat="server" Font-Bold="True" Font-Size="36px" Text="National Institute Of Education"></asp:Label>
                    <br />
                    <asp:Label ID="Hostel" runat="server" Font-Bold="True" Font-Size="30px" Text="Hostel reservation System"></asp:Label>

                </div>
                <div class="col-lg-2 text-right"><img src="img/nationallogo.png" class="img-rounded" alt="Cinque Terre" width="160" height="165"/></div>
            </div>
            <!-- begin of the navigationbar -->
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Welcome</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="homepage.aspx">Home</a></li>
                        <li><a href="about_us.aspx">About Us</a></li>
                        <li><a href="contact.aspx">Contact</a></li>
                        <li><a href="gallery.aspx">Gallery</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="payment.aspx"><span class="fa fa-money"></span> Payment</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </nav>
            <!-- End of the navigationbar -->
        </div>
        <!-- end of the top banner -->

        <div class="row" style="margin-top: 90px;"></div>
        
        <div class="container-fluid text-center">
            <div class="row content">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">

                    <!-- beging of the log_in form -->
                    <div class="login-form">
                        <h2 class="text-center">Log in</h2>       
                        <div class="form-group">
                            <asp:TextBox ID="login_email" runat="server"  placeholder="Email" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <input id="login_password" runat="server" type="password" class="form-control" placeholder="Password" />
                        </div>
                        <div class="form-group">
                            <asp:Button ID="log_in_btn" runat="server" CssClass="btn btn-primary btn-block" Text="Log in" />
                        </div>
                        <div class="clearfix">
                            <asp:CheckBox ID="remember_me_checkbox" runat="server" CssClass="float-left form-check-label"/>
                            <asp:Label ID="Label1" runat="server" CssClass="float-left form-check-label" Text="Remember me" Style="padding-right:10px;"></asp:Label>
                            <asp:LinkButton ID="forget_password_btn" runat="server" CssClass="float-right">Forgot Password?</asp:LinkButton>
                        </div>
                    </div>
                    <!-- End of the log_in form -->

                </div>
                <div class="col-sm-4">

                </div>
            </div>
        </div>
           <%-- PAGE_FOOTER  --%>    
        <footer class="page-footer" style="margin-top: 100px;">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-12">
      <h6 class="text-uppercase font-weight-bold">Additional Information</h6>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque interdum quam odio, quis placerat ante luctus eu. Sed aliquet dolor id sapien rutrum, id vulputate quam iaculis.</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque interdum quam odio, quis placerat ante luctus eu. Sed aliquet dolor id sapien rutrum, id vulputate quam iaculis.</p>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12">
      <h6 class="text-uppercase font-weight-bold">Contact</h6>
      <p>National Institute of Education,P.O. Box 21,<br />High Level Road,Maharagama,Sri Lanka.
      <br/>www.nie.lk
      <br/>+94-011-7601601
      <br/>+91-7567065254</p>
    </div>
  </div>
  <div class="footer-copyright text-center">© 2020 - Department of IT, National Institute of Education</div>
   </div>
</footer>
 <%-- PAGE_FOOTER  --%>   
    </form>
</body>
</html>