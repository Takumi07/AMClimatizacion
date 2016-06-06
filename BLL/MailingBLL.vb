Public Class MailingBLL
    Public Shared Sub enviarMailContacto(paramCorreo As String, paramNombreApellido As String, paramTelefono As String, paramMensaje As String)
        Try
            Dim Correo As New System.Net.Mail.MailMessage()
            Correo.IsBodyHtml = True
            'De quien viene
            Correo.From = New System.Net.Mail.MailAddress("ALEXIS.TAKUMI@GMAIL.COM", "Takumi")
            'A quien va
            Correo.To.Add(New System.Net.Mail.MailAddress("ALEXIS.TAKUMI@GMAIL.COM"))
            Correo.Subject = "AM Climatización - Solicitud de Contacto"
            Correo.Body = "<html><head> </head><body><img src=""http://i64.tinypic.com/wmkspg.jpg"" width=""380px"" height=""100""/><br/><br/><b> " &
            "Solicitud de Contacto</b><br/><hr " &
            " style=""border-style: 0; border-color: 0; border-width: 0px; padding: 0px; margin: 0px; height: 7px; background-color: #3593D9;"" /> " &
            " <br /><span><b><u>Nombre y Apellido: </u></b> " & paramNombreApellido & " <br/> <b><u>Correo: </u></b> " & paramCorreo & " <br/>  <b><u>Teléfono: </u></b> " & paramTelefono & " <br/>  <b><u>Mensaje: </u></b> " & paramMensaje & "</span><hr " &
            "style=""border-style: 0; border-color: 0; border-width: 0px; padding: 0px; margin: 0px; height: 7px; background-color: #3593D9;"" /> " &
            " </body></html> "
            Correo.Priority = System.Net.Mail.MailPriority.Normal
            Dim smtp As New System.Net.Mail.SmtpClient
            smtp.Host = "smtp.gmail.com"
            smtp.Port = 587
            smtp.Credentials = New System.Net.NetworkCredential("ALEXIS.TAKUMI@GMAIL.COM", BLL.EncriptarBLL.Desencriptar("30EEB8480255E161AFEC304209B26DFE"))
            smtp.EnableSsl = True
            smtp.Send(Correo)
        Catch ex As Exception
            Throw ex
        End Try
    End Sub
End Class
