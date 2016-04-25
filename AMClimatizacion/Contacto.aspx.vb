Public Class Contacto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_Enviar_Click(sender As Object, e As EventArgs) Handles btn_Enviar.Click
        Try
            Validaciones.validarSubmit(Me, Me.error, Me.lbl_TituloError)
            BLL.MailingBLL.enviarMailContacto(txt_correo.Text, txt_nomape.Text, txt_telefono.Text, mensaje.Value)
            'Mensaje de que se envió correctamente la consulta
        Catch ex As BLL.CamposincompletosException
            Me.error.Visible = True
            Me.lbl_TituloError.Text = ex.Mensaje
        Catch ex As Exception
            Throw ex
        End Try


    End Sub
End Class