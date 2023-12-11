test xu_byte_1() {
  let deser =
    fn(_b) { True }
  deser(#[0])
}

test xu_byte_24() {
  let deser =
    fn(_b) { True }
  deser(#"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892")
}

test xu_byte_1_equal() {
  let one_byte1: ByteArray = #[0]
  let one_byte2: ByteArray = #[0]
  one_byte1 == one_byte2
}

test xu_byte_24_equal() {
  let bytestring1: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  let bytestring2: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  bytestring1 == bytestring2
}

test xu_byte_1_incorrect() {
  let bytestring1: ByteArray = #"00"
  let bytestring2: ByteArray = #"01"
  bytestring1 != bytestring2
}

test xu_byte_24_incorrect_at_head() {
  let bytestring1: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  let bytestring2: ByteArray =
    #"42e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  bytestring1 != bytestring2
}

test xu_byte_24_incorrect_at_tail() {
  let bytestring1: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  let bytestring2: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8893"
  bytestring1 != bytestring2
}

test xu_byte_24_incorrect_at_middle() {
  let bytestring1: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e4f42eedeccd6795a7ef4f158bd8893"
  let bytestring2: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8893"
  bytestring1 != bytestring2
}

test xu_byte_3_bytes_diff_in_length_incorrect_long() {
  let bytestring1: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  let bytestring3: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158"
  bytestring1 != bytestring3
}

test xu_byte_4_bytes_diff_in_length_incorrect_long() {
  let bytestring1: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892"
  let bytestring3: ByteArray =
    #"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f1"
  bytestring1 != bytestring3
}

test xu_byte_7_bytes_diff_in_length_incorrect_short() {
  let bytestring1: ByteArray = #"52e322a5dd87fe97"
  let bytestring2: ByteArray = #"52"
  bytestring1 != bytestring2
}

test xu_byte_8_bytes_diff_in_length_incorrect_short() {
  let bytestring1: ByteArray = #"52e322a5dd87fe97aa"
  let bytestring2: ByteArray = #"52"
  bytestring1 != bytestring2
}
