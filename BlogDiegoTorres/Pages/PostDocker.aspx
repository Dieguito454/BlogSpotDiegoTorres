<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostDocker.aspx.cs" Inherits="BlogDiegoTorres.Pages.PostDocker" %>

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
                        <h1>Docker</h1>
                        <hr class="small"> 
                        <span class="subheading"> What is docker? and for what do you use it.</span>
                    </div>
                </div>
            </div>
        </div>
    </header>



    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">

                    <h2 class="section-heading">What is Docker?</h2>
                    
                    <p>Docker is an open source project to automate the implementation of applications such as portable and self-sufficient containers that can be run in the cloud or locally. Docker is also a company that promotes and promotes this technology, in collaboration with providers of the cloud, Linux and Windows, including Microsoft.</p>

                    <img class="img-responsive" src="../img/DockerImage01.jpg" alt="">

                    <p>Docker image containers can be run natively on Linux and Windows. However, Windows images can only run on Windows hosts and Linux images can run on Linux hosts and Windows hosts (with a Hyper-V Linux virtual machine, so far), where host means a server or a virtual machine.
                    Developers can use development environments on Windows, Linux or macOS. On the development team, the developer runs a Docker host where Docker images are deployed, including the application and its dependencies. Developers working on Linux or Mac use a Linux-based Docker host and can create images only for Linux containers. (Developers who work on Mac can edit code or run the Docker CLI on macOS, but at the time of writing this article, containers do not run directly on macOS). Developers who work in Windows can create images for Windows or Linux containers.</p>

                    <p>To host containers in development environments and provide additional developer tools, Docker delivers Docker Community Edition (CE) for Windows or macOS. These products install the necessary virtual machine (the Docker host) to host the containers. Docker also makes available Docker Enterprise Edition (EE), which is designed for business development and is used in IT teams that create, send and execute critical applications for the company in production.</p>

                    <p>To run Windows containers, there are two types of execution times:
Windows Server containers offer application isolation through process isolation and namespace technology. A Windows Server container shares the kernel with the container host and with all containers running on the host.
Hyper-V containers extend the isolation offered by Windows Server containers by running each container in a highly optimized virtual machine. In this configuration, the container's host kernel is not shared with the Hyper-V containers, which provides better isolation.</p>

                    <p>The images of these containers are created and work in the same way. The difference lies in how the container is created from the image by running a Hyper-V container that requires an additional parameter. For more information, see Hyper-V Containers.</p>

                    <h2 class="section-heading">Comparison of Docker containers with virtual machines</h2>

                     <img class="img-responsive" src="../img/DockerImage02.jpg" alt="">

                    <p>Since containers require much fewer resources (for example, they do not need a complete operating system), they start quickly and are easy to implement. This allows having a higher density, which means that more services can be executed in the same hardware unit, thus reducing costs.</p>

                    <p>As a side effect of running in the same kernel, it gets less isolation than virtual machines.</p>

                    <p>The main objective of an image is that it makes the environment (dependencies) the same among the different implementations. This means that you can debug it on your computer and then deploy it to another machine with the same guaranteed environment.</p>

                    <p>A container image is a way to package an application or a service and implement it reliably and reproducibly. I could say that Docker is not only a technology, but also a philosophy and a process.</p>

                    <p>When using Docker, you will not hear developers say "If it works on my machine, why not in production?". They can simply say "Run in Docker", because the packaged Docker application can run in any compatible Docker environment, and run as planned in all deployment destinations (such as development, quality control, testing and production) .</p>

                    <h2 class="section-heading">Containers, images and Docker records</h2>

                    <p>When using Docker, a developer creates an application or service and packages it, along with its dependencies, into a container image. An image is a static representation of the application or service and its configuration and dependencies.</p>

                    <p>To run the application or service, an instance of the application image is created to create a container, which will run on the Docker host. Initially, the containers are tested in a development environment or a PC.</p>

                    <p>Developers must store the images in a registry, which acts as an image library and is necessary when implemented in production orchestrators. Docker maintains a public registry through <a href="https://hub.docker.com/">Docker Hub</a> ; other providers offer records for different image collections, including the <a href="https://azure.microsoft.com/es-mx/services/container-registry/">Azure Container Registry</a>. As an alternative, companies can have a local private registry for their own Docker images.</p>

                    <img class="img-responsive" src="../img/DockerImage03.jpg" alt="">

                    <p> This figure shows how the images and Docker records are related to other components. The various supplier registration offers are also displayed.
Placing images in a registry allows you to store fragments of the application that are static and immutable, including all their dependencies at the frame level. Later, those images can be versioned and implemented in various environments and, therefore, provide a coherent implementation unit.</p>
                    
                    <p>Private image logs, whether hosted locally or in the cloud, are recommended when:
Images should not be publicly shared for reasons of confidentiality.
You want to have a minimum network latency between the images and the chosen deployment environment. For example, if the production environment is the Azure cloud, you probably want to store the images in the <a href="https://azure.microsoft.com/es-mx/services/container-registry/">Azure Container Registry</a> , so that network latency is minimal. Similarly, if the production environment is local, you can have a local Docker trust record available within the same local network. </ P>
            

                    <h2 class="section-heading">A simple analogy</h2>

                    <p>Perhaps a simple analogy can help to understand Docker's basic concept.
Let's go back to the 1950s for a moment. There was no word processor and photocopiers were used everywhere and of all kinds.</p>

                    <p>Imagine that you are responsible for sending batches of letters, as appropriate, to be sent by mail to customers in paper and real envelopes, which will be physically delivered to each client's postal address (then there was no email).</p>

                    <p>At some point, he realizes that the letters are no more than a composition of a large set of paragraphs, which are chosen and ordered as appropriate, according to the purpose of the load, so he designs a system to issue letters quickly, hoping to get an incredible improvement.</p>

                    <p>The system is simple:</p>

                    <p>Start with a set of transparent sheets that contain a paragraph.
To issue a set of letters, choose the sheets with the necessary paragraphs, stack and align them so that they remain and read well.</p>

                    <p>Finally, place them on the photocopier and press start to produce as many letters as necessary.
Therefore, for simplicity, that is Docker's main idea.
In Docker, each layer is the set resulting from the changes that occur in the file system after executing a command, such as installing a program.</p>

                    <p>Therefore, when you "Browse" the file system after the layer has been copied, you will see all the files, including the layer when the program was installed.
You can think of an image as an auxiliary read-only hard disk ready to be installed on a "computer" where the operating system is already installed.
Similarly, you can think of a container as the "computer" with the image hard disk installed. The container, as a team, can be turned off or deactivated.</p>


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
