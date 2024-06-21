pragma solidity 0.8.18;
contract MyToken {

    // Public variables to store the details about the coin
    string public tokken_name = "META_Mytokken";
    string public tokken_abbrv = "MTA";
    uint public totalSupply= 0;

    // Mapping to store balances of addresses
    mapping(address => uint ) public balances;

    // Mint function to increase total supply and balance of sender address
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to decrease total supply and balance of sender address
    function burn(address _address, uint _value) public {
       if (balances[_address] >= _value) {
        totalSupply -= _value;
        balances[_address] -= _value;
       }
}
}
