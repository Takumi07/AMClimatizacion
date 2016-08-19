<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="Index.aspx.vb" Inherits="AMClimatizacion.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="JS/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="JS/jssor.js"></script>
    <script type="text/javascript" src="JS/jssor.slider.js"></script>
    <script type="text/javascript" src="JS/slideshow.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPagina" runat="server">
    <br />
    <br />
    <br />
    <div class="container-fluid">
        <div class="row">

            <div class="col-md-5">
                            <br />  <br />
                <div class="panelBoton-titulo">Bienvenidos a AM Climatización</div>
                <div class="panelBoton-texto">Somos una empresa netamente dedicada a la ejecución de instalaciones termomecanicas y de aire acondicionado de todo tipo de envergadura. Desde la etapa de cálculo y balance, dibujo y proyecto, y la ejecución completa de la obra. Con personal totalmente calificado, y asesoramiento del área. También contamos con la experiencia en la elaboración y ejecución de los diferentes sistemas del rubro y del mercado, tanto los sistemas tradicionales como los especiales y los de última generación.</div>
            </div>


            <div class="col-md-6 col-md-offset-1">
                <br />

                <div id="slider1_container" class="embed-responsive" style="position: relative; top: 0px; left: 0px; width: 900px; height: 500px; overflow: hidden;">

                    <!-- Loading Screen -->
                    <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                        <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; background-color: #000000; top: 0px; left: 0px; width: 100%; height: 100%;">
                        </div>
                        <div style="position: absolute; display: block; background: url(imagenes/loading.gif) no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;">
                        </div>
                    </div>

                    <!-- Slides Container -->
                    <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 900px; height: 500px; overflow: hidden;">
                        <div>
                            <img u="image" src="Imagenes/ImagenesSlide/Slider1.jpg" />
                        </div>
                        <div>
                            <img u="image" src="Imagenes/ImagenesSlide/Slider2.jpg" />
                        </div>
                        <div>
                            <img u="image" src="Imagenes/ImagenesSlide/Slider3.jpg" />
                        </div>
                        <div>
                            <img u="image" src="Imagenes/ImagenesSlide/Slider4.jpg" />
                        </div>
                        <div>
                            <img u="image" src="Imagenes/ImagenesSlide/Slider5.jpg" />
                        </div>
                        <div>
                            <img u="image" src="Imagenes/ImagenesSlide/Slider6.jpg" />
                        </div>
                        <div>
                            <img u="image" src="Imagenes/ImagenesSlide/Slider7.jpg" />
                        </div>
                        <div>
                            <img u="image" src="Imagenes/ImagenesSlide/Slider8.jpg" />
                        </div>
                        <div>
                            <img u="image" src="Imagenes/ImagenesSlide/Slider9.jpg" />
                        </div>
                    </div>

                    <!--#region Bullet Navigator Skin Begin -->
                    <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->
                    <style>
                        /* jssor slider bullet navigator skin 05 css */
                        /*
            .jssorb05 div           (normal)
            .jssorb05 div:hover     (normal mouseover)
            .jssorb05 .av           (active)
            .jssorb05 .av:hover     (active mouseover)
            .jssorb05 .dn           (mousedown)
            */
                        .jssorb05 {
                            position: absolute;
                        }

                            .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
                                position: absolute;
                                /* size of bullet elment */
                                width: 16px;
                                height: 16px;
                                background: url(imagenes/b05.png) no-repeat;
                                overflow: hidden;
                                cursor: pointer;
                            }

                            .jssorb05 div {
                                background-position: -7px -7px;
                            }

                                .jssorb05 div:hover, .jssorb05 .av:hover {
                                    background-position: -37px -7px;
                                }

                            .jssorb05 .av {
                                background-position: -67px -7px;
                            }

                            .jssorb05 .dn, .jssorb05 .dn:hover {
                                background-position: -97px -7px;
                            }
                    </style>
                    <!-- bullet navigator container -->
                    <div u="navigator" class="jssorb05" style="bottom: 16px; right: 6px;">
                        <!-- bullet navigator item prototype -->
                        <div u="prototype"></div>
                    </div>
                    <!--#endregion Bullet Navigator Skin End -->

                    <!--#region Arrow Navigator Skin Begin -->
                    <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
                    <style>
                        /* jssor slider arrow navigator skin 12 css */
                        /*
            .jssora12l                  (normal)
            .jssora12r                  (normal)
            .jssora12l:hover            (normal mouseover)
            .jssora12r:hover            (normal mouseover)
            .jssora12l.jssora12ldn      (mousedown)
            .jssora12r.jssora12rdn      (mousedown)
            */
                        .jssora12l, .jssora12r {
                            display: block;
                            position: absolute;
                            /* size of arrow element */
                            width: 30px;
                            height: 46px;
                            cursor: pointer;
                            background: url(imagenes/a12.png) no-repeat;
                            overflow: hidden;
                        }

                        .jssora12l {
                            background-position: -16px -37px;
                        }

                        .jssora12r {
                            background-position: -75px -37px;
                        }

                        .jssora12l:hover {
                            background-position: -136px -37px;
                        }

                        .jssora12r:hover {
                            background-position: -195px -37px;
                        }

                        .jssora12l.jssora12ldn {
                            background-position: -256px -37px;
                        }

                        .jssora12r.jssora12rdn {
                            background-position: -315px -37px;
                        }
                    </style>
                    <!-- Arrow Left -->
                    <span u="arrowleft" class="jssora12l" style="top: 225px; left: 0px;"></span>
                    <!-- Arrow Right -->
                    <span u="arrowright" class="jssora12r" style="top: 225px; right: 0px;"></span>
                </div>
                <!-- Jssor Slider End -->

            </div>


        </div>
        <br />
        <br />
        <div class="row">
            <div class="col-md-6">
                <a href="http://www.facebook.com/am.climatizacion" target="_blank"> <div class="panelBoton">
                    <img src="Imagenes/RedesSociales/FaceBook_64x64.png" class="img-responsive panelBoton-imagen" />
                    <div class="panelBoton-titulo">Facebook</div>
                    <div class="panelBoton-texto">Seguí a AM Climatización en nuestro Facebook Oficial.</div>
                </div></a>
            </div>
            <div class="col-md-6">
                <a href="nuestrosTrabajos.aspx"><div class="panelBoton">
                    <img src="Imagenes/RedesSociales/jobbank.png" class="img-responsive panelBoton-imagen" />
                    <div class="panelBoton-titulo">Trabajos Realizados</div>
                    <div class="panelBoton-texto">Conoce nuestra experiencia accediendo a información e imagenes actualizadas de todos los trabajos realizados por AM Climatización.</div>
                </div></a>
            </div>
        </div>

    </div>

    <br />
</asp:Content>
