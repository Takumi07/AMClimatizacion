<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="Contacto.aspx.vb" Inherits="AMClimatizacion.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPagina" runat="server">
    <br />
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-Clima">
                    <div class="panel-heading">Contacto</div>
                    <div class="panel-body">
                        <br />
                        <div class="row">
                            <div id="error" class="msj-error col-md-8 col-md-offset-2" runat="server" visible="false">
                                <asp:Label ID="lbl_TituloError" runat="server"></asp:Label>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <br />
                            <div class="col-md-2 col-md-offset-2">
                                Correo
                            </div>
                            <div class="col-md-5">
                                <asp:TextBox ID="txt_correo" class="form-control" placeholder="Correo Electronico" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-1">
                                <asp:RegularExpressionValidator ID="Correo_correcto" runat="server"
                                    ControlToValidate="txt_correo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="*" EnableClientScript="false" Display="Dynamic" CssClass="validador"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="requerido_txt_correo" runat="server"
                                    ControlToValidate="txt_correo" ErrorMessage="*" EnableClientScript="false" Display="Dynamic" CssClass="validador"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2">
                                Nombre y Apellido
                            </div>
                            <div class="col-md-5">
                                <asp:TextBox ID="txt_nomape" class="form-control" placeholder="Nombre y Apellido" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-1">
                                <asp:RequiredFieldValidator ID="requerido_txt_nomape" runat="server"
                                    ControlToValidate="txt_nomape" ErrorMessage="*" EnableClientScript="false" Display="Dynamic" CssClass="validador"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2">
                                Teléfono
                            </div>
                            <div class="col-md-5">
                                <asp:TextBox ID="txt_telefono" class="form-control" placeholder="Teléfono" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-1">
                                <asp:RequiredFieldValidator ID="requerido_txt_telefono" runat="server"
                                    ControlToValidate="txt_telefono" ErrorMessage="*" EnableClientScript="false" Display="Dynamic" CssClass="validador"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2">
                                Mensaje
                            </div>
                            <div class="col-md-5">
                                <textarea id="mensaje" runat="server" class="NoEditable form-control" rows="10" placeholder="Texto del Mensaje"></textarea>
                            </div>
                            <div class="col-md-1">
                                <asp:RequiredFieldValidator ID="requerido_mensaje" runat="server"
                                    ControlToValidate="mensaje" ErrorMessage="*" EnableClientScript="false" Display="Dynamic" CssClass="validador"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <br />
                            <div class="col-md-2 col-md-offset-5">
                                <asp:Button ID="btn_Enviar" runat="server" Text="Enviar" CssClass="btn btn-block btn-primary" />
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
