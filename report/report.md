# All Tests

## Simple True or False assertion

- [mem: 200, cpu: 23100]

## ByteArray

- All `ByteArray` correct checking has [mem: 601]
- Steps slightly different with length, where

  - 1 Byte: [cpu: 331935]
  - 32 Byte: [cpu: 332121]

- Incorrect `ByteArray checking` would take (regardless of length)
  - [mem: 1302, cpu: 573677] at length of 32
