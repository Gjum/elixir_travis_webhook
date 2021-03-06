defmodule TravisWebhook.Mixfile do
  use Mix.Project

  def project do
    [app: :travis_webhook,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger],
     mod: {TravisWebhook, []}]
  end

  defp deps do
     [{:poison, "~> 2.0.0"}]
  end
end
