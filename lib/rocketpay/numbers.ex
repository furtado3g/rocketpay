defmodule Rocketpay.Numbers do
  def sumFromFile(filename)do
    "#{filename}.csv"
    |>File.read()
    |>handleFile()
  end

  defp handleFile({:ok, file})do
    file =
      String.split(file,",")
      |>Enum.map(fn number  -> String.to_integer(number) end)
      |>Enum.sum()
    {:ok, %{result: file}}
  end
  defp handleFile({:error, _reason}), do: {:error, "invalid file!"}
end
