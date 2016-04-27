
Imports System.Data.SqlClient

Public Class Conexion
    Private Shared _objConexion As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=AMBD;Integrated Security=True")
    Private Shared _comando As SqlCommand

    Public Shared Function ExecuteDataTable(ByVal _paramComando As SqlCommand) As DataTable
        Try
            Dim _dataTable As New DataTable
            Dim _dataAdapter As New SqlDataAdapter(_paramComando)
            _dataAdapter.Fill(_dataTable)
            Return _dataTable
        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Shared Function retornaComando(ByVal _paramComando As String) As SqlCommand
        Dim _objCommando As New SqlCommand(_paramComando, _objConexion)
        _objCommando.CommandType = CommandType.Text
        Return _objCommando
    End Function

End Class
