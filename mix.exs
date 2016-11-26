defmodule Exmdb.Mixfile do
  use Mix.Project

  def project do
    [app: :exmdb,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     dialyzer: [plt_add_deps: true],
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:elmdb, "~> 0.4"}]
  end
end
