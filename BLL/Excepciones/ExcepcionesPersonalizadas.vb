Public MustInherit Class ExcepcionesPersonalizadas
    Inherits Exception
    Public MustOverride Function Mensaje() As String
End Class

Public Class CamposincompletosException
    Inherits ExcepcionesPersonalizadas
    Public Overrides Function Mensaje() As String
        Return "Los campos del formulario se encuentran incompletos o en un formato incorrecto. Intente nuevamente."
    End Function
End Class

Public Class ArchivosIncompletosException
    Inherits ExcepcionesPersonalizadas
    Public Overrides Function Mensaje() As String
        Return "No seleccionó ningún archivo. Por favor, seleccione uno y vuelva a intentarlo."
    End Function
End Class


Public Class ArchivosIncompatibleException
    Inherits ExcepcionesPersonalizadas
    Public Overrides Function Mensaje() As String
        Return "Seleccionó un tipo de archivo incompatible. Por favor seleccione archivos con extención: .jpg, .jpeg, .png, .gif"
    End Function
End Class


Public Class UsuarioInexistenteException
    Inherits ExcepcionesPersonalizadas
    Public Overrides Function Mensaje() As String
            Return "El Usuario no se encuentra registrado. Intente nuevamente."
    End Function

End Class

Public Class PasswordIncorrectoException
    Inherits ExcepcionesPersonalizadas

    Public Overrides Function Mensaje() As String
        Return "La contraseña ingresada es incorrecta. Intente nuevamente."
    End Function

End Class



Public Class excepcionGenerica
    Inherits ExcepcionesPersonalizadas

    Public Overrides Function Mensaje() As String
        Return "Se ha producido un error al realizar la acción."
    End Function

End Class