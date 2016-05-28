<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="login.aspx.vb" Inherits="AMClimatizacion.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPagina" runat="server">
    <br />
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-Clima">
                    <div class="panel-heading">Autenticación</div>
                    <div class="panel-body">
                        <div class="row">
                            <div id="error" class="well well-lg msj-error col-md-12" runat="server" visible="false">
                                <asp:Label ID="lbl_TituloError" runat="server"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <br />
                            <div class="col-md-2 col-md-offset-2">
                                Usuario
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txt_nombreUsuario" class="form-control" placeholder="Usuario" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-1">
                                <asp:RequiredFieldValidator ID="requerido_txt_nombreUsuario" runat="server"
                                    ControlToValidate="txt_nombreUsuario" ErrorMessage="*" EnableClientScript="false" Display="Dynamic" CssClass="validador"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2">
                                Contraseña
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txt_password" class="form-control" placeholder="Contraseña" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-1">
                                <asp:RequiredFieldValidator ID="requerido_txt_password" runat="server"
                                    ControlToValidate="txt_password" ErrorMessage="*" EnableClientScript="false" Display="Dynamic" CssClass="validador"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <br />
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Button ID="btn_Iniciar" runat="server" Text="Iniciar Sesión" CssClass="btn btn-block btn-primary" />
                            </div>
                            <br />
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
