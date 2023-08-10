defmodule CucumberTestReleaseAutomationTest do
  use ExUnit.Case
  doctest CucumberTestReleaseAutomation

  test "greets the world" do
    assert CucumberTestReleaseAutomation.hello() == :world
  end
end
