   .data 
   null_errorMessage:   .asciiz  "Input is empty."
   length_errorMessage:   .asciiz  "Input is too long."
   base_errorMessage:   .asciiz   "Invalid base-31 number."
   user_Input:   .space 1000
   .text
main:
   li $v0, 8    
   la $a0, user_Input  
   li $a1, 1000
   syscall 
removespaceinfront:
   li $t8, 32                              
   lb $t7, 0($a0)   
   beq $t8, $t7, removefirstcharacter     
   move $t7, $a0                          
   j removespaceafter
removefirstcharacter:
   addi $a0, $a0, 1
   j removespaceinfront
