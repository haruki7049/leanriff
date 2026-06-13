abbrev Data := { b : ByteArray // b.size = 4 }

def Data.mk (b : ByteArray) (h : b.size = 4 := by decide) : Data :=
  Subtype.mk b h

#check Data

structure FourCC where
  data : Data

#check FourCC
#check FourCC.rec
#check FourCC.mk
#check FourCC.data
#check Data
#check Data.mk
#eval Data.mk (ByteArray.mk #[0, 0, 0, 0])
