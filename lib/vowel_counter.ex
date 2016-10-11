defmodule VowelCounter do
    def main(args) do 
        args
            |> parse_args
            |> count_vowels
            |> IO.puts
    end

    defp parse_args(args) do
        {_, [str], _} = OptionParser.parse(args)
        str
    end

    defp count_vowels(str) do
        len = length(Regex.scan(~r/[aeiou]/i, str))
        "There are #{len} vowels"
    end
end
