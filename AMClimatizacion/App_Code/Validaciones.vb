Imports Microsoft.VisualBasic
Public Class Validaciones
    Public Shared Sub validarSubmit(ByVal paramPage As Page, ByRef _txtError As HtmlGenericControl, ByRef _labelError As Label)
        paramPage.Validate()
        If Not paramPage.IsValid Then
            Throw New BLL.CamposincompletosException
        Else
            _txtError.Visible = False
            _labelError.Text = ""
        End If
    End Sub
End Class
