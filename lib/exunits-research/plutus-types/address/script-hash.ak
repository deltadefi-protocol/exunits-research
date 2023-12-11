use aiken/transaction/credential.{Address, ScriptCredential}
use exunits_research/mock_data/placeholder.{mock_script_address,
  mock_script_hex}

test xu_script_hash() {
  let get_script_hash =
    fn(address: Address) {
      let Address { payment_credential, .. } = address
      expect ScriptCredential(_pub_key_hash) = payment_credential
      True
    }
  let address = mock_script_address(None)
  get_script_hash(address)
}

test xu_script_hash_get_and_check() {
  let get_script_hash =
    fn(address: Address) {
      let Address { payment_credential, .. } = address
      expect ScriptCredential(pub_key_hash) = payment_credential
      pub_key_hash == mock_script_hex()
    }
  let address = mock_script_address(None)
  get_script_hash(address)
}
