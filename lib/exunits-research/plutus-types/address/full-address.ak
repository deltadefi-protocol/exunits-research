use aiken/transaction/credential.{Address}
use exunits_research/mock_data/placeholder.{
  mock_pub_key_address, mock_script_address, mock_stake_cred,
}

test xu_full_address_pub_key() {
  let function =
    fn(_address: Address) { True }
  let stake_cred =
    mock_stake_cred(#"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892")
  let address = mock_pub_key_address(Some(stake_cred))
  function(address)
}

test xu_full_address_script() {
  let function =
    fn(_address: Address) { True }
  let stake_cred =
    mock_stake_cred(#"52e322a5dd87fe977c5ee5b91e3f42eedeccd6795a7ef4f158bd8892")
  let address = mock_script_address(Some(stake_cred))
  function(address)
}
