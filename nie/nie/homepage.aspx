<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="homepage.aspx.vb" Inherits="nie.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hostel Reservation</title>


  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

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
    <script type="text/javascript">
        function addResrve() {

           
            var fromDate = Math.round((new Date(document.getElementById("checkInID").value).getTime() / 1000));
            var toDate = Math.round((new Date(document.getElementById("checkOutID").value).getTime() / 1000));

            //var gen = document.getElementById("gender").value;
            if (fromDate <= toDate) {
                var genValue;
                if (document.getElementById("MaleRadio").checked) {
                    genValue = document.getElementById("MaleRadio").value;

                }
                else if (document.getElementById("FemaleRadio").checked) {
                    genValue = document.getElementById("FemaleRadio").value;

                }
                document.getElementById("availableRoomsId").style.display = "block"
                PageMethods.AddReservation(fromDate, toDate, genValue, OnSuccess);

                function OnSuccess(response, userContext, methodName) {
                    document.getElementById("TextBox1").value = response[0];
                    document.getElementById("TextBox2").value = response[1];
                    document.getElementById("TextBox3").value = response[2];
                }
            }
            else {
                alert("Error");
                document.getElementById("availableRoomsId").style.display = "none";
            }
        }

        function passValueToBooking1() {
            var startDate = Date.parse(document.getElementById("checkInID").value);
            var endDate = Date.parse(document.getElementById("checkOutID").value);
            var diff = Math.floor((endDate - startDate) / (1000 * 60 * 60 * 24));
            diff = diff + 1;
            //console.log(diff);

            var noOfRooms = document.getElementById("TextBox1").value;
            var noOfPerson = 1;
            var Price = 300;
            var additionalCharges = 0;
            var totalPrice = Price * diff;

            window.open('booking.aspx?noOfRooms=' + noOfRooms + '&noOfPerson=' + noOfPerson + '&Price=' + Price + '&diff=' + diff + '&additionalCharges=' + additionalCharges + '&totalPrice=' + totalPrice, '_self', 'location=no,resizable=no', true);

        }
        function passValueToBooking2() {
            var startDate = Date.parse(document.getElementById("checkInID").value);
            var endDate = Date.parse(document.getElementById("checkOutID").value);
            var diff = Math.floor((endDate - startDate) / (1000 * 60 * 60 * 24));
            diff = diff + 1;
            //console.log(diff);

            var noOfRooms = document.getElementById("TextBox2").value;
            var noOfPerson = 1;
            var Price = 300;
            var additionalCharges = 0;
            var totalPrice = Price * diff;

            window.open('booking.aspx?noOfRooms=' + noOfRooms + '&noOfPerson=' + noOfPerson + '&Price=' + Price + '&diff=' + diff + '&additionalCharges=' + additionalCharges + '&totalPrice=' + totalPrice, '_self', 'location=no,resizable=no', true);

        }
        function passValueToBooking3() {
            var startDate = Date.parse(document.getElementById("checkInID").value);
            var endDate = Date.parse(document.getElementById("checkOutID").value);
            var diff = Math.floor((endDate - startDate) / (1000 * 60 * 60 * 24));
            diff = diff + 1;
            //console.log(diff);

            var noOfRooms = document.getElementById("TextBox3").value;
            var noOfPerson = 1;
            var Price = 150;
            var additionalCharges = 0;
            var totalPrice = Price * diff;

            window.open('booking.aspx?noOfRooms=' + noOfRooms + '&noOfPerson=' + noOfPerson + '&Price=' + Price + '&diff=' + diff + '&additionalCharges=' + additionalCharges + '&totalPrice=' + totalPrice, '_self', 'location=no,resizable=no', true);

        }


</script>


   
</head>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"
            ></asp:ScriptManager>
        

        <!-- begin top Banner -->
 
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
        <!-- end of the top bar -->
        
        


       <%-- <div>
            <img src="img/hostel1.jpg" class="auto-style4" />
        </div>--%>

<div >

<div class="container">
<table>
    <tr>
        <td >
            <div class="container" style="padding:0px;">
                <div id="slider1" class="carousel slide" data-ride="carousel" >
    
                    <!-- Indicators -->
    
                    <ol class="carousel-indicators">
                        <li data-target="#slider1" data-slide-to="0" class="active"></li>
                        <li data-target="#slider1" data-slide-to="1"></li>
                        <li data-target="#slider1" data-slide-to="2"></li>

                    </ol>

    <!-- Wrapper for slides -->
                    <div class="carousel-inner" >
                        <div class="item active">
                            <img src="img/slider1.jpg" alt="Los Angeles" style="width:1092px; height:650px;"/>

                        </div>
                        <div class="item">
                            <img src="img/slider2.jpg" alt="Chicago" style="width:1092px; height:650px;"/>
                            
                        </div>
                        <div class="item">
                            <img src="img/slider3.jpg" alt="New york" style="width:1092px; height:650px;"/>

       
                                             </div>
                    </div>

    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#slider1" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>

                    </a>
                    <a class="right carousel-control" href="#slider1" data-slide="next" style="margin-right:80px;">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>

                    </a>

                </div>

            &nbsp;&nbsp;&nbsp;&nbsp;

            </div>

        </td>

    </tr>

</table>
</div>




<!-- Begin of Check In and Check out search Bar -->

<div class="container">
    <br />
  
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#home" >Individual</a></li>
    <li><a data-toggle="pill" href="#menu1" >Organization</a></li>
    
  </ul>
  
  <div class="tab-content" style="width:1092px;height:150px;background-color:#dededc" >
    <div id="home" class="tab-pane fade in active">
    <br/>
        
		<label for="check-in">Check In </label>
        <input type="date" name="check-in" id="checkInID"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label for="check-in">Check Out </label>    
    	<input type="date" name="check-out" id="checkOutID"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <label for="male">Male</label>
        <input type="radio" id="MaleRadio" name="genderName" value="1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <label for="female">Female</label>
        <input type="radio" id="FemaleRadio" name="genderName" value="2" />
       <!-- <input type="radio" name="female"/> -->
        <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <input type="button" id="submitBtn" onclick="addResrve()" value="Search" />
                </div>
    
    <div id="menu1" class="tab-pane fade">
    <br/>
      <label for="check-in">Check In </label>    
    	<input type="date" name="check-in" id="checkIn2ID"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label for="check-in">Check Out </label>    
    	<input type="date" name="check-out" id="checkOut2ID"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
   <label for="malecount">Male</label>   
    <input type="number" name="dd" step="1"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <label for="malecount">Female</label>   
    <input type="number" name="dd" step="1"/>
    <br/>
  <br/>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
      <asp:Button ID="Button2" runat="server" Text="Search" />
    </div>
    
  </div>
</div>
        <!-- End of Check In and Check out search Bar -->
        <br />
        <!-- begin of available rooms tabs-->
    <div class="container" id ="availableRoomsId" hidden="hidden">
        <div class="tab-content" >
            <div id="Double_Room" class="tab-pane fade in active">
                <div class="col-lg-4" style="padding-left:0px;" >
                    <div  style="background-color:#dededc;width:330px;height:205px;" >
                        
                        <h2 class="text-center">Double Rooms</h2><br />
                        <h4 class="text-center">Available Rooms</h4>

                        
                    
                        <asp:TextBox CssClass="center-block" ID="TextBox1" runat="server" Height="50px" Width="75px" ReadOnly="True" BorderColor="White"></asp:TextBox>
                        
<%--                        <asp:Button ID="Button3" CssClass="btn btn-info center-block" style="margin-top:10px;" runat="server" Text="Book" />--%>
                        <input type="button" value="Book" id="book1" class="btn btn-info center-block" style="margin-top:10px;" onclick="passValueToBooking1()"/>
                    </div>
                   
                   
                </div>
                <div class="col-lg-4" style="padding-left:0px; height: 205px;"  >
                    <div style="background-color:#dededc;width:330px;height:205px;">
                        <h2 class="text-center">Triple Rooms</h2><br />
                        <h4 class="text-center">Available Rooms</h4>
                        <asp:TextBox CssClass="center-block" ID="TextBox2" runat="server" Height="50px" Width="75px" ReadOnly="True" BorderColor="White"></asp:TextBox>
                        <input type="button" value="Book" id="book2" class="btn btn-info center-block" style="margin-top:10px;" onclick="passValueToBooking2()"/>
<%--                        <asp:Button ID="Button4" runat="server" Text="Book" CssClass="btn btn-info center-block" style="margin-top:10px;"  />--%>
                    </div>

                </div>
                <div class="col-lg-4" style="padding-left:0px;"  >
                    <div style="background-color:#dededc;width:335px;height:205px;">
                        <h2 class="text-center">Dometry</h2><br />
                        <h4 class="text-center">Available Rooms</h4>
                        <asp:TextBox CssClass="center-block" ID="TextBox3" runat="server" Height="50px" Width="75px" ReadOnly="True" BorderColor="White"></asp:TextBox>
                        <input type="button" value="Book" id="book3" class="btn btn-info center-block" style="margin-top:10px;" onclick="passValueToBooking3()"/>

<%--                        <asp:Button ID="Button5" runat="server" Text="Book" CssClass="btn btn-info center-block" style="margin-top:10px;" />--%>
                    </div>
                </div>

            </div>
          
  

        </div>

    </div>
    </div>


        <!-- End of available rooms tabs-->
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
