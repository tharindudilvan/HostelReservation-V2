<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="booking.aspx.vb" Inherits="nie.booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking</title>


  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>




       
    
    <style type="text/css">
        .auto-style1 {
            margin-left: 177px;
        }

        .bottom_room{
            margin-left: 70px;
        }
         .button_submit{
            margin-left: 20px;
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

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2 text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
            
&nbsp;&nbsp;&nbsp;<img src="img/nielogo.jpg" class="img-rounded" alt="Cinque Terre" width="160" height="165"/> </div>
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

    </div>

    <form id="form1" runat="server">
      



       <%-- <div>
            <img src="img/hostel1.jpg" class="auto-style4" />
        </div>--%>
<%--starting carousel --%>
   <div class="container">
  <div class="col-sm-6">
  <div id="myCarousel" class="carousel slide " data-ride="carousel" style="margin-top:20px;">
   
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/bed2.png" alt="Los Angeles" style="width:100%;"/>
        <div class="carousel-caption">
          <h3>Los Angeles</h3>
          <p>LA is always so much fun!</p>
        </div>
      </div>
        
      <div class="item">
        <img src="img/bed2.png" alt="Chicago" style="width:100%;"/>
        <div class="carousel-caption">
          <h3>Chicago</h3>
          <p>Thank you, Chicago!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="img/bed2.png" alt="New York" style="width:100%;"/>
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>We love the Big Apple!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
     
          
     
  </div>
      <div style="margin-top:55px;">
          <h3>Facilities Of NIE Hostel -</h3>
          <br />
          <ul style="list-style-type:disc;">
             <li class="auto-style1" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: large;">Table/Chairs</li>
             <li class="auto-style1" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: large;">Bed Mosquito Net</li>
             <li class="auto-style1" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: large;">Caboard</li>
              <li class="auto-style1" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: large;">Attach Bathroom</li>
          </ul>
          <br />
          <table class="table table-hover">
              <tr>
                  <td>
                     <asp:Label CssClass="bottom_room" ID="Label1" runat="server" Text="Available Rooms" Font-Bold="True"></asp:Label> 

                  </td>

                  <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox></td>
                 
              </tr>
              <tr>
                  <td>
                      <asp:Label CssClass="bottom_room" ID="Label2" runat="server" Text="Total Rooms" Font-Bold="True"></asp:Label>  

                  </td>

                  <td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></td>
                 
              </tr>
          </table>
      </div>
      
   </div>


  <%--billing info--%>
       <div class="container col-sm-1 ">
           </div>
       
  <div class="container col-sm-4 ">
  <h2 class="text-center" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: xx-large">HOSTEL BILL INFO</h2> 

      
  <table class="table table-hover">
    <thead>
      <tr style="height:30px";>
        <th colspan="2"></th>
       </tr>
    </thead>
    <tbody>
      <tr style="height:50px";>
        <td> Number Of Persons</td>
        <td>
           <asp:TextBox ID="bill_info_num_persons" runat="server" ReadOnly="True"></asp:TextBox> </td>
      
      </tr>
      <tr style="height:62px";>
        <td>Price Per Room</td>
        <td>
            <asp:TextBox ID="bill_info_price_per_room" runat="server" ReadOnly="True"></asp:TextBox> </td>
       
      </tr>
        <tr style="height:62px";>
        <td>Number Of Days</td>
        <td>
            <asp:TextBox ID="bill_info_number_of_days" runat="server" ReadOnly="True"></asp:TextBox></td>
       
      </tr>
        <tr style="height:60px";>
        <td>Additional Charges</td>
        <td>
            <asp:TextBox ID="bill_info_additional_charges" runat="server" ReadOnly="True"></asp:TextBox></td>
       
      </tr>
        <tr style="height:60px";>
        <td><b>Total</b></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
       
      </tr>
    
    </tbody>
  </table>
      <div style="margin-top:55px; margin-left:100px;">
          <asp:CheckBox ID="CheckBox1" runat="server" Text="Terms and Conditions" />
</div>
       <div style="margin-top:10px; margin-left:90px;">
           <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="Cancel" />
        
          <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn btn-primary button_submit"/>
      </div>
</div>
 <%--billing info--%>



       
 
</div>
        <br />
        <br />
        <br />
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
      <p>1640 Riverside Drive, Hill Valley, California
      <br/>info@mywebsite.com
      <br/>+ 01 234 567 88
      <br/>+ 01 234 567 89</p>
    </div>
  </div>
  <div class="footer-copyright text-center">© 2020 - Department of IT, National Institute of Education</div>
   </div>
</footer>
 <%-- PAGE_FOOTER  --%>    
    </form>
</body>
</html>
