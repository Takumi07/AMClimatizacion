<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="mensajeConfirmacionContacto.aspx.vb" Inherits="AMClimatizacion.mensajeConfirmacionContacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPagina" runat="server">
      <br />
    <br />
    <br />
    <div class="container-fluid">
        <div class="fila">
            <div class="col-md-12 ">
                <asp:Image ID="img_ok" runat="server" CssClass="center-block" ImageUrl="~/Imagenes/ok.png" Width="150px" Height="150px" />
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="row">
                    <div class="well well-lg msj-ok col-md-12" runat="server">
                        <asp:Label ID="lbl_correcto" runat="server">Se ha enviado el correo correctamente. AM Climatización se contactará con usted a la brevedad.</asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
