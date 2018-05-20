pragma solidity ^0.4.17;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "zeppelin-solidity/contracts/ownership/Ownable.sol";

contract Dpc is StandardToken, Ownable {
  string public name = "Dipitto"; 
  string public symbol = "DPC";
  uint public decimals = 8;
  uint public INITIAL_SUPPLY = 51000000 * (10 ** decimals);

  function Dpc() public {
    totalSupply_ = INITIAL_SUPPLY;
    owner = msg.sender;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
