use exunits_research/mock_data/placeholder.{mock_pub_key_address}

test xu_address_enterprize_address_comparison() {
  let address1 = mock_pub_key_address(None)
  let address2 = mock_pub_key_address(None)
  address1 == address2
}
