<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostAzureFunction.aspx.cs" Inherits="BlogDiegoTorres.Pages.PostAzureFunction" %>

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
                        <h1>Azure Functions</h1>
                        <hr class="small"> 
                        <span class="subheading"> Requirements, Creation of a project and more..</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">

                    <p>Azure Functions Tools for Visual Studio 2017 is an extension for Visual Studio that allows you to develop, test and implement C # functions in Azure. If this is your first experience with Azure Functions</p>


                    <p>Azure Functions Tools provides the following benefits:</p>

                    <p>Edit, compile and execute functions in the local development team.</p>

                    <p>Publish your Azure Functions project directly in Azure.</p>

                    <p>Use attributes of WebJobs to declare function links directly in the C # code instead of maintaining a separate function.json to link definitions.</p>

                    <p>Develop and implement previously compiled C # functions. Previously compiled functions provide better cold start performance than functions based on C # scripts.</p>

                    <p>Program functions in C # while having all the benefits of Visual Studio development.</p>

                     <blockquote>Do not mix local development with portal development in the same function application. When publishing from a local project in an application of the function, the implementation process overwrites all the functions that you have developed in the portal.</blockquote>

                    <h2 class="section-heading">Previous requirements</h2>

                    <p>The Azure Functions tools are part of the Azure development workload of Visual Studio 2017 version 15.5 and later. Be sure to include the Azure development workload in the installation of version 15.3 of Visual Studio 2017:</p>

                    <img class="img-responsive" src="../img/AzureFunction01.jpg" alt="">
                     
                    <h2 class="section-heading">Checking the tools version</h2>

                    <p>On the Tools menu, select Extensions and updates. Expand Tools> installed and choose Azure Functions and Web Jobs Tools.</p>

                    <img class="img-responsive" src="../img/AzureFunction02.jpg" alt="">

                    <p>Observe the installed version. You can compare this version with the most recent version that appears in the release notes.</p>

                    <p>If your version is older, update the tools in Visual Studio as shown in the next section.</p>

                    <h2 class="section-heading">Update of the tools</h2>

                    <p>In the Extensions and Updates dialog box, expand Updates> Visual Studio Marketplace, choose Azure Functions and Web Jobs Tools and select Update.</p>

                   <img class="img-responsive" src="../img/AzureFunction03.jpg" alt="">

                    <p>After downloading the tools update, close Visual Studio to trigger the tools update using the VSIX installation program.</p>

                    <p>In the installation program, choose OK to start, and then Modify to update the tools.</p>

                    <p>After the update is complete, choose Close and restart Visual Studio.</p>

                    <h2 class="section-heading">Creating an Azure Functions project</h2>

                    <p>The Visual Studio Azure Functions project template creates a project that can be published to a function application in Azure. You can use a function application to group functions as a logical unit for the administration, deployment, and sharing of resources</p>

                    <p>In Visual Studio, on the File menu, select New> Project.</p>

                    <p>In the New Project dialog box, select Installed> Visual C #> Cloud> Azure Functions. Enter the name of the project and select OK. The name of the function application must be valid as a C # namespace, so it must not use underscores, hyphens, or other non-alphanumeric characters.</p>

                    <img class="img-responsive" src="../img/AzureFunction04.jpg" alt="">

                    <p>Use the settings specified in the table that appears after the image.</p>

                    <img class="img-responsive" src="../img/AzureFunction05.jpg" alt="">

                    <p>Select OK to create the function project and the function that is triggered by HTTP.</p>

                    <p>The project template creates a C # project, installs the NuGet Microsoft.NET.Sdk.Functions package and establishes the target platform. Functions 1.x is destined for .NET Framework and Functions 2.x is destined for .NET Standard. The new project contains the following files:</p>

                    <p>host.json: allows you to configure the Functions host. This configuration applies both when running locally and in Azure. For more information, see the reference on host.json.</p>

                    <p>local.settings.json: maintains the configuration used when functions are executed locally. Azure does not use these configurations, but uses Azure Functions Core Tools. Use this file to specify the configuration of the application for the variables that require its functions. Add a new element to the value matrix of each connection that the links of the functions of your project require. For more information, see Local configuration file in the Azure Functions Core Tools article.</p>

                    <h2 class="section-heading">Configuration of the project for local development</h2>

                    <p>The Functions runtime environment internally uses an Azure Storage account. For all types of triggers other than HTTP and webhooks, you must set the Values.AzureWebJobsStorage key in a valid Azure Storage account connection string. The function application can use the Azure Storage Emulator for the AzureWebJobsStorage connection configuration that the project requires. To use the emulator, set the value of AzureWebJobsStorage to UseDevelopmentStorage = true. You must change this configuration to a real storage connection before deployment.</p>

                    <p>To set the storage account connection string:</p>

                    <p>In Visual Studio, open Cloud Explorer, expand Storage Account> Your storage account and select Properties and copy the Primary connection string value.</p>

                    <p>In the project, open the local.settings.json file and set the value of the AzureWebJobsStorage key in the connection string that you copied.</p>

                    <p>Repeat the previous step to add unique keys to the value matrix for any other connection that requires its functions.</p>

                    <h2 class="section-heading">Incorporation of a function to the project</h2>

                    <p>In previously compiled functions, the links that the function uses are defined by the application of attributes in the code. When you use Azure Functions Tools to create the functions from the provided templates, these attributes are automatically applied.</p>

                    <p>In the Solution Explorer, right-click on the project node and select Add> New Element. Select Azure Function, type a name for the class, and then click Add.</p>

                    <p> Choose the trigger, set the link properties and click Create. The following example shows the configuration when you create a triggered Queue Storage function.</p>

                    <img class="img-responsive" src="../img/AzureFunction06.jpg" alt="">

                   <p>This trigger example uses a connection string with a key named QueueStorage. This configuration of the connection string must be defined in the local.settings.json file.</p>

                   <p>Examine the newly added class. You will see a static Run method, which has the FunctionName attribute. This attribute indicates that the method is the entry point of the function.</p>

                    <p>For example, the next C # class represents a triggered Queue Storage function:</p>

                    <img class="img-responsive" src="../img/AzureFunction07.jpg" alt="">

                    <p>A link specific attribute is applied to each link parameter that is supplied to the entry point method. The attribute takes the link information as parameters. In the previous example, the first parameter has a QueueTrigger attribute applied, which indicates the triggered function of the queue. The name of the connection string configuration and the queue name are passed as parameters in the QueueTrigger attribute</p>
                    
                    <p>You can use the above procedure to add more functions to your role application project. Each project function may have a different trigger, but a function can not have more than one trigger</p>

                    <h2 class="section-heading">Adding links</h2>

                    <p>As with triggers, the input and output links are added to the function as link attributes. Add the links to a function as follows:</p>

                    <p>Make sure you have configured the project for local development.</p>

                    <p>Add the appropriate NuGet extension package for the specific link.</p>

                    <p>If there are values ​​of the application that the link needs, add them to the Values ​​collection in the local configuration file. These values ​​are used when the function is executed locally. When the function is executed in the application of functions in Azure, the values ​​of the application application are used.</p>

                    <p>Add the appropriate link attribute for the signature of the method. In the following example, a message from the queue triggers the function and the output link creates a new message from the queue with the same text in another queue.</p>

                    <img class="img-responsive" src="../img/AzureFunction08.jpg" alt="">

                    <p>The connection to the storage in the queue is obtained from the AzureWebJobsStorage value.</p>

                    <h2 class="section-heading">Publication in Azure</h2>

                    <p>In the Solution Explorer, right-click on the project and select Publish.</p>

                    <p>Select Azure Function App, choose Create new, and then select Publish.</p>

                    <img class="img-responsive" src="../img/AzureFunction09.jpg" alt="">

                    <p>When you enable Run from ZIP, the Azure function application enters read-only mode and runs directly from the deployment package.</p>

                    <p>If you have not yet connected Visual Studio to your Azure account, select Add an account ....</p>

                    <p>In the Create Application Service dialog box, use the Hosting configuration that is specified in the table below the image:</p>

                    <img class="img-responsive" src="../img/AzureFunction10.jpg" alt="">

                    <p>Click Create to create a function application and related resources in Azure with this configuration and implement the function project code.</p>

                   <p>Once the implementation is finished, write down the value of the URL of the site, which is the address of the function application in Azure.</p>

                    <img class="img-responsive" src="../img/AzureFunction11.jpg" alt="">

                    <h2 class="section-heading">Function App Configuration</h2>

                    <p>Any configuration that you add in local.settings.json must be added to the function application in Azure. This configuration is not automatically loaded when you publish the project.
The easiest way to load the required configuration in the function application in Azure is to use the Manage application settings link ... which appears once you successfully publish the project.</p>

                    <img class="img-responsive" src="../img/AzureFunction12.jpg" alt="">

                    <p>This brings up the Application Settings dialog box for the function application, where you can add a new application configuration or modify an existing one.</p>

                    <img class="img-responsive" src="../img/AzureFunction13.jpg" alt="">

                    <p>Local represents a configuration value in the local.settings.json file and Remote is the current value of the Azure function application. Choose Add Configuration to create a new application configuration. Use the Insert a value from Local link to copy a configuration value for the Remote field. Pending changes are written to the local configuration file and the function application when OK is selected.</p>

                    <h2 class="section-heading">Watch the video if you do not understand something</h2>

                    <iframe width="715" height="450" src="https://www.youtube.com/embed/rpPANKhbpDs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


                </div>
            </div>
        </div>
    </article>
    <hr />

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
