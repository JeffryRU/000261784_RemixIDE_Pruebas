// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Biblioteca261784 {

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
}