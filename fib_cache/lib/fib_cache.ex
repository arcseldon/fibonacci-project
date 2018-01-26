defmodule FibCache do
  alias FibCache.Cache

  defdelegate start(), to: Cache, as: :start_link
  defdelegate add(k,v), to: Cache
  defdelegate get(k), to: Cache
  defdelegate print(), to: Cache
end
