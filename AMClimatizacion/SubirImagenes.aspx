<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="SubirImagenes.aspx.vb" Inherits="AMClimatizacion.SubirImagenes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPagina" runat="server">




    <br />
        <div class="panel panel-Clima">
        <div class="panel-heading">Subir Archivos a la Galería</div>
            <div class="panel-body">
            <br />
            <div class="row"> 
                <div class="col-md-2 col-md-offset-2">
                    Seleccionar Archivos
                </div>
                <div class="col-md-5">
                    <asp:FileUpload ID="FileUp" AllowMultiple="true" class="form-control" runat="server" />
                </div>
            </div>
            <br />
            <div class="row"> 
                <br />
                <div class ="col-md-offset-6">
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Enviar" />
                </div>
            </div>
       </div>
    </div>   
</asp:Content>
