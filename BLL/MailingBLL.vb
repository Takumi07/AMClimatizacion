Public Class MailingBLL
    Public Shared Sub enviarMailContacto(paramCorreo As String, paramNombreApellido As String, paramTelefono As String, paramMensaje As String)
        Try
            Dim Correo As New System.Net.Mail.MailMessage()
            Correo.IsBodyHtml = True
            'De quien viene
            Correo.From = New System.Net.Mail.MailAddress("contacto@amclimatizacion.com.ar", "Contacto AM Climatización")
            'A quien va
            Correo.To.Add(New System.Net.Mail.MailAddress("am.climatizacion@ciudad.com.ar"))
            Correo.Subject = "AM Climatización - Solicitud de Contacto"
            ' Correo.Body = "<html><head> </head><body><img src=""http://i64.tinypic.com/wmkspg.jpg"" width=""380px"" height=""100""/><br/><br/><b> " &
            '    "Solicitud de Contacto</b><br/><hr " &
            '    " style=""border-style: 0; border-color: 0; border-width: 0px; padding: 0px; margin: 0px; height: 7px; background-color: #3593D9;"" /> " &
            '    " <br /><span><b><u>Nombre y Apellido:</u> </b> " & paramNombreApellido & " <br/> <b><u>Correo:</u> </b> " & paramCorreo & " <br/>  <b><u>Teléfono:</u> </b> " & paramTelefono & " <br/>  <b><u>Mensaje:</u> </b> " & paramMensaje & "</span><br/><hr " &
            '      "style=""border-style: 0; border-color: 0; border-width: 0px; padding: 0px; margin: 0px; height: 7px; background-color: #3593D9;"" /> " &
            '       " </body></html> "


            Correo.Body = "<html><head> </head><body>" &
            "<img src=""http://i64.tinypic.com/wmkspg.jpg"" alt="" width=""327"" height=""64"" /> " &
            "<hr style=""height 3px; background-color: #3593d9;"" /> " &
            "<p style=""text-align center;""><span style=""font-size: 16px; font-weight: bold; color: #3593d9;"">Solicitud de Contacto</span> </p>" &
            "<hr style=""height 3px; background-color: #3593d9;"" />" &
            "<p><br /> <span style=""font-size 12px;""><strong><span style=""text-decoration: underline;"">Nombre y Apellido:</span> </strong> " & paramNombreApellido & " <br /> <br /> <strong><span style=""text-decoration: underline;"">Correo:</span> </strong> " & paramCorreo & " <br /> <br /> <strong><span style=""text-decoration: underline;"">Tel&eacute;fono:</span> </strong> " & paramTelefono & " <br /> <br /> <strong><span style=""text-decoration: underline;"">Mensaje:</span> </strong> " & paramMensaje & "</span> <br /> </p>" &
            "<hr style=""height 3px; background-color: #3593d9;"" />" &
            "</body></html> "
            Correo.Priority = System.Net.Mail.MailPriority.Normal
            Dim smtp As New System.Net.Mail.SmtpClient
            'Modificado para que envie desde la web
            smtp.Host = "localhost"
            'smtp.Port = 587
            'smtp.Credentials = New System.Net.NetworkCredential("contacto@amclimatizacion.com.ar", BLL.EncriptarBLL.Desencriptar("796F8D41776AAEDA1E2E2A7384668E54"))
            'smtp.EnableSsl = True
            smtp.Send(Correo)
        Catch ex As Exception
            Throw ex
        End Try
    End Sub
End Class

