abbrev Data := { b : ByteArray // b.size = 4 }

def Data.mk (b : ByteArray) (h : b.size = 4 := by decide) : Data :=
  Subtype.mk b h

#check Data

structure FourCC where
  data : Data

def FourCC.fromByteArray (b : ByteArray) (h : b.size = 4 := by decide) : FourCC :=
  FourCC.mk (Subtype.mk b h)

#check FourCC
#check FourCC.rec
#check FourCC.mk
#check FourCC.fromByteArray
#check FourCC.data
#check Data
#check Data.mk
#check Data.mk (ByteArray.mk #[0, 0, 0, 0])
#check FourCC.fromByteArray (ByteArray.mk #[0, 0, 0, 0])
