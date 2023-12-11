use aiken/transaction/credential.{Address}
use exunits_research/mock_data/placeholder.{
  mock_pub_key_address, mock_pub_key_address_2, mock_script_address,
}

test xu_payment_address_pub_key() {
  let function =
    fn(_address: Address) { True }
  let address = mock_pub_key_address(None)
  function(address)
}

test xu_payment_address_script() {
  let function =
    fn(_address: Address) { True }
  let address = mock_script_address(None)
  function(address)
}

test xu_payment_address_pub_key_equal() {
  let address1 = mock_pub_key_address(None)
  let address2 = mock_pub_key_address(None)
  address1 == address2
}

test xu_payment_address_pub_key_unequal() {
  let address1 = mock_pub_key_address(None)
  let address2 = mock_pub_key_address_2(None)
  address1 != address2
}

test xu_payment_address_pass_in_pub_key_equal() {
  let compare =
    fn(address1: Address, address2: Address) { address1 == address2 }
  let address = mock_pub_key_address(None)
  let address2 = mock_pub_key_address(None)
  compare(address, address2)
}
