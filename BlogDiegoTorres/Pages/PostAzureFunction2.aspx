<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostAzureFunction2.aspx.cs" Inherits="BlogDiegoTorres.Pages.PostAzureFunction2" %>

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
                        <h1>Azure Portal</h1>
                        <hr class="small"> 
                        <span class="subheading"> Creating your first feature in Azure Portal</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

     <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">

                    <p>Azure Functions allows you to run the code in a serverless environment without the need to create a virtual machine or publish a web application. In this topic, you will learn how to use Functions to create a "Hello World" function in Azure Portal.</p>

                    <img class="img-responsive" src="../img/AzureFunctionPortal01.jpg" alt="">

                    <p>If you do not have an Azure subscription, create a free account before you start.</p>

                    <h2 class="section-heading">Login to Azure</h2>

                    <p>Log in to <a href="https://portal.azure.com ">Azure Portal</a> at with your Azure account.</p>

                    <h2 class="section-heading">Creating a function application</h2>

                    <p>You must have a Function App to host the execution of the functions. A Function App allows grouping functions as a logical unit to facilitate the administration, implementation and sharing of resources.</p>

                    <p>Select the New button in the upper left corner of Azure Portal and then Process> Function App.</p>

                    <img class="img-responsive" src="../img/AzureFunctionPortal02.jpg" alt="">

                    <p>Use the Function App configuration specified in the table below the image.</p>

                    <img class="img-responsive" src="../img/AzureFunctionPortal03.jpg" alt="">

                    <p>Select Create to provision and implement the function application.</p>

                    <p>Select the notification icon in the upper right corner of the portal and note the message Implementation correct.</p>

                    <img class="img-responsive" src="../img/AzureFunctionPortal04.jpg" alt="">

                    <p>Select Go to the resource to see the new function application</p>

                    <blockquote>If you have trouble finding feature applications in the portal, try adding Function App to bookmarks in Azure Portal.</blockquote>

                   <p>Next, create a function in the new Function App.</p>

                    <h2 class="section-heading">Create a function triggered by HTTP</h2>

                    <p>Expand the new function application, then select the + button next to Functions, choose In the portal and choose Continue.</p>

                    <img class="img-responsive" src="../img/AzureFunctionPortal05.jpg" alt="">

                    <p>Choose WebHook and API, and then select Create.</p>

                    <img class="img-responsive" src="../img/AzureFunctionPortal06.jpg" alt="">

                    <p>A function is created by means of a language-specific template for a function triggered by HTTP.Now, you can execute the new function by sending an HTTP request.</p>

                    <h2 class="section-heading">Function test</h2>

                    <p>In the new function, click </> Get the URL of the function in the top right, select default (Function key), and then click Copy.</p>

                    <img class="img-responsive" src="../img/AzureFunctionPortal07.jpg" alt="">

                    <p>Paste the URL of the function in the address bar of your browser. Append the value & name = <yourname> of the query string to the end of this URL and press the Enter key on the keyboard to execute the request. You should see the response returned by the function shown in the browser.
The following example shows the response in the browser:</p>

                     <img class="img-responsive" src="../img/AzureFunctionPortal08.jpg" alt="">

                    <p>The URL of the request includes a key that, by default, is required to access the function through HTTP.</p>

                    <p>When the function is executed, tracking information is written to the records. To see the result of the previous execution trace, return to the function in the portal and click on the arrow at the bottom of the screen to expand Records.</p>

                    <img class="img-responsive" src="../img/AzureFunctionPortal09.jpg" alt="">

                    <h2 class="section-heading"> Cleaning of resources</h2>

                    <p>Other quick start guides in this collection are based on the values ​​of this. If you plan to work with the following quick start guides, tutorials, or with any of the services that you have created in this quick start guide, do not delete the resources.</p>

                    <p>In Azure, resources are function applications, functions or storage accounts, among others. They are grouped into resource groups, and you can delete all the contents of a group if the group is deleted.</p>

                    <p>You have created resources to complete these quick start guides. You can be billed for these resources, depending on the status of the account and the prices of the services. If you no longer need the resources, here's how to eliminate them:</p>

                    <p>In Azure Portal, go to the Resource Group page.
To get to that page from the function application page, select the General information tab, and then select the link under Resource group.</p>

                    <img class="img-responsive" src="../img/AzureFunctionPortal10.jpg" alt="">

                    <p>To get to that page from the panel, select Resource Groups and then select the group you used for this quick start guide.</p>

                    <p>On the Resource Group page, review the list of included resources and verify that they are the ones you want to delete.</p>

                    <p>Select Remove resource group and follow the instructions.</p>

                    <p>The removal process will take a couple of minutes. When finished, a notification appears for a few seconds. You can also select the bell icon at the top of the page to see the notification.</p>

                   </div>
            </div>
        </div>
    </article>

      <form runat="server">
              <ul class="pager">         
                  <asp:Button ID="btnPost2" CssClass="btn btn-primary" runat="server" Text="Last Post" OnClick="btnPost2_Click"  />                                            
                    <asp:Button ID="btnPost" CssClass="btn btn-primary" runat="server" Text="Next Post" OnClick="btnPost_Click" />                                                                    
                </ul>
        </form>


    
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
