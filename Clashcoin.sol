pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Clashcoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Clashcoin(address _owner)  UpgradeableToken(_owner) {
    name = "Clashcoin";
    symbol = "coc";
    totalSupply = 100000000000000000000;
    decimals = 10;

    balances[_owner] = totalSupply;
  }
}