<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="Contacto.aspx.vb" Inherits="AMClimatizacion.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPagina" runat="server">
    </br>
    <div class="panel panel-Clima">
        <div class="panel-heading">Contacto</div>
            <div class="panel-body">
            <br />
            <div class="row"> 
                <div class="col-md-2 col-md-offset-2">
                    Correo
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="TextBox1" class="form-control"  placeholder="Email"  runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row"> 
                <div class="col-md-2 col-md-offset-2">
                    Nombre y apellido
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="TextBox2" class="form-control"  placeholder="Nombre y apellido"  runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row"> 
                <div class="col-md-2 col-md-offset-2">
                    Teléfono
                </div>
                <div class="col-md-5">
                    <asp:TextBox ID="TextBox3" class="form-control"  placeholder="Teléfono"  runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row"> 
                <div class="col-md-2 col-md-offset-2">
                    Mensaje
                </div>
                <div class="col-md-5">
                    <textarea id="mensaje" class="NoEditable form-control" rows="10"></textarea>
                </div>
            </div>
            <div class="row"> 
                <br />
                <div class ="col-md-offset-6">
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Enviar" />
                </div>
            </div>
       </div>
    </div>   

</asp:Content>
