pragma solidity ^0.5.0;

contract simplestorage {
   string public storedData;

   event DataStored (
      string data
   );

   constructor(string memory nucontrato, string memory contrato, string memory clientes) public {
      storedData = nucontrato + contrato + clientes;
   }

   function set(string memory x) public returns (string memory value) {
//      require(x < 100, "Value can not be over 100");
      storedData = x;

      emit DataStored(x);

      return storedData;
   }

   function get() public view returns (bytes32 retVal) {
      return storedData;
   }

   function query() public view returns (string memory retVal) {
      return storedData;
   }
}