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