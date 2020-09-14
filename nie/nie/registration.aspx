<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="registration.aspx.vb" Inherits="nie.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <style type="text/css">
        body {
          font-family: Arial, Helvetica, sans-serif;
        }

        /*style for all input field*/
            .textbox_style{
              width: 100%;
              padding: 12px 20px;
              margin: 8px 0;
              display: block;
              border: 1px solid #ccc;
              border-radius: 4px;
            }
        /*end of all input field styles*/

        /*style for two col-sm-4 divs*/
            #reg_form_div1{
              border-radius: 5px;
              background-color: #f2f2f2;
              padding: 20px;
            }
            #reg_form_div2{
              border-radius: 5px;
              background-color: #f2f2f2;
              padding: 20px;
            }
        /*end of the two col-sm-4 div'styles*/

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
                        <li><a href="#">About Us</a></li>
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
        
        <!-- begin of the registration form content -->
        <div class="row">
            <div class="container-fluid">
                <div class="col-sm-4"></div>
                <div class="col-sm-4" style="margin-right:20px;">
                    <div class="text-center">
                        <h2>Registration for Hostals</h2>
                    </div>
                    <div id="reg_form_div1">
                        <asp:TextBox ID="full_name"     CssClass="textbox_style" runat="server" placeholder="Your Full Name"></asp:TextBox>
                        <asp:TextBox ID="nic_number"    CssClass="textbox_style" runat="server" placeholder="Your NIC Number (Old NIC with V or New NIC)"></asp:TextBox>
                        <asp:TextBox ID="email"         CssClass="textbox_style" runat="server" placeholder="Your E-mail" TextMode="Email"></asp:TextBox>
                        <asp:TextBox ID="mobile_number" CssClass="textbox_style" runat="server" placeholder="Your Mobile Number" TextMode="Phone"></asp:TextBox>
                        <asp:TextBox ID="address"       CssClass="textbox_style" runat="server" placeholder="Your Address"></asp:TextBox>
                        <asp:TextBox ID="occupation"    CssClass="textbox_style" runat="server" placeholder="Your Occupation"></asp:TextBox>
                    
                        <div class="textbox_style">
                            <asp:Label ID="fileUpload_lable" runat="server" Text="Please Upload Your Letter here"></asp:Label>
                            <asp:FileUpload ID="fileUpload_occupation" runat="server" Style="padding-top:5px;"/>
                        </div>

                        <div class="checkbox textbox_style text-center">
                            <asp:CheckBox ID="checkbox1" runat="server" Style="padding-left:20px; padding-right:20px;"/>
                            <asp:Label ID="Label1" runat="server" Text=" I have read, understand, and agree to the above rules and regulations"></asp:Label>
                        </div>

                        <div class="textbox_style">
                            <asp:Label ID="Recapcha_lable" runat="server" Text="7 8 7 8"></asp:Label>
                            <br />
                            <asp:TextBox ID="Recapcha_text_box" runat="server" placeholder="Enter Displayed Numbers"></asp:TextBox>
                        </div>

                        <div>
                            <asp:Button ID="submit_btn" CssClass="btn btn-primary btn-sm btn-block" Style="padding: 12px 20px; margin: 8px 0;" runat="server" Text="Submit the Request"/>
                        </div>

                        <div>
                            <asp:Button ID="clear_all_btn" CssClass="btn btn-danger btn-sm btn-block" Style="padding: 12px 20px; margin: 8px 0; " runat="server" Text="Clear All"/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
        <!-- end of the registration form content-->

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