<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostDockerInstallation.aspx.cs" Inherits="BlogDiegoTorres.Pages.PostDockerInstallation" %>

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
                        <span class="subheading"> Installation, step by step</span>
                    </div>
                </div>
            </div>
        </div>
    </header>



     <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">

                    <h2 class="section-heading">Installation</h2>

                    <p>Today, Docker has become the de facto standard in the use of software containers. In this article we will see how we can install it in Windows 10, specifically the Docker CE (Community Edition) version.</p>
                    
                    <p>Well, if we review the origins of Docker is true, it started as a project under Kernel Linux, but now no longer. Microsoft did not want to be left out of this technology and reached an agreement with Docker in 2015 to become an official partner and in this way, incorporate this technology to their Windows Server 2016 and Windows 10 operating systems (although not all versions are supported) .</p>

                    <p>Actually, it's nothing new to use Docker in Windows. In fact, we can run Docker in Windows 7 and Windows 8 using VirtualBox, the novelty now is that we can use Docker natively in Windows 10 without the need for other tools like Docker ToolBox.</p>

                    <img class="img-responsive" src="../img/DockerImage04.jpg" alt="">

                    <p>Microsoft has become one of the largest code contributors in Docker and has signed agreements to ensure that Docker runs correctly on its operating systems, either natively or using Linux Kernel via virtualization (Hyper-V). In addition, we can take the containers to Azure with the ACR services (Azure Container Registry) to manage a private registry and orchestration with support for Swarm, Kubernetes or Mesosphere DC / OS through AKS (Azure Container Service).</p>

                    <p>Visual Studio 2017 also supports Docker containers. We can create applications .NET Core Dockerizadas directly from the IDE, since Visual Studio 2017 is able to generate Docker images and Docker Compose automatically, but that is a topic that we will see in another post later.</p>

                    <p>If we want to install Docker we must meet certain requirements in Windows 10:</p>

                    <p>Windows 10 Professional or Enterprise version.</p>
                    

            <p>Updated with Anniversary Edition or Creators Update.</p>
                    <p>Critical updates for Windows Containers. </p>
                    <p>Compilation equal to or greater than 14393.222.</p>     
                    <p>Virtualization activated in our team.</p>
     <p>In the case of not having virtualization activated, Docker will detect this feature in the installation process and ask us to install it automatically. If we want to consult it, we can see using the "Task Manager":</p>

                     <img class="img-responsive" src="../img/DockerImage05.jpg" alt="">

                    <p>The installation process of Docker in Windows 10, is quite simple, the first thing is to download it from here: <a href="https://hub.docker.com/editions/community/docker-ce-desktop-windows">Download Docker</a> </p>

                   <img class="img-responsive" src="../img/DockerImage06.jpg" alt="">

                    <p>Once downloaded, we execute the file and the installation process will be launched as we see in the image:</p>                    
                    
                    <img class="img-responsive" src="../img/DockerImage07.jpg" alt="">

                    <p>When the process finishes, the correct installation window will appear, we will press the "Close and logout" button to finish configuring Docker in our Windows 10. In some cases, this will cause the Windows system to restart to finish the configuration:</p>
                    
                    <img class="img-responsive" src="../img/DockerImage08.jpg" alt="">

                    <p>After restarting our Windows 10 we will have Docker installed on our PC.</p>

                    <img class="img-responsive" src="../img/DockerImage09.jpg" alt="">

                    <p>As indicated above, if we do not have virtualization enabled, Docker will ask us to perform the process automatically and restart our Windows 10, this step may take some time to complete the entire process and sometimes does not show any message:</p>

                    <img class="img-responsive" src="../img/DockerImage10.jpg" alt="">

                    <p>Finally, once the previous process is finished, we are ready to use Docker. If we press right button on the icon of the taskbar we will see the Docker options:</p>

                    <img class="img-responsive" src="../img/DockerImage11.jpg" alt="">

                    <p>If now we click on "Settings ..." we will see the initial defined configuration of Docker. If we want Docker not to start with our Windows 10 we can uncheck it here, the rest of the options are already configured and ready to work.</p>

                    <img class="img-responsive" src="../img/DockerImage12.jpg" alt="">

                    <p>In the "Advanced" option, we will see the default settings that Docker reserves in a dedicated way to manage your images and containers, we can also change it if necessary:</p>

                    <img class="img-responsive" src="../img/DockerImage13.jpg" alt="">

                    <p>We must remember that Docker is a complete platform for working with containers and at the end of the installation on our PC we have the following tools:</p>
                    
                    <p>Docker Engine.</p>

                    <p>Docker Client.</p>

                    <p>Docker Compose.</p>
                    
                    <p>Docker Machine.</p>

                    <p>With these simple steps, we would complete the Docker installation process.</p>

                      <h2 class="section-heading">Watch the video if you do not understand something</h2>

    <iframe width="715" height="450" src="https://www.youtube.com/embed/ymlWt1MqURY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    
                    <h2 class="section-heading">Experimenting with Docker</h2>

                    <p>To work with Docker and get familiar with the tool, we can use the console or PowerShell. In my case I will use the CMD console to start using Docker, comment that there are options like Kitematic or Portainer if we are more comfortable working with IU graphic tools.
The first thing is to open the CMD console and see the list of available Docker commands</p>
                    <p>It will show us the list of commands that we can use from the console, if we want detailed information and examples of use, in the official page they are all documented: <a href="https://docs.docker.com/engine/reference/commandline/docker/#child-commands">see here</a></p>

                    <img class="img-responsive" src="../img/DockerImage14.jpg" alt="">

                     <h2 class="section-heading">Creating our account in Docker Hub</h2>

                    <p>Although it is not mandatory, I always recommend creating a <a href="https://hub.docker.com/">Docker Hub</a>  account to avoid problems later when downloading images, as some of them will ask for our credentials to be downloaded to our PC:</p>

                    <img class="img-responsive" src="../img/DockerImage15.jpg" alt="">

                    <h2 class="section-heading">Running our first container with Docker</h2>

                    <p>The typical example in Docker is to run the "Hello World" container. For this we simply write "docker run hello-world". As we do not have the previously downloaded image, Docker is ready and connects to the Hub to obtain it and save it on our PC. Then run the container on the downloaded image and end the life cycle of the container:</p>

                    <img class="img-responsive" src="../img/DockerImage16.jpg" alt="">

                    <p>With this simple example, we verify that the message "Hello from Docker" appears, indicating that you have downloaded the image and executed the container correctly.
Another important command is "docker info", which informs us of the current state of our Docker: images, containers, storage, CPU, memory and much more information on the screen that gives us a complete overview of everything:</p>

                    <img class="img-responsive" src="../img/DockerImage17.jpg" alt="">

                    <p>Some basic Docker commands are:</p>

                    <p>docker images: to see the list of downloaded images.</p>

                    <p>ps docker: to see the list of running containers.</p>

                    <p>docker ps -a: to see the list of all containers executed.</p>

                    <p>docker rm: to delete containers in our team.</p>

                    <p>docker rmi: to erase images on our computer.</p>

                    <p>docker search: to search for images in the Docker Hub.</p>

                    <p>docker pull: to download images from Docker Hub.</p>

                    <p>From here, we have seen how Docker works, obviously, in a very simple way, with images obtained from the Docker Hub configured. As you get to know Docker you will also learn to create your own images to publish and optimize them according to the needs of your projects. All the information is available on the Docker portal as a recommended starting point: https://docs.docker.com/get-started</p>

                    <p>In conclusion, Docker gives a lot of game to set up development environments, testing and testing in our own team to then generate "deliverable containers" and take them to production, although this part is no longer so trivial and DevOps experience and knowledge is required.</p>

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
