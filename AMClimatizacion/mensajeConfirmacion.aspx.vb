Public Class mensajeConfirmacion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Usuario") Is Nothing Then
            Response.Redirect("index.aspx")
        End If
        redireccionar()
    End Sub

    Private Sub redireccionar()
        Response.AddHeader("REFRESH", "3;URL=nuestrosTrabajos.aspx")
    End Sub



End Class