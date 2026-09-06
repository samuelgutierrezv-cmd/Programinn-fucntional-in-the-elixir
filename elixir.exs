defmodule Carrera do
  def maindo do
    IO.puts("Hola mi gente como estan el dia de hoy")
    metiendo_parametros("hola mis muchachos como estan")
    pidiendo_datos_consola("ingresa el nombre de un familiar para mandarle un saludo: ")
    |> saludando_modificado()
  end

  defp metiendo_parametros(mensaje) do
    IO.puts(mensaje)
  end

  # la p vuleve la funcion privada

  defp pidiendo_datos_consola(mensaje_del_dato) do
    nombre = IO.gets(mensaje_del_dato)
    # este siempre tiene el salto de linea "\n"
    String.trim(nombre)
    # y este lo quita todo los saltos de linea y los espacios
  end

  defp saludando_modificado(nombre \\ "invitado") do
    IO.puts("Hola como estas #{nombre} " <> "un gusto conocerlos")
  end
end

# no olvidarse de las letras en minuscula y mayuscula y demas para
# no halla problema en los parciales
Carrera.maindo()
