defmodule ExcoverallsUmbrella.Mixfile do
  use Mix.Project

  def project do
    [apps_path: "apps",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     test_paths: test_paths,
     test_coverage: [tool: ExCoveralls]]
  end

  defp deps do
    [{:excoveralls, github: "parroty/excoveralls", branch: "experiment"}]
  end

  defp test_paths do
    "apps/*/test" |> Path.wildcard |> Enum.sort
  end
end

defmodule Mix.Tasks.TestAll do
  use Mix.Task
  @shortdoc "Runs all delorean tests at once"
  defdelegate run(args), to: Mix.Tasks.Test
end
