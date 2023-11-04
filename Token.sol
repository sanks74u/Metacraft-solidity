// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public TokenName = "sanket";
    string public TokenAbbr = "mishra";
    uint public TotalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balance;

    // mint function
    function mint(address _addr, uint _value) public {
        total_supply += _value;
        balance[_addr] += _value;
    }

    // burn function
    function burn(address _addr, uint _value) public {
        if(balance[_addr] >= _value) {
            total_supply -= _value;
            balance[_addr] -= _value;
    }
    }
}