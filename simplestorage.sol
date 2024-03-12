pragma solidity ^0.8.2;

contract ContratoStorage {
    
    struct Contrato {
        string nucontrato;
        string data;
    }

    mapping(string => Contrato) public contratos;

    constructor(string memory nucontrato, string memory data) {
        contratos[nucontrato] = Contrato(nucontrato, data);
    }

    function post(string memory nucontrato, string memory data) public {
        contratos[nucontrato] = Contrato(nucontrato, data);
    }

    function get(string memory nucontrato) public view returns (string memory data) {
        return (contratos[nucontrato].data);
    }
}