<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="contact.aspx.vb" Inherits="nie.contact" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>




      <style>
          /* Conatct start */

        .header-title
        {
          text-align: center;
          color:#00bfff;
        }

        #tip 
        {
            display:none;  
        }

        .fadeIn
        {
          animation-duration: 3s;
        }

        .form-control
        {
        	border-radius:0px;
        	border:1px solid #EDEDED;
        }

        .form-control:focus
        {
        	border:1px solid #00bfff;
        }

        .textarea-contact
        {
        	resize:none; 
        }

        .btn-send
        {
        	border-radius: 0px;
        	border:1px solid #00bfff;
        	background:#00bfff;
        	color:#fff; 
        }

        .btn-send:hover
        {
        	border:1px solid #00bfff;
        	background:#fff;
        	color:#00bfff;
        	transition:background 0.5s;   
        }

          .second-portion {
              margin-top: 50px;
          }
        
		@media only screen and (max-width: 768px)
		{
			.contact-form
			{
				margin-top:25px; 
			}

			.btn-send
			{
				width: 100%;
				padding:10px; 
			}

			.second-portion
			{
				margin-top:25px; 
			}
		}
	/* Conatct end */

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
            <div class="container-fluid">1
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
        <div class="container animated fadeIn">

  <div class="row">
    <h1 class="header-title"> Contact </h1>
    <hr/>
    <div class="col-sm-12" id="parent">
    	<div class="col-sm-6">
    	 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.3946806026383!2d79.93021451477246!3d6.843197595054478!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2506e83f74fd7%3A0xb4e1c487c27c6dd7!2sNational%20Institute%20of%20Education!5e0!3m2!1sen!2slk!4v1594194489166!5m2!1sen!2slk"  style="border-style: none; border-color: inherit; border-width: 0; width: 507px; height: 387px;"    aria-hidden="false" tabindex="0"></iframe>
     
    	</div>

        <br />
        <br />
    	<div class="col-sm-6">
    	 
	
		        <div class="form-group">
		          <input type="text" class="form-control" id="name" name="nm" placeholder="Name" required="" autofocus=""/>
		        </div>
		    
		    
		        <div class="form-group form_left">
		          <input type="email" class="form-control" id="email" name="em" placeholder="Email" required=""/>
		        </div>
		    
		      <div class="form-group">
		           <input type="text" class="form-control" id="phone" onkeypress="return event.charCode >= 48 && event.charCode <= 57" maxlength="10" placeholder="Mobile No." required=""/>
		      </div>
		      <div class="form-group">
		      <textarea class="form-control textarea-contact" rows="5" id="comment" name="FB" placeholder="Type Your Message/Feedback here..." required=""></textarea>
		      <br/>
	      	  <button class="btn btn-default btn-send"> <span class="glyphicon glyphicon-send"></span> Send</button>
		      </div>
     		
    	</div>
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
