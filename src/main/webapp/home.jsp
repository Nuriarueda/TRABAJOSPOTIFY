<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="users.LoggedUser"%>
<%@page import="views.MenuView"%>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Enlace a Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <%
        LoggedUser user = (LoggedUser)session.getAttribute("user");
        if(user==null){
            response.sendRedirect("login.jsp");
        }
        else{
    %> 

    <div>
        <div class="min-vh-100 d-flex flex-column">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">Usuario</a>
                <div class="collapse navbar-collapse justify-content-end">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#"><% user.getUsername(); %></a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="container-fluid">
                <div class="row">
                    <div class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary">
                        <div class="menu-lateral">
                            <ul class="nav flex-column text-white">
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="home.jsp">Inicio</a>
                                </li>                            
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="biblioteca.jsp">Tu biblioteca</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="logout.jsp">Cerrar sesión</a>
                                </li>
                            </ul>
                        </div>
                    </div>                        
                </div>
        
                <div class="cartas col-md-9">
                    <div class="d-flex flex-wrap justify-content-start">
                        <div class="col-md-4">
                            <div class="card" style="width: 17rem;">
                                <img src="https://thisis-images.scdn.co/37i9dQZF1DZ06evNZVVBPG-default.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Mix Diario 2</h5>
                                    <p class="card-text">Lana del Rey, Taylor Swift y más</p>
                                    <a href="https://open.spotify.com/intl-es/artist/00FQb4jTyendYWaN8pK0wa?si=F6cbAxpqREaSZju93euthQ" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="card" style="width: 17rem;">
                                <img src="https://lastfm.freetls.fastly.net/i/u/ar0/59684aef6f2df6266b84a06269ff0855.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Perfect Night</h5>
                                    <p class="card-text">LE SSERAFIM</p>
                                    <a href="https://open.spotify.com/intl-es/track/74X2u8JMVooG2QbjRxXwR8?si=654054ade8a0473f" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-4">
                            <div class="card" style="width: 17rem;">
                                <img src="https://i.scdn.co/image/ab67706f00000002242064cf1508af7d3b19daef" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">This is TINI</h5>
                                    <p class="card-text">De Spotify</p>
                                    <a href="https://open.spotify.com/playlist/37i9dQZF1DXe0nmj2KyjW1?si=b5da7846f45444ad" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                                </div>
                            </div>
                        </div>
                        

                    </div>

                   
                    <div class="row mt-4">

                        <div class="col my-4">
                            <div class="card" style="width: 17rem;">
                            <img src="https://i.pinimg.com/736x/d1/05/67/d10567007a3982eb7ced1aaa7f1d300f.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Party In The U.S.A</h5>
                                <p class="card-text">Miley Cyrus</p>
                                <a href="https://open.spotify.com/intl-es/track/3E7dfMvvCLUddWissuqMwr?si=cdbdc2741ce840db" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div>
                    </div>
                        <div class="col-md-4">
                            <div class="card" style="width: 17rem;">
                                <img src="https://i.scdn.co/image/ab67616d00001e024cfec4226766102300244b83" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Reckless</h5>
                                    <p class="card-text">Madison Beer</p>
                                    <a href="https://open.spotify.com/intl-es/track/1Dq5By1yUrOB0zSxhCc5v8?si=255d6387eb54429b" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                                </div>
                            </div> 
                        </div>

                        <div class="col-md-4">
                            <div class="card" style="width: 17rem;">
                                <img src="https://phantom-elmundo.unidadeditorial.es/d8371cc9f90902c0fb5d92e9707aad50/resize/414/f/jpg/assets/multimedia/imagenes/2019/01/24/15483328656433.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">7 rings</h5>
                                    <p class="card-text">Ariana Grande</p>
                                    <a href="https://open.spotify.com/intl-es/track/6ocbgoVGwYJhOv1GgI9NsF?si=ab54f08e3a564e27" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                                </div>
                            </div> 
                        </div>


                    <div class="col my-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://www.lahiguera.net/musicalia/artistas/tini/disco/13428/tini_un_mechon_de_pelo-portada.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">un mechón de pelo</h5>
                                <p class="card-text">TINI</p>
                                <a href="https://open.spotify.com/intl-es/album/3wOG84RkmoSoeN3LKkxXga?si=K7R-GUDARXW2zbLmHmS0PQ" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO4bwDxS-default.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">This is Sabrina Carpenter</h5>
                                <p class="card-text">De Spotify</p>
                                <a href="https://open.spotify.com/playlist/37i9dQZF1DZ06evO4bwDxS?si=7a7e96e12ab6484f" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div> 
                    </div>

                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://www.lahiguera.net/musicalia/artistas/ariana_grande/disco/13290/tema/30181/ariana_grande_yes_and-portada.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">yes, and?</h5>
                                <p class="card-text">Ariana Grande</p>
                                <a href="https://open.spotify.com/intl-es/track/7gaA3wERFkFkgivjwbSvkG?si=ed575ac62bf44728" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://pbs.twimg.com/media/FTjv5pOWIAAnOld.jpg:large" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">POP!</h5>
                                <p class="card-text">NAYEON</p>
                                <a href="https://open.spotify.com/intl-es/track/3lOMJTQTd6J34faYwASc33?si=fd0e72ca34114ee3" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div>  
                    </div>
                        
                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://i.scdn.co/image/ab67616d0000b27386ea2533f3bfc5f1f08ab168" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Bop To The Top</h5>
                                <p class="card-text">High School Musical</p>
                                <a href="https://open.spotify.com/intl-es/track/24wph3NpwTSARxJl3qZHmH?si=d31f52fba74a4137" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div> 
                    </div>

                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://images.genius.com/99727cd2f6a55e2ba7d1a33d15758fd4.600x600x1.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Hero</h5>
                                <p class="card-text">StarStruck</p>
                                <a href="https://open.spotify.com/intl-es/track/3q3pZHncNkvIWJebMeuQqQ?si=23a291b9495d42ab" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div> 
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://pbs.twimg.com/media/FafvIeaaUAAs_JF.jpg:large" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Mix BlackPink</h5>
                                <p class="card-text">JENNIE, LISA, JISOO y ROSÉ</p>
                                <a href="https://open.spotify.com/playlist/37i9dQZF1EIUu7mk4MUkLV?si=db8ddc6a6940459e" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div> 
                    </div>

                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://images.genius.com/313e6677d17e9f3cff7d4fc355a6a653.1000x1000x1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">You and Me</h5>
                                <p class="card-text">JENNIE</p>
                                <a href="https://open.spotify.com/intl-es/album/1Vzh3fTdh0R0evafCcpNpL?si=J9ARlx0BSuWA6YiGAK9bGg" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div> 
                    </div>

                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://i.scdn.co/image/ab67616d0000b273741fd4807f442af3f7359316" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Standing Next to You</h5>
                                <p class="card-text">Jungkook</p>
                                <a href="https://open.spotify.com/intl-es/track/2KslE17cAJNHTsI2MI0jb2?si=55bcb2c932cf4248" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div>     
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://www.lahiguera.net/musicalia/artistas/varios/disco/0/tema/29854/madrid_city-portada.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Madrid City</h5>
                                <p class="card-text">Ana Mena</p>
                                <a href="https://open.spotify.com/intl-es/track/6KHxe3Yj8W8oq3zviUvJRe?si=43a7780bf78e4392" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div> 
                    </div>

                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://i.scdn.co/image/ab67616d0000b27359f12004c7f6b392c8c95502" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Moonlight</h5>
                                <p class="card-text">Chase Atlantic</p>
                                <a href="https://open.spotify.com/intl-es/track/0laLzrH5PsoA7HpGw2vCVh?si=457142e137924c19" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://cdns-images.dzcdn.net/images/cover/a8694bccf671d1d8f68f86ca812975e1/500x500.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Queencard</h5>
                                <p class="card-text">(G)I-DLE</p>
                                <a href="https://open.spotify.com/intl-es/track/4uOBL4DDWWVx4RhYKlPbPC?si=be7b6a70da8e40c2" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div> 
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://i.pinimg.com/736x/84/b2/23/84b2233d921133b26aadae91fc909086.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                <h5 class="card-title">Daechwita</h5>
                                <p class="card-text">Agust D</p>
                                <a href="https://open.spotify.com/playlist/1e8WFSUvKlf3rYF06amnwG?si=e8d4d66f6d33446f" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://static.fnac-static.com/multimedia/Images/ES/NR/77/9e/82/8560247/1540-1.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                <h5 class="card-title">24 rosas</h5>
                                <p class="card-text">Aitana</p>
                                <a href="https://open.spotify.com/intl-es/track/3HDYqfUZN3vToDnhqNsb6J?si=c04db2250aa843b4" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card" style="width: 17rem;">
                            <img src="https://images.genius.com/b2f809b4d9deea99b1ecd6d4610ec070.1000x1000x1.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                <h5 class="card-title">Worldwide</h5>
                                <p class="card-text">YoSoyPlex</p>
                                <a href="https://open.spotify.com/intl-es/album/4pci8l8GlvR9OfZXBsQ6OA?si=Qgvf5Aj9Q3yYGjHh79m1Dw" class="btn btn-secondary btn-sm">Haz click para escuchar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <div>
        <div>            
            <footer class="bg-light text-center text-lg-start">
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                    © 2024 Derechos Reservados: <a class="text-dark" href="#">Usuarios.com</a>
                </div>
            </footer>
        </div>
    </div>
    <% } %>
    <!-- Bootstrap JavaScript y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>