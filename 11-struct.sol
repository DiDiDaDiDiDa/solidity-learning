// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// 结构体
contract ArraySection {
    
    struct Student{
        string name;
        uint age;
    }
    Student[] students;
    function add(Student memory student )public returns(Student memory){
        
        students.push(student);
        return student;
    }
}
