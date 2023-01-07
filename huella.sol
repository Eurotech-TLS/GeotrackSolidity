// SPDX-License-Identifier: MIT
/// @notice Almacena las posiciones GPS y demás datos de la huella del transporte identificado por transportId
/// @dev Verifica el propietario.
/// @return positions el array con las posiciones almacenadas

pragma solidity ^0.8.6;
 
contract Huella{
   

    address public owner;
    uint256 public transportId = 0;
    string[] public positions;

    constructor(address _owner, uint256 _transportId){
        owner = _owner;
        transportId = _transportId;
    }

    function setHuella(string memory _newPos) public{
        require(msg.sender == owner, "Forbidden");
        positions.push(_newPos);
    }

    function getHuella() public view returns(string[] memory){
        return positions;
    }

}
