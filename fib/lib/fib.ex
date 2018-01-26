defmodule Fib do
  alias Fib.App

  defdelegate print, to: App
  defdelegate fib(n), to: App
end
