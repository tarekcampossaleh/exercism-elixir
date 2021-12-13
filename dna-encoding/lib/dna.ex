defmodule DNA do
  def encode_nucleotide(code_point) do
    case code_point do
      ?\s -> 0b0000
      ?A -> 0b0001
      ?C -> 0b0010
      ?G -> 0b0100
      ?T -> 0b1000
    end
  end

  def decode_nucleotide(encoded_code) do
    case encoded_code do
      0b0000 -> ?\s
      0b0001 -> ?A
      0b0010 -> ?C
      0b0100 -> ?G
      0b1000 -> ?T
    end
  end

  def encode([]), do: <<>>
  def encode([head|tail]), do: <<encode_nucleotide(head)::4, encode(tail)::bitstring>>

  def decode(<<>>), do: []
  def decode(<<head::4,tail::bitstring>>), do: [decode_nucleotide(head) | decode(tail)]
end
