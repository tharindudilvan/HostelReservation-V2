<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dashboard.aspx.vb" Inherits="nie.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>


  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <style>
        .booked{
            margin-left: 35px;
            margin-bottom: 10px;
        }
        .bookedText{
            /*margin-left: 50px;*/
            margin-bottom: 10px;
        }
    </style>

    <script>
        window.onload = function () {

            var chart = new CanvasJS.Chart("chartContainer", {
                animationEnabled: true,
                
                axisY: {
                    title: "No.of Person",
                    titleFontColor: "#4F81BC",
                    lineColor: "#4F81BC",
                    labelFontColor: "#4F81BC",
                    tickColor: "#4F81BC"
                },
                axisY2: {
                    
                    titleFontColor: "#C0504E",
                    lineColor: "#C0504E",
                    labelFontColor: "#C0504E",
                    tickColor: "#C0504E"
                },
                toolTip: {
                    shared: true
                },
                legend: {
                    cursor: "pointer",
                    itemclick: toggleDataSeries
                },
                data: [{
                    type: "column",
                    name: "Male",
                    legendText: "Male",
                    showInLegend: true,
                    dataPoints: [
                        { label: "Total Count", y: 50.21 },
                        { label: "Daily Count", y: 20.25 },
                        
                    ]
                },
                {
                    type: "column",
                    name: "Female",
                    legendText: "Female",
                    axisYType: "secondary",
                    showInLegend: true,
                    dataPoints: [
                        { label: "Total Count", y: 10.46 },
                        { label: "Daily Count", y: 2.27 },
                      
                    ]
                }]
            });
            chart.render();

            function toggleDataSeries(e) {
                if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                    e.dataSeries.visible = false;
                }
                else {
                    e.dataSeries.visible = true;
                }
                chart.render();
            }

        }

    </script>


</head>
<body>
    <form id="form1" runat="server">
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

                   
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
                    
                   
                   
                </ul>

            </div>

        </nav>

        <!-- Starting dashboad heading -->

        <div class="navbar" style="background-color:silver;height:80px;">
            <div class="col-lg-4">

            </div>
            <div class="col-lg-4">
                <h1 class="text-center"><strong>Dashboard</strong></h1>
            </div>

            <div class="col-lg-4 pt-4" style="margin-top: 22px;">
           
                <button class="btn btn-default   navbar-right" style="margin-right:20px;margin-top:0px;">Report</button>
                <button class="btn btn-default   navbar-right" style="margin-right:20px;margin-top:0px;">Booking</button>
                <button class="btn btn-default   navbar-right" style="margin-right:20px;margin-top:0px;">Approve</button>
 
           </div>


            
            
            
            
            
            
        </div>
        <!-- Ending dashboard heading -->


        <!-- starting dashboard -->
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-2" style="padding:0px;">
                <br />

                <div class="text-center">
                 <asp:Label ID="Label1" runat="server" Text="Total Count" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                <br />
                <div style="border:2px solid black;border-radius: 15px;">
                    <div style="padding-bottom: 20px;padding-top: 20px;">
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                    </svg>
                    <asp:Label ID="Label2" runat="server" Text="Booked Room" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />

                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large" Height="45px" Width="84px" CssClass="bookedText" ReadOnly="True"></asp:TextBox>
                </div>
                    </div>

                <br /><br />


                
                 <div style="border:2px solid black;border-radius: 15px;">
                     <div style="padding-bottom: 20px;padding-top: 20px;">
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-calendar2-event" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5zm-2 3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-1zM11.5 7a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z"/>

                </svg>
                <asp:Label ID="Label3" runat="server" Text="Available Room" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />

                <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" Height="45px" Width="84px" CssClass="bookedText" ReadOnly="True"></asp:TextBox>
               </div>
                     </div>

               <br /><br />


                 <div style="border:2px solid black;border-radius: 15px;">
                     <div style="padding-bottom: 20px;padding-top: 20px;">
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-exclamation-triangle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 5zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>

                </svg>
                <asp:Label ID="Label4" runat="server" Text="Damaged Room" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />

                <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large" Height="45px" Width="84px" CssClass="bookedText" ReadOnly="True"></asp:TextBox>
            </div>
                     </div>
</div>


            </div>
                
                
                
            
            <div class="col-lg-1"></div>

            <div class="col-lg-4">
                <br />
                <br />
                <br /><br /><br /><br /><br /><br />
                <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-2" style="padding:0px;">
                <br />
                
                <div class="text-center">
                 <asp:Label ID="Label5" runat="server" Text="Daily Count" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br />
                <br />
                
                <div style="border:2px solid black;border-radius: 15px;">
                    <div style="padding-bottom: 20px;padding-top: 20px;">
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                    </svg>
                    <asp:Label ID="Label6" runat="server" Text="Booked Room" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />

                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="X-Large" Height="45px" Width="84px" CssClass="bookedText" ReadOnly="True"></asp:TextBox>
                </div>
                    </div>
                    <br /><br />


                
                 <div style="border:2px solid black;border-radius: 15px;">
                     <div style="padding-bottom: 20px;padding-top: 20px;">
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-calendar2-event" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5zm-2 3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-1zM11.5 7a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z"/>

                </svg>
                <asp:Label ID="Label7" runat="server" Text="Available Room" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />

                <asp:TextBox ID="TextBox5" runat="server" Font-Size="X-Large" Height="45px" Width="84px" CssClass="bookedText" ReadOnly="True"></asp:TextBox>
               </div>
                     </div>
                      <br /><br />


                 <div style="border:2px solid black;border-radius: 15px;">
                     <div style="padding-bottom: 20px;padding-top: 20px;">
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-exclamation-triangle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 5zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>

                </svg>
                <asp:Label ID="Label8" runat="server" Text="Damaged Room" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />

                <asp:TextBox ID="TextBox6" runat="server" Font-Size="X-Large" Height="45px" Width="84px" CssClass="bookedText" ReadOnly="True"></asp:TextBox>
            </div>
                     </div>
            </div>
                
                </div>
            <div class="col-lg-1"></div>
        </div>
           
        























            
               
            
        
   

        <!-- Ending dashboard -->
        
    </div>
        <!-- end of the top bar -->
       

    </form>
</body>
</html>

