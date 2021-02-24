defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sumFromFile/1" do
    test "when there is a file with the given name, return the sum of numbers" do
      response = Numbers.sumFromFile("numbers")
      expectedResponse = {:ok ,%{result: 37}}
      assert response == expectedResponse
    end
    test "when there no file with the given name, returns an error" do
      response = Numbers.sumFromFile("banana")
      expectedResponse = {:error, %{message: "invalid file!"}}
      assert response == expectedResponse
    end
  end
end
