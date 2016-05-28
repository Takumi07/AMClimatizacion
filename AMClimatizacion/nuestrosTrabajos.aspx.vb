Public Class nuestrosTrabajos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
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
        Dim listaArchivos As New List(Of System.IO.FileInfo)
        For Each MiArchivo As System.IO.FileInfo In Informacion
            listaArchivos.Add(MiArchivo)
        Next
        generarGaleria(listaArchivos)
    End Sub


    Private Sub generarGaleria(ByVal paramArchivos As List(Of System.IO.FileInfo))
        'INICIO
        panelImagenes.Controls.Add(New LiteralControl("<div id=""slides"" data-u=""slides"" runat=""server"" style=""cursor: default; position: relative; top: 0px; left: 240px; width: 720px; height: 480px; overflow: hidden;"">"))
        'UNO POR IMAGEN
        For Each archivoImagen As System.IO.FileInfo In paramArchivos
            Dim _nombreCarpeta As String = Me.dbl_trabajos.SelectedItem.ToString
            panelImagenes.Controls.Add(New LiteralControl("<div data-p=""150.00"" runat=""server""><img data-u=""image"" src=""Galeria/" & _nombreCarpeta & "/" & archivoImagen.Name & """ /><img data-u=""thumb"" src=""Galeria/" & _nombreCarpeta & "/" & archivoImagen.Name & """ /></div>"))
        Next
        'FIN DE UNO POR IMAGEN
        'FIN
        panelImagenes.Controls.Add(New LiteralControl("</div>"))
    End Sub



End Class