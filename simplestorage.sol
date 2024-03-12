pragma solidity ^0.5.0;

contract simplestorage {
   string public storedData;

   event DataStored (
      uint data
   );

   constructor(string nucontrato, string contrato, string clientes) public {
      storedData = nucontrato + contrato + clientes;
   }

   function set(uint x) public returns (uint value) {
      require(x < 100, "Value can not be over 100");
      storedData = x;

      emit DataStored(x);

      return storedData;
   }

   function get() public view returns (string retVal) {
      return storedData;
   }

   function query() public view returns (string retVal) {
      return storedData;
   }
}