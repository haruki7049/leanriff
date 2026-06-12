structure FourCC where
  data : ByteArray
  inv : data.size = 4

inductive Chunk where
  | chunk (id : FourCC) (data : ByteArray)
  | riff_chunk (id : FourCC) (chunks : Array Chunk)
  | list_chunk (chunks : Array Chunk)

def Chunk.toByteArray (c : Chunk) : ByteArray :=
  sorry

def Chunk.fromByteArray (b : ByteArray) : Chunk :=
  sorry
