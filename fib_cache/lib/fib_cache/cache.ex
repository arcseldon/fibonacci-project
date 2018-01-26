defmodule FibCache.Cache do

  require Logger

  @me __MODULE__

  def start_link() do
    Agent.start_link(fn -> %{0 => 0, 1 => 1} end, name: @me)
  end

  def add(k, v) do
    Logger.info("Adding key: #{k} and value #{v}")
    Agent.update(@me, &Map.put(&1, k, v))
  end

  def get(k) do
    Agent.get(@me, &Map.get(&1, k))
  end

  def print() do
    Agent.get(@me, fn cache ->
      Logger.info("FibCache: #{inspect(cache)}")
      cache
    end)
  end

end
