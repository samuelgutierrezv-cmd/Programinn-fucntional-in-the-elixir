defmodule Palin do
    def main do
        ingresando_palabra("ingresa una palabra que quieres saber si es palindroma: ")
        |> comprobacion()
        |> enviar_mensaje()
    end

    defp ingresando_palabra(mensaje_de_entrada) do
        IO.gets(mensaje_de_entrada)
        |> String.trim()
    end

    defp comprobacion(palabra) do
        #Cmabia todos lo que uno le pase de una cadena por otra cosa que uno tambien le de
        mensaje = String.replace(palabra," ", "")
        #Combierte todo en minuscula la cadena que uno le entrege
        mensaje_final = String.downcase(mensaje)
        #Te da la cadena que tu le entreges pero en reversa o al reves
        String.reverse(mensaje_final) == mensaje_final
    end

    defp enviar_mensaje(confirmacion) do
      if confirmacion do
        IO.puts("La palabra es palindroma. 👍😊")
      else
        IO.puts("la palabra no es paliondroma. 😣")
      end
    end
end

Palin.main()
