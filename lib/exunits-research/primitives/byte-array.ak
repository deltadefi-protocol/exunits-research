test xu_bytearray_1() {
  let one_byte: ByteArray = #[0]
  one_byte == one_byte
}

test xu_byte_array_32() {
  let bytestring: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  bytestring == bytestring
}

test xu_byte1_incorrect() {
  let bytestring: ByteArray = #"52"
  let bytestring2: ByteArray = #"52"
  bytestring == bytestring2
}

test xu_byte32_incorrect_at_head() {
  let bytestring: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  let bytestring2: ByteArray =
    #"42e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  bytestring != bytestring2
}

test xu_byte32_incorrect_at_tail() {
  let bytestring: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  let bytestring2: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8893"
  bytestring != bytestring2
}

test xu_byte32_incorrect_at_middle() {
  let bytestring: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e4f42eedeccd6795a7ef4f158bd8893"
  let bytestring2: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8893"
  bytestring != bytestring2
}
