// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.12 <0.9.0;

import "hardhat/console.sol";

contract Biblioteca261784 {

    // Contrato desplegado en la Parte 1
    address public dirContrato = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    struct Libro {
        uint256 id;
        string titulo;
        string autor;
    }

    Libro[] public libros;

    constructor() {
        string memory idEstudiante = "261784";
        string memory nombreEstudiante = "Jeffry Anderson Romero Uriol";

        string memory mensaje = string.concat("Ejecutado por: ", idEstudiante, " - ", nombreEstudiante);
        
        console.log(mensaje);
    }

    // Agregar un elemento
    function agregarElemento(uint256 _id, string memory _titulo, string memory _autor) public {
        libros.push(Libro(_id, _titulo, _autor));
    }

    // Contar elementos
    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 261784 - Jeffry Anderson Romero Uriol");
        
        return libros.length;
    }
}