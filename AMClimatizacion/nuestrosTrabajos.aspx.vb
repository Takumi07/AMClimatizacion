Public Class nuestrosTrabajos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            Dim InformacionDirectorio As System.IO.DirectoryInfo
            InformacionDirectorio = New System.IO.DirectoryInfo(Server.MapPath("~/Galeria/"))
            Dim Informacion() As System.IO.DirectoryInfo = InformacionDirectorio.GetDirectories()
            dbl_trabajos.DataSource = Informacion
            dbl_trabajos.DataValueField = "Name"
            dbl_trabajos.DataBind()
        End If
    End Sub

    Private Sub dbl_trabajos_TextChanged(sender As Object, e As EventArgs) Handles dbl_trabajos.TextChanged
        Dim InformacionDirectorio As System.IO.DirectoryInfo
        InformacionDirectorio = New System.IO.DirectoryInfo(System.IO.Path.Combine(Server.MapPath("~/Galeria/"), dbl_trabajos.SelectedValue.ToString))
        Dim Informacion() As System.IO.FileInfo = InformacionDirectorio.GetFiles

        For Each MiArchivo As System.IO.FileInfo In Informacion
            'No funciona, ver que control sería.
            Dim MiImagen As New Image
            MiImagen.ImageUrl = MiArchivo.FullName
            slides.Controls.Add(MiImagen)
        Next

    End Sub



End Class