pragma solidity ^0.5.0;

contract simplestorage {
   string public storedData;

   constructor(uint initVal, string nucontrato) public {
      storedData = initVal + nucontrato;
   }

   function set(string x) public {
      require(x < 100, "Value can not be over 100");
      storedData = x;
   }

   function get() public view returns (string) {
      return storedData;
   }

   function query() public view returns (string) {
      return storedData;
   }
}