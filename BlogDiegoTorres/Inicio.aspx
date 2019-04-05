<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="BlogDiegoTorres.Inicio" %>

<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>BlogSpot</title>
       
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />

        <link href="css/estilos.css" rel="stylesheet" />        

    </head>
    <body>
           
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">            
            <div class="navbar-header page-scroll">            
                <a class="navbar-brand" href="Inicio.aspx">Diego Torres</a>
            </div>
            
            <div class="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="Inicio.aspx">Home</a>
                    </li>
                    <li>
                        <a href="Pages/AboutMe.aspx">About Me</a>
                    </li>                 
                    <li>
                        <a href="Pages/Contact.aspx">Contact</a>
                    </li>
                </ul>
            </div>            
        </div>        
    </nav>


       <header class="intro-header" style="background-image: url('img/AzureHome2.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>My Blog</h1>
                        <hr class="small">
                        <span class="subheading">A simple documentation Azure/Docker</span>
                    </div>
                </div>
            </div>
        </div>
    </header>


        <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">








                <div class="post-preview">
                    <a href="Pages/PostAzure.aspx">
                        <h2 class="post-title">
                            What is Azure microsoft?
                        </h2>
                        <h3 class="post-subtitle">
                            Functions, components and more..
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="Pages/AboutMe.aspx">Diego Torres</a> on April 01, 2019</p>
                </div>
                <hr>


                  <div class="post-preview">
                    <a href="Pages/PostAzureFunction.aspx">
                        <h2 class="post-title">
                            Development of Azure Functions with Visual Studio
                        </h2>
                        <h3 class="post-subtitle">
                            Azure Functions tools for Visual Studio 2017
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="Pages/AboutMe.aspx">Diego Torres</a> on April 01, 2019</p>
                </div>
                <hr>


                  <div class="post-preview">
                    <a href="Pages/PostAzureFunction2.aspx">
                        <h2 class="post-title">
                            Creating your first feature in Azure Portal.
                        </h2>
                        <h3 class="post-subtitle">
                            
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="Pages/AboutMe.aspx">Diego Torres</a> on April 01, 2019</p>
                </div>
                <hr>


                <div class="post-preview">
                    <a href="Pages/PostDocker.aspx">
                        <h2 class="post-title">
                            Docker a new technology!
                        </h2>
                        <h3 class="post-subtitle">
                            What is docker? and for what do you use it
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="Pages/AboutMe.aspx">Diego Torres</a> on April 02, 2019</p>
                </div>
                <hr>


                <div class="post-preview">
                    <a href="Pages/PostDockerInstallation.aspx">
                        <h2 class="post-title">
                            Docker installation
                        </h2>
                        <h3 class="post-subtitle">
                            Installation , step by step ENJOY!
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="Pages/AboutMe.aspx">Diego Torres</a> on April 03, 2019</p>
                </div>                            
                <hr>                
<%--                <ul class="pager">
                    <li class="next">
                        <a href="#">Older Posts &rarr;</a>
                    </li>
                </ul>--%>
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

    <script src="bootstrap/js/bootstrap.js"></script>

    </body>
</html>
