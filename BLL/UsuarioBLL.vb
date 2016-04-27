Public Class UsuarioBLL

    Public Function login(ByVal paramNombreUsuario As String, ByVal paramPassword As String)
        Dim _Usuario As New Entidades.Usuario
        _Usuario.NombreUsuario = paramNombreUsuario
        _Usuario.Password = EncriptarBLL.Encriptar(paramPassword)
        Try
            If Me.chequearUsuario(_Usuario.NombreUsuario) = False Then
                Throw New UsuarioInexistenteException
            Else
                If Me.chequearContraseña(_Usuario.NombreUsuario, _Usuario.Password) = False Then
                    Throw New PasswordIncorrectoException
                Else
                    _Usuario = (New Mapper.UsuarioMPP).consultarUsuario(_Usuario.NombreUsuario)
                    Return _Usuario
                End If
            End If
        Catch ex As UsuarioInexistenteException
            Throw New BLL.UsuarioInexistenteException
        Catch ex As PasswordIncorrectoException
            Throw New BLL.PasswordIncorrectoException
        Catch ex As Exception
            Throw New BLL.excepcionGenerica
        End Try
    End Function


    Public Function chequearUsuario(paramNombreUsuario As String) As Boolean
        Try
            Return (New Mapper.UsuarioMPP).chequearUsuario(paramNombreUsuario)
        Catch ex As Exception
            Throw New BLL.excepcionGenerica
        End Try
    End Function

    Public Function chequearContraseña(paramNombreUsuario As String, paramContraseña As String) As Boolean
        Try
            If (New Mapper.UsuarioMPP).chequearContraseña(paramNombreUsuario, paramContraseña) = True Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            Throw New BLL.excepcionGenerica
        End Try
    End Function
End Class
