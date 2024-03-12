pragma solidity ^0.8.1;

contract ContratoStorage {

    struct Contrato {
        string nucontrato;
        bytes32 data;
    }

    mapping(string => Contrato) public contratos;

    function post(string memory nucontrato, bytes32 memory data) public {
        contratos[nucontrato] = Contrato(nucontrato, data);
    }

    function get(string memory nucontrato) public view returns (bytes32 memory data) {
        return (contratos[nucontrato].data);
    }
}