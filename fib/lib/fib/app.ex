defmodule Fib.App do

  require Logger

  def print() do
    FibCache.print()
  end

  def fib(n) do
    Logger.info("Calculating fib: #{n}")
    case FibCache.get(n) do
      nil ->
        Logger.info("Did not find #{n} in cache..")
        res = fib(n - 1) + fib(n - 2)
        FibCache.add(n, res)
        res
      cached_value ->
        Logger.info("Using cached value for #{n} which is #{cached_value}")
        cached_value
    end
  end

  # def fib(0), do: 0
  # def fib(1), do: 1
  # def fib(n), do: fib(n - 1) + fib(n - 2)
end

