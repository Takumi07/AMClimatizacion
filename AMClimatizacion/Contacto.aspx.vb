Public Class Contacto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_Enviar_Click(sender As Object, e As EventArgs) Handles btn_Enviar.Click
        Try
            Validaciones.validarSubmit(Me, Me.error, Me.lbl_TituloError)
            BLL.MailingBLL.enviarMailContacto(txt_correo.Text, txt_nomape.Text, txt_telefono.Text, mensaje.Value)
            'Mensaje de que se envió correctamente la consulta
            Response.Redirect("mensajeConfirmacionContacto.aspx")
        Catch ex As BLL.CamposincompletosException
            Me.error.Visible = True
            Me.lbl_TituloError.Text = ex.Mensaje
        Catch ex As Exception
            Me.error.Visible = True
            Me.lbl_TituloError.Text = "Se ha producido un error al enviar el correo. Por favor intentelo más tarde."
        End Try
    End Sub
End Class