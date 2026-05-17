// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Biblioteca261784 {
    // Contrato desplegado en la Parte 1
    address public dirContrato = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    struct Libro {
        uint256 id;
        string titulo;
        string autor;
        bool estado; // Disponible o no
    }

    Libro[] public libros;

    // Modificador para centralizar el mensaje
    modifier mensajeEjecucion() {
        console.log("Ejecutado por: 261784 - Jeffry Anderson Romero Uriol");
        _;
    }

    // Modificador
    constructor() mensajeEjecucion {}

    function agregarElemento(
        uint256 _id,
        string memory _titulo,
        string memory _autor,
        bool _estado
    ) public mensajeEjecucion {
        // Validación de ID repetido
        for (uint i = 0; i < libros.length; i++) {
            require(libros[i].id != _id, "Error: ID repetido");
        }

        // Validación de atributo de Parte 1 (titulo no vacio)
        require(bytes(_titulo).length > 0, "Error: Titulo vacio");

        libros.push(Libro(_id, _titulo, _autor, _estado));
    }

    // Contar elementos
    function contarElementos() public view mensajeEjecucion returns (uint256) {
        return libros.length;
    }
}
