defmodule Ejercicio_1 do
  def main do
    nombre_usuario = ingresando_palabra("ingresa tu nombre: ")
    nombre_destinatario = ingresando_palabra("ingresa el nombre del destinatario: ")
    direccion_de_entrega = ingresando_palabra("ingresa la direccion de entrega: ")
    realizando_mensaje(nombre_destinatario, nombre_usuario, direccion_de_entrega)
  end

  def ingresando_palabra(mensaje_de_entrada) do
    IO.gets(mensaje_de_entrada)
    |> String.trim()
  end

  defp realizando_mensaje(noombre_destinatario, nombre_usuario, direccion) do
    IO.puts(
      "El paquete a nombre de #{nombre_usuario} quedó registrado para ser entregado a #{noombre_destinatario} en la direccion #{direccion}"
    )
  end
end

Ejercicio_1.main()

defmodule Ejercicio_2 do
  def main do
    nombre = ingresando_palabra("ingresa tu nombre: ")
    apellido = ingresando_palabra("ingresa tu apellido: ")
    creando_email(nombre, apellido)
  end

  defp ingresando_palabra(mensaje_de_entrada) do
    IO.gets(mensaje_de_entrada)
    |> String.trim()
  end

  defp preparando_texto(mensaje) do
    String.downcase(mensaje)
  end

  defp creando_email(nombre, apellido) do
    IO.puts("#{preparando_texto(nombre)}.#{preparando_texto(apellido)}@uniquindio.edu.co")
  end
end

Ejercicio_2.main()

defmodule Validando_nombres do
  def main do
    Ejercicio_1.ingresando_palabra("ingresa tu nombre: ")
    |> validando()
    |> generando_mensaje()
  end

  defp validando(nombre) do
    String.replace(nombre, " ", "")
    |> String.downcase()
    |> String.length() >= 5
  end

  defp generando_mensaje(valid) do
    if valid do
      IO.puts("nombre de usuario valido.")
    else
      IO.puts("nombre de usuario no valido.")
    end
  end
end

Validando_nombres.main()
