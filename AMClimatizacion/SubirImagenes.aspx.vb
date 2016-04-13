Public Class SubirImagenes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ArchivoCorrecto As Boolean
        If FileUp.HasFile Then
            For Each MiArchivo In FileUp.PostedFiles
                Dim FileExtension As String
                Dim InfoFile As String
                InfoFile = String.Format("{0} es de tipo {1} y tiene un tamaño de {2} KB.", MiArchivo.FileName, MiArchivo.ContentType, MiArchivo.ContentLength / 1024)
                FileExtension = System.IO.Path.GetExtension(MiArchivo.FileName).ToLower

                Dim ExtensionesPermitidas As String() = {".jpg", ".jpeg", ".png", ".gif"}
                For i As Integer = 0 To ExtensionesPermitidas.Length - 1
                    If FileExtension = ExtensionesPermitidas(i) Then
                        ArchivoCorrecto = True
                    End If
                Next

                If ArchivoCorrecto = True Then
                    Try
                        Dim pathCarpetaDestino = System.IO.Path.Combine(Server.MapPath("~/"), "Galeria")
                        Dim carpetaDestino = New System.IO.DirectoryInfo(pathCarpetaDestino)
                        If Not (carpetaDestino.Exists) Then
                            carpetaDestino.Create()
                        End If
                        Dim nombreArchivo = System.IO.Path.GetFileName(MiArchivo.FileName)
                        Dim pathArchivoDestino = System.IO.Path.Combine(pathCarpetaDestino, nombreArchivo)
                        MiArchivo.SaveAs(pathArchivoDestino)
                        MsgBox("Archivo Subido!")
                    Catch ex As Exception
                        MsgBox("Error!")
                    End Try
                Else
                    MsgBox("Selecciono un tipo de archivo incompatible")
                End If
            Next
        Else
            MsgBox("No ha seleccionado ningún archivo")
        End If
    End Sub


End Class