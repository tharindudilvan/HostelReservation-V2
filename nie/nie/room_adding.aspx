<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="room_adding.aspx.vb" Inherits="nie.room_adding" %>

 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rooms adding</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
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
    <!-- begin top Banner -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2 text-center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />

                &nbsp;&nbsp;&nbsp;<img src="img/nielogo.jpg" class="img-rounded" alt="Cinque Terre" width="160" height="165" />
            </div>
            <br />
            <br />
            <br />
            <div class="col-lg-8 text-left  " style="padding-left: 0px;">
                <asp:Label ID="NIEName" runat="server" Font-Bold="True" Font-Size="36px" Text="National Institute Of Education"></asp:Label>
                <br />
                <asp:Label ID="Hostel" runat="server" Font-Bold="True" Font-Size="30px" Text="Hostel reservation System"></asp:Label>

            </div>
            <div class="col-lg-2 text-right">
                <img src="img/nationallogo.png" class="img-rounded" alt="Cinque Terre" width="160" height="165" /></div>

        </div>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Welcome</a>

                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="homepage.aspx">Home</a></li>
                    <li><a href="about_us.aspx">About Us</a></li>
                    <li><a href="contact.aspx">Contact</a></li>

                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <li><a href="payment.aspx"><span class="fa fa-money"></span>Payment</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                    <li><a href="login.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>



                </ul>

            </div>

        </nav>

    </div>
    <!-- end of the top bar -->



    <form id="form1" runat="server">
        <%--PAYMENT_BOX--%>
   <div class="container">

       <div class="text-center" style="font-family: impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: xx-large">
           Rooms Adding
       </div>
       <br />
       <br />
       <div class="form-group">

           <div class="row">
               <div class="col-xs-3">
               </div>
               <div class="col-sm-3">

                   <asp:Label ID="Label2" runat="server" Text="Enter Room Id" Font-Bold="True" Font-Overline="False" Font-Size="Medium"></asp:Label>

               </div>

               <div class="col-sm-3">
                   <asp:TextBox ID="room_id" CssClass="form-control" runat="server"></asp:TextBox>
               </div>
           </div>



           <br />

           <div class="row">
               <div class="col-xs-3">
               </div>
               <div class="col-sm-3">
                   <asp:Label ID="Label1" runat="server" Text="Enter Block Number" Font-Bold="True" Font-Size="Medium"></asp:Label>
               </div>

               <div class="col-sm-3">
                   <asp:TextBox ID="block_num" CssClass="form-control" runat="server"></asp:TextBox>
               </div>
           </div>
           <br />
           <div class="row">
               <div class="col-sm-3"></div>
               <div class="col-sm-3">
                   <asp:Label ID="Label5" runat="server" Text="Num Of Persons" Font-Bold="True" Font-Size="Medium"></asp:Label>

               </div>
               <div class="col-sm-3">
                   <asp:TextBox ID="no_of_person" CssClass="form-control" runat="server"></asp:TextBox>
               </div>
           </div>
           <br />
           <div class="row">
               <div class="col-xs-3">
               </div>
               <div class="col-sm-3">
                   <asp:Label ID="Label6" runat="server" Text="Select Gender" Font-Bold="True" Font-Size="Medium"></asp:Label>
               </div>

               <div class="col-sm-3">
                   <asp:RadioButton ID="RadioButton4" runat="server" GroupName="rooms_gender" />&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Male"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="rooms_gender" />&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Female"></asp:Label>
               </div>
           </div>
           <br />
            <div class="row">
               <div class="col-sm-3"></div>
               <div class="col-sm-3">
                   <asp:Label ID="Label3" runat="server" Text="Price Per Person" Font-Bold="True" Font-Size="Medium"></asp:Label>

               </div>
               <div class="col-sm-3">
                   <asp:TextBox ID="price_per_person" CssClass="form-control" runat="server"></asp:TextBox>
               </div>
           </div>
           <br />
           <br />
           <div class="row">
               <div class="col-sm-3"></div>

               <div class="col-sm-6 text-center">
                   <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" Text="Cancle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Adding Room" />
               </div>
           </div>
       </div>
   </div>
        <%--PAYMENT_BOX--%>

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
                        <p>
                            1640 Riverside Drive, Hill Valley, California
      <br />
                            info@mywebsite.com
      <br />
                            + 01 234 567 88
      <br />
                            + 01 234 567 89
                        </p>
                    </div>
                </div>
                <div class="footer-copyright text-center">© 2020 - Department of IT, National Institute of Education</div>
            </div>
        </footer>
        <asp:RadioButton ID="RadioButton6" runat="server" Checked="True" Text="fghh" />
        <%-- PAGE_FOOTER  --%>

    </form>
</body>
</html>