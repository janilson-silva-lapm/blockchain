pragma solidity ^0.5.0;

contract simplestorage {
   string public storedData;

   event DataStored (
      string data
   );

   constructor(uint initVal, string memory nucontrato) public {
      storedData = initVal + nucontrato;
   }

   function set(string memory x) public returns (string value) {
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