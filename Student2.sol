//SPDX-License-Identifier: MIT 
pragma solidity 0.8.7;

struct School{
        uint  Roll_no;
        string student_name;
    }

contract Student{
    School  []Data ;
     
     function Insert_Record(uint _roll , string memory _name) public{
         School memory D;
         D.Roll_no=_roll;
         D.student_name=_name;
         Data.push(D);
     }
     function Display(uint roll) public view returns(uint,string memory){
         uint i=0;
         for(i=0; i<=Data.length;i++){
             School memory D=Data[i];
             if(D.Roll_no==roll){
                return(D.Roll_no , D.student_name);
             }
         }
         return(0,'No value');
     }

}
