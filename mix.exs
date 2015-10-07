defmodule ExcoverallsUmbrella.Mixfile do
  use Mix.Project

  def project do
    [apps_path: "apps",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     test_coverage: [tool: ExCoveralls]]
  end

  defp deps do
    [{:excoveralls, git: "https://github.com/parroty/excoveralls.git", branch: "umbrella"}]
  end
end
