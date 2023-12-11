# Primitives Test Report

## ByteArray

### Run the test result

```sh
aiken check -m xu_byte
```

### Findings

1. Passing `ByteArray` in a function does not cost any mem and step

   - Same as True or False comparison: [mem: 200, cpu: 23100]
   - Tests
     - [x] `xu_byte_1`
     - [x] `xu_byte_24`

2. All `ByteArray` correct checking has [mem: 601], and Steps slightly different with length, where

   - 1 Byte: [cpu: 331935]
   - 32 Byte: [cpu: 332121]
   - Tests
     - [x] `xu_byte_1_equal`
     - [x] `xu_byte_24_equal`

3. Incorrect `ByteArray checking` would take somewhat similar ExUnits regardless of length. Just up to some 4 bytes difference in length would cause a jump in around ~30000 steps.

   - Range of ExUnits: [mem: 1302, cpu: 573491 - 601656]
   - Tests
     - [x] xu_byte_1_incorrect
     - [x] xu_byte_24_incorrect_at_head
     - [x] xu_byte_24_incorrect_at_tail
     - [x] xu_byte_24_incorrect_at_middle
     - [x] xu_byte_3_bytes_diff_in_length_incorrect_long
     - [x] xu_byte_4_bytes_diff_in_length_incorrect_long
     - [x] xu_byte_7_bytes_diff_in_length_incorrect_short
     - [x] xu_byte_8_bytes_diff_in_length_incorrect_short
