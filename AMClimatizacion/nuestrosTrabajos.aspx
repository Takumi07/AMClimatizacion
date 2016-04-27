﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="nuestrosTrabajos.aspx.vb" Inherits="AMClimatizacion.nuestrosTrabajos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/estiloSliderGaleria.css" />
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jssor.slider.mini.js"></script>
    <script>
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              { $Duration: 1200, $Zoom: 1, $Easing: { $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$OutQuad }, $Opacity: 2 },
              { $Duration: 1000, $Zoom: 11, $SlideOut: true, $Easing: { $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, $Zoom: 1, $Rotate: 1, $During: { $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $Easing: { $Zoom: $Jease$.$Swing, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$Swing }, $Opacity: 2, $Round: { $Rotate: 0.5 } },
              { $Duration: 1000, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: { $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
              { $Duration: 1200, x: 0.5, $Cols: 2, $Zoom: 1, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $Jease$.$InCubic, $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 4, $Cols: 2, $Zoom: 11, $SlideOut: true, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $Jease$.$InExpo, $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 0.6, $Zoom: 1, $Rotate: 1, $During: { $Left: [0.2, 0.8], $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $Easing: { $Left: $Jease$.$Swing, $Zoom: $Jease$.$Swing, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$Swing }, $Opacity: 2, $Round: { $Rotate: 0.5 } },
              { $Duration: 1000, x: -4, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: { $Left: $Jease$.$InExpo, $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
              { $Duration: 1200, x: -0.6, $Zoom: 1, $Rotate: 1, $During: { $Left: [0.2, 0.8], $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8] }, $Easing: { $Left: $Jease$.$Swing, $Zoom: $Jease$.$Swing, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$Swing }, $Opacity: 2, $Round: { $Rotate: 0.5 } },
              { $Duration: 1000, x: 4, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: { $Left: $Jease$.$InExpo, $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
              { $Duration: 1200, x: 0.5, y: 0.3, $Cols: 2, $Zoom: 1, $Rotate: 1, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $Jease$.$InCubic, $Top: $Jease$.$InCubic, $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$OutQuad, $Rotate: $Jease$.$InCubic }, $Opacity: 2, $Round: { $Rotate: 0.7 } },
              { $Duration: 1000, x: 0.5, y: 0.3, $Cols: 2, $Zoom: 1, $Rotate: 1, $SlideOut: true, $Assembly: 2049, $ChessMode: { $Column: 15 }, $Easing: { $Left: $Jease$.$InExpo, $Top: $Jease$.$InExpo, $Zoom: $Jease$.$InExpo, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InExpo }, $Opacity: 2, $Round: { $Rotate: 0.7 } },
              { $Duration: 1200, x: -4, y: 2, $Rows: 2, $Zoom: 11, $Rotate: 1, $Assembly: 2049, $ChessMode: { $Row: 28 }, $Easing: { $Left: $Jease$.$InCubic, $Top: $Jease$.$InCubic, $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$OutQuad, $Rotate: $Jease$.$InCubic }, $Opacity: 2, $Round: { $Rotate: 0.7 } },
              { $Duration: 1200, x: 1, y: 2, $Cols: 2, $Zoom: 11, $Rotate: 1, $Assembly: 2049, $ChessMode: { $Column: 19 }, $Easing: { $Left: $Jease$.$InCubic, $Top: $Jease$.$InCubic, $Zoom: $Jease$.$InCubic, $Opacity: $Jease$.$OutQuad, $Rotate: $Jease$.$InCubic }, $Opacity: 2, $Round: { $Rotate: 0.8 } }
            ];

            var jssor_1_options = {
                $AutoPlay: true,
                $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: jssor_1_SlideshowTransitions,
                    $TransitionsOrder: 1
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,
                    $Rows: 2,
                    $Cols: 6,
                    $SpacingX: 14,
                    $SpacingY: 12,
                    $Orientation: 2,
                    $Align: 156
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 960);
                    refSize = Math.max(refSize, 300);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPagina" runat="server">
    <br />
    <br />
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="row">
                 <div class="col-md-2 col-md-offset-2">
                                Trabajos
                            </div>

                            <div class="col-md-6">
                                <asp:DropDownList ID="dbl_trabajos" CssClass="form-control" AutoPostBack="true" runat="server"></asp:DropDownList>
                            </div>
                    </div>
                <br />
                <br />
                <!-- #region Jssor Slider Begin -->
                <div id="jssor_1" class="embed-responsive" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 800px; height: 480px; overflow: hidden;  background-color: #24262e;">
                    <div id="slides" data-u="slides" runat="server" style="cursor: default; position: relative; top: 0px; left: 240px; width: 720px; height: 480px; overflow: hidden;">
                    
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/01.jpg" />
                            <img data-u="thumb" src="img/thumb-01.jpg" />
                        </div>
                        <div data-p="150.00" runat="server">
                            <img data-u="image" src="img/02.jpg" />
                            <img data-u="thumb" src="img/thumb-02.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/03.jpg" />
                            <img data-u="thumb" src="img/thumb-03.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/04.jpg" />
                            <img data-u="thumb" src="img/thumb-04.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/05.jpg" />
                            <img data-u="thumb" src="img/thumb-05.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/06.jpg" />
                            <img data-u="thumb" src="img/thumb-06.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/07.jpg" />
                            <img data-u="thumb" src="img/thumb-07.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/08.jpg" />
                            <img data-u="thumb" src="img/thumb-08.jpg" />
                        </div>
                        <div data-p="150.00" runat="server">
                            <img data-u="image" src="img/09.jpg" />
                            <img data-u="thumb" src="img/thumb-09.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/10.jpg" />
                            <img data-u="thumb" src="img/thumb-10.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/11.jpg" />
                            <img data-u="thumb" src="img/thumb-11.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/12.jpg" />
                            <img data-u="thumb" src="img/thumb-12.jpg" />
                        </div>
                        <div data-p="150.00" runat="server" >
                            <img data-u="image" src="img/13.jpg" />
                            <img data-u="thumb" src="img/thumb-13.jpg" />
                        </div>
                        <div data-p="150.00" runat="server">
                            <img data-u="image" src="img/14.jpg" />
                            <img data-u="thumb" src="img/thumb-14.jpg" />
                        </div>

                    </div>
                    <!-- Thumbnail Navigator -->
                    <div data-u="thumbnavigator" class="jssort01-99-66" style="position: absolute; left: 0px; top: 0px; width: 240px; height: 480px;" data-autocenter="2">
                        <!-- Thumbnail Item Skin Begin -->
                        <div data-u="slides"  style="cursor: default;">
                            <div data-u="prototype"  class="p">
                                <div class="w">
                                    <div data-u="thumbnailtemplate"  class="t"></div>
                                </div>
                                <div class="c" ></div>
                            </div>
                        </div>
                        <!-- Thumbnail Item Skin End -->
                    </div>
                    <!-- Arrow Navigator -->
                    <span data-u="arrowleft" class="jssora05l" style="top: 158px; left: 248px; width: 40px; height: 40px;" data-autocenter="2"></span>
                    <span data-u="arrowright" class="jssora05r" style="top: 158px; right: 8px; width: 40px; height: 40px;" data-autocenter="2"></span>
                </div>

                <!-- #endregion Jssor Slider End -->
            </div>

            </div>
        </div>
    <br />
    <br />
</asp:Content>
