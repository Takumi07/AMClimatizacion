Public Class Maestra
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("Usuario") Is Nothing Then
            subirTrabajos.Visible = True
            login.Visible = False
            Logout.Visible = True
        Else
            subirTrabajos.Visible = False
            login.Visible = True
            Logout.Visible = False
        End If
    End Sub

    Public Sub cerrarsesion()
        Session.RemoveAll()
    End Sub


End Class