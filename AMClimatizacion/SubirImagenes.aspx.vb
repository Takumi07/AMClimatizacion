Public Class SubirImagenes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Session("Usuario") Is Nothing Then
        'Response.Redirect("index.aspx")
        'End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Validaciones.validarSubmit(Me, Me.Error, Me.lbl_TituloError)

            Dim ArchivoCorrecto As Boolean
            If FileUp.HasFile Then
                For Each MiArchivo In FileUp.PostedFiles
                    Dim FileExtension As String
                    'Dim InfoFile As String
                    'InfoFile = String.Format("{0} es de tipo {1} y tiene un tamaño de {2} KB.", MiArchivo.FileName, MiArchivo.ContentType, MiArchivo.ContentLength / 1024)
                    FileExtension = System.IO.Path.GetExtension(MiArchivo.FileName).ToLower

                    Dim ExtensionesPermitidas As String() = {".jpg", ".jpeg", ".png", ".gif"}
                    For i As Integer = 0 To ExtensionesPermitidas.Length - 1
                        If FileExtension = ExtensionesPermitidas(i) Then
                            ArchivoCorrecto = True
                            'Salgo del Ciclo porque la extensión ya es correcta
                            Exit For
                        End If
                    Next

                    If ArchivoCorrecto = True Then
                        Try
                            Dim pathCarpetaDestino = System.IO.Path.Combine(Server.MapPath("~/"), "Galeria")
                            'aca hago que cree adentro de Galería la carpeta del trabajo
                            If RadioButton1.Checked = True Then
                                'Nuevo Trabajo 
                                pathCarpetaDestino = System.IO.Path.Combine(pathCarpetaDestino, txt_Trabajo.Text)
                                Dim carpetaDestino = New System.IO.DirectoryInfo(pathCarpetaDestino)
                                If Not (carpetaDestino.Exists) Then
                                    carpetaDestino.Create()
                                End If
                            Else
                                'Trabajo existente
                                pathCarpetaDestino = System.IO.Path.Combine(pathCarpetaDestino, ddl_trabajos.Text)
                            End If

                            Dim nombreArchivo = System.IO.Path.GetFileName(MiArchivo.FileName)
                            Dim pathArchivoDestino = System.IO.Path.Combine(pathCarpetaDestino, nombreArchivo)

                            MiArchivo.SaveAs(pathArchivoDestino)

                            'Acá enviar a una página linda
                            MsgBox("Archivo Subido!")
                        Catch ex As Exception
                            'Acá hacer una exepción generica para estos casos.
                            Throw ex
                        End Try
                    Else
                        Throw New BLL.ArchivosIncompatibleException
                    End If
                Next
            Else
                Throw New BLL.ArchivosIncompletosException
            End If


        Catch ex As BLL.CamposincompletosException
            Me.error.Visible = True
            Me.lbl_TituloError.Text = ex.Mensaje
        Catch ex As BLL.ArchivosIncompletosException
            Me.error.Visible = True
            Me.lbl_TituloError.Text = ex.Mensaje
        Catch ex As BLL.ArchivosIncompatibleException
            Me.error.Visible = True
            Me.lbl_TituloError.Text = ex.Mensaje
        Catch ex As Exception
            Me.error.Visible = True
            Me.lbl_TituloError.Text = "Se produjo un error. Intente nuevamente."
        End Try
    End Sub


    Private Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton1.CheckedChanged
        Me.RadioButton1.Checked = True
        txt_Trabajo.Visible = True
        ddl_trabajos.Visible = False
        'Validar Textbox
        requerido_txt_trabajo.Enabled = True
    End Sub


    Private Sub RadioButton2_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton2.CheckedChanged
        Me.RadioButton2.Checked = True
        txt_Trabajo.Visible = False
        ddl_trabajos.Visible = True
        Me.LlenarCombo()
        'No Validar Textbox
        requerido_txt_trabajo.Enabled = False
    End Sub

    Private Sub LlenarCombo()
        Dim InformacionDirectorio As System.IO.DirectoryInfo
        InformacionDirectorio = New System.IO.DirectoryInfo(Server.MapPath("~/Galeria/"))
        Dim Informacion() As System.IO.DirectoryInfo = InformacionDirectorio.GetDirectories()
        ddl_trabajos.DataSource = Informacion
        ddl_trabajos.DataValueField = "Name"
        ddl_trabajos.DataBind()
    End Sub
End Class