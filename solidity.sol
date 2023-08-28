// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;



contract MyToken {

    // public variables here
    string public TokenName ="VIJAY";
    string public TokenAbbreviation="VIJ";
    uint public TotalSupply=7500;
    // mapping variable here
    mapping(address => uint)public balance;
    // mint function
    function mint(address mintaddress, uint  mintvalue)public {
      TotalSupply += mintvalue;
      balance[mintaddress] += mintvalue;
   }
    // burn function
   function burn(address burnaddress, uint burnvalue)public {
      if(balance[burnaddress]>= burnvalue){
        TotalSupply -= burnvalue;
        balance[burnaddress] -= burnvalue;
      }
     }
  }