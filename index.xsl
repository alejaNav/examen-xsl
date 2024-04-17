<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html lang="en">
            
            <head>
                <title>KingsLeague</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
            </head>
            
            <body>
                <header>
                    <nav class="navbar navbar-expand-md navbar-light bg-dark">
                        <div class="container">
                            <a class="navbar-brand" href="#"><img src="img/logo.svg" class="img-fluid " width="80" alt=""/></a>
                            <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="collapsibleNavId">
                                <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                                    
                                    <li class="nav-item">
                                        <a class="nav-link fw-bold " id="top" href="#" style="color: #eab147;">KingsLeague</a>
                                    </li>
                                    
                                </ul>
                                <a name="" id="" class="btn btn-black fw-bold " style="background-color: #eab147;" href="#"
                                   role="button">Tienda</a>
                                
                            </div>
                        </div>
                    </nav>
                    <section class="bg-dark">
                        
                        <div class="container-fluid py-2  ">
                            <div class="row justify-content-center ">
                                
                                
                                <xsl:for-each select="kingsleague/equipo">						
                                    <div class="col-3 col-md-2 col-lg-1 text-center rounded-circle my-1 " 
                                         style="{gradiente}" >
                                        <a href="#s{@abr}">   <img src="{escudo}" class="img-fluid" alt=""/></a>
                                        <h2 class="fw-bold text-light"><xsl:value-of select="@abr"/></h2>
                                        
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                        
                        
                        
                    </section>
                    
                </header>
                <main class="bg-dark">
                    
                    <xsl:for-each select="kingsleague/equipo">
                        <section id="s{@abr}">
                            
                            
                            
                            <div class="card">
                                
                                <video autoplay="autoplay" loop="loop"  src="{video}"  poster="{poster}" />
                                
                                <div class="card-img-overlay text-center">
                                    <div class="container-fluid ">
                                        <div class="col-2 col-md-2 text-center rounded-circle  mx-auto "
                                             style="{gradiente}">
                                            <img src="{escudo}" class="img-fluid" alt=""/>
                                            <h2 class="fw-bold text-light"><xsl:value-of select="@nombre"/></h2>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            
                        </section>
                        
                        <section class="pt-3 pb-3">
                            
                            <div class="container ">
                                <div class="row justify-content-center">
                                    <div class="col-8 col-md-4 ">
                                        <div class="card" style="{gradiente}">
                                            <img class="card-img-top"
                                                 src="{presidente/imagen}"
                                                 alt="Title" />
                                            <div class="card-body text-center">
                                                <h4 class="card-title text-light"><xsl:value-of select="presidente/@nombre"/></h4>
                                                <p class="card-text text-light">Presidente</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row justify-content-center mt-3 mb-3">
                                    <div class="col-6 col-md-4 col-lg-3 mt-2 mb-2 d-flex align-items-stretch ">
                                        <div class="card position-relative " style="{gradiente}">
                                            
                                            
                                            <img class="card-img-top img-fluid"
                                                 src="{entrenador/imagen}"
                                                 alt="Title" />
                                            <div class="card-body text-center">
                                                <h4 class="card-title  text-light"><xsl:value-of select="entrenador/@nombre"/></h4>
                                                <p class="card-text  text-light">Entrenador</p>
                                            </div>
                                        </div>
                                    </div>
                                    <xsl:for-each select="players/player">
                                        
                                        
                                        <div class="col-6 col-md-4 col-lg-3 mt-2 mb-2 d-flex align-items-stretch">
                                            <div class="card position-relative " style="{../../gradiente}">
                                                <div class="text-end me-1 mt-1 mb-1">
                                                    
                                                    <xsl:choose>
                                                        <xsl:when test="../media = ''">
                                                            
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <a
                                                                name=""
                                                                id=""
                                                                class="btn top-0 end-0 "
                                                                style="background-color: #eab147;"
                                                                href=""
                                                                role="button"
                                                                >Media: <xsl:value-of select="media"/></a>
                                                        </xsl:otherwise>
                                                        
                                                    </xsl:choose>
                                                    
                                                    
                                                    
                                                </div>
                                                
                                                <img class="card-img-top"
                                                     src="{imagen}"
                                                     alt="Title" />
                                                <div class="card-body text-center">
                                                    <h4 class="card-title text-light"><xsl:value-of select="@nombre"/></h4>
                                                    <p class="card-text  text-light"><xsl:value-of select="demarcacion"/></p>
                                                </div>
                                            </div>
                                        </div>
                                    </xsl:for-each>
                                </div>
                                
                            </div>
                            
                            
                        </section>
                    </xsl:for-each>
                    
                    
                    
                </main>
                <footer class=" text-center m-0 py-2" style=" background-color: #6e757c;">
                    <h2 class="m-0" style="color: #eab147; background-color: #6e757c;"> &#169; Alejandro Navarro</h2>
                    
                    <a href="#top" class=""><i
                            class="fa fa-arrow-up fa-2x  position-fixed bottom-0 end-0 me-3 mb-3" style="color: #eab147;"
                                                                                              aria-hidden="true"></i></a>
                    
                    
                </footer>
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                        crossorigin="anonymous"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                        crossorigin="anonymous"></script>
                <script>
                    function hideall(abr) {
                    document.querySelectorAll('.equipo').forEach(function(div) {
                    div.style.display = "none"
                    });
                    console.log(abr)
                    var divequipo = document.getElementById(abr);
                    divequipo.style.display = "block"
                    }
                </script>
                
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>