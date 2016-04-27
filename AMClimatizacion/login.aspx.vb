Public Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("Usuario") Is Nothing Then
            Response.Redirect("subirImagenes.aspx")
        End If
    End Sub

    Protected Sub btn_Iniciar_Click(sender As Object, e As EventArgs) Handles btn_Iniciar.Click
        Try
            Validaciones.validarSubmit(Me, Me.error, Me.lbl_TituloError)
            Dim _usu As Entidades.Usuario = (New BLL.UsuarioBLL).login(Me.txt_nombreUsuario.Text, Me.txt_password.Text)
            Session.Add("Usuario", _usu)
            Response.Redirect("index.aspx")
        Catch ex As BLL.CamposincompletosException
            Me.error.Visible = True
            Me.lbl_TituloError.Text = ex.Mensaje
        Catch ex As BLL.UsuarioInexistenteException
            Me.error.Visible = True
            Me.lbl_TituloError.Text = ex.Mensaje
        Catch ex As BLL.PasswordIncorrectoException
            Me.error.Visible = True
            Me.lbl_TituloError.Text = ex.Mensaje
        Catch ex As BLL.excepcionGenerica
            Me.error.Visible = True
            Me.lbl_TituloError.Text = ex.Message
        End Try
    End Sub
End Class