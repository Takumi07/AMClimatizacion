Imports System.Data.SqlClient

Public Class UsuarioMPP
    Public Function chequearUsuario(ByVal paramNombreUsuario As String) As Boolean
        Try
            Dim MiComando As SqlCommand = Conexion.retornaComando("Select * from Usuario where NombreUsuario=@NombreUsuario and BL=@BL")
            With MiComando.Parameters
                .Add(New SqlParameter("@NombreUsuario", paramNombreUsuario))
                .Add(New SqlParameter("@BL", False))
            End With
            Dim _dt As DataTable = Conexion.ExecuteDataTable(MiComando)
            If _dt.Rows.Count > 0 Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Function chequearContraseña(ByVal paramNombreUsuario As String, ByVal paramContraseña As String) As Boolean
        Try
            Dim MiComando As SqlCommand = Conexion.retornaComando("Select * from Usuario where NombreUsuario=@NombreUsuario and Password=@Password")
            With MiComando.Parameters
                .Add(New SqlParameter("@NombreUsuario", paramNombreUsuario))
                .Add(New SqlParameter("@Password", paramContraseña))
            End With
            Dim _dt As DataTable = Conexion.ExecuteDataTable(MiComando)
            If _dt.Rows.Count > 0 Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Function consultarUsuario(ByVal paramNombreUsuario As String) As Entidades.Usuario
        Try
            Dim MiComando As SqlCommand = Conexion.retornaComando("Select * from Usuario where NombreUsuario=@NombreUsuario and BL=@BL")
            With MiComando.Parameters
                .Add(New SqlParameter("@NombreUsuario", paramNombreUsuario))
                .Add(New SqlParameter("@BL", False))
            End With
            Dim _dt As DataTable = Conexion.ExecuteDataTable(MiComando)
            If _dt.Rows.Count = 1 Then
                Dim _usuario As New Entidades.Usuario
                Me.formatearUsuario(_dt.Rows(0), _usuario)
                Return _usuario
            Else
                Return Nothing
            End If
        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Sub formatearUsuario(paramDataRow As DataRow, paramUsuario As Entidades.Usuario)
        Try
            paramUsuario.ID = paramDataRow.Item("ID_Usuario")
            paramUsuario.NombreUsuario = paramDataRow.Item("NombreUsuario")
            paramUsuario.Password = paramDataRow.Item("Password")
        Catch ex As Exception
            Throw ex
        End Try
    End Sub

End Class
