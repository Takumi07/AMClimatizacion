<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="SubirImagenes.aspx.vb" Inherits="AMClimatizacion.SubirImagenes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPagina" runat="server">
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">

                <div class="panel panel-Clima">
                    <div class="panel-heading">Subir Archivos a la Galería</div>
                    <div class="panel-body">
                        <br />
                        <div class="row">
                            <div id="error" class="msj-error col-md-8 col-md-offset-2" runat="server" visible="false">
                                <asp:Label ID="lbl_TituloError" runat="server"></asp:Label>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-md-2 col-md-offset-2">
                                Trabajo:
                            </div>

                            <div class="col-md-5">
                                <asp:TextBox ID="txt_Trabajo" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-1">
                                <asp:RequiredFieldValidator ID="requerido_txt_nomape" runat="server"
                                    ControlToValidate="txt_Trabajo" ErrorMessage="*" EnableClientScript="false" Display="Dynamic" CssClass="validador"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2">
                                Seleccionar Archivos
                            </div>
                            <div class="col-md-5">
                                <asp:FileUpload ID="FileUp" AllowMultiple="true" runat="server" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <br />
                            <div class="col-md-offset-5">
                                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Subir Archivos" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
