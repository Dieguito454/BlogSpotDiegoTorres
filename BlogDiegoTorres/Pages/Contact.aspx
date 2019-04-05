<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BlogDiegoTorres.Pages.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

      <title>BlogSpot</title>
       
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" />

        <link href="../css/estilos.css" rel="stylesheet" />  
</head>
<body>

      <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">            
            <div class="navbar-header page-scroll">            
                <a class="navbar-brand" href="../Inicio.aspx">Diego Torres</a>
            </div>
            
            <div class="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="../Inicio.aspx">Home</a>
                    </li>
                    <li>
                        <a href="AboutMe.aspx">About Me</a>
                    </li>                  
                    <li>
                        <a href="Contact.aspx">Contact</a>
                    </li>
                </ul>
            </div>            
        </div>        
    </nav>


       <header class="intro-header" style="background-image: url('../img/AzureHome2.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>Contact Me</h1>
                        <hr class="small">     
                        <span class="subheading">Have questions? I have answers</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

     
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <p>Want to get in touch with me? Fill out the form below to send me a message and I will try to get back to you within 24 hours! (only Hotmail)</p>                
                <form name="sentMessage" id="contactForm" runat="server">
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Name</label>
                            <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Your Name" runat="server"></asp:TextBox>                          
                        </div>
                    </div>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Email Address</label>                         
                            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Your Email Address"  runat="server"></asp:TextBox>                            
                        </div>
                    </div>                
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Message</label>
                            <asp:TextBox ID="txtMensaje" CssClass="form-control" TextMode="MultiLine" placeholder="Message" runat="server"></asp:TextBox>                           
                        </div>
                    </div>
                    <br>
                    <div id="success"></div>
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <asp:Button ID="btnSend"  CssClass="btn btn-primary" runat="server" Text="Send" OnClick="btnSend_Click" />                            
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
      
    <hr />
    
    <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    
     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3276.9677298196425!2d-58.4058579847656!3d-34.78158768041375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcd2e2f2440c4d%3A0x259b03009fa08498!2sPichincha+588%2C+Temperley%2C+Buenos+Aires!5e0!3m2!1ses-419!2sar!4v1554406784622!5m2!1ses-419!2sar" width="600" height="450" frameborder="0" style="border:0" allowfullscreen align="center"></iframe>

    
     </div>
            </div>
        </div>

         <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">                  
                    <p class="copyright text-muted">Copyright &copy; Diego Torres 2019</p>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>
