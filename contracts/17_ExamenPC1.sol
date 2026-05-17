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
        bool estado; 
    }

    // Reemplazo de array por mapping
    mapping(uint256 => Libro) public libros;
    
    uint256 public cantidad;
    
    // Arreglo para guardar IDs y mapping
    uint256[] public listaIds;

    // Modificador para centralizar el mensaje
    modifier mensajeEjecucion() {
        console.log("Ejecutado por: 261784 - Jeffry Anderson Romero Uriol");
        _;
    }

    constructor() mensajeEjecucion {
    }

    function agregarElemento(uint256 _id, string memory _titulo, string memory _autor, bool _estado) public mensajeEjecucion {
        
        // Validación usando mapping
        require(bytes(libros[_id].titulo).length == 0, "Error: ID repetido");

        // Validación de atributo de Parte 1
        require(bytes(_titulo).length > 0, "Error: Titulo vacio");

        // Guardado en mapping
        libros[_id] = Libro(_id, _titulo, _autor, _estado);
        listaIds.push(_id);
        
        cantidad++;
    }

    function contarElementos() public view mensajeEjecucion returns (uint256) {
        return cantidad;
    }

    // Modificación para trabajar con el ID en el mapping
    function inactivarElemento(uint256 _id) public mensajeEjecucion {
        libros[_id].estado = false;
    }

    function pintarElementosActivos() public view mensajeEjecucion {
        for (uint i = 0; i < cantidad; i++) {
            uint256 idActual = listaIds[i];
            if (libros[idActual].estado == true) {
                console.log("Libro activo:", libros[idActual].id, libros[idActual].titulo);
            }
        }
    }
}