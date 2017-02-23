#!/bin/sh 

case "$SSH_ORIGINAL_COMMAND" in 
*\&*) 
echo "Rejected" 
;; 
*\(*) 
echo "Rejected" 
;; 
*\{*) 
echo "Rejected" 
;; 
*\;*) 
echo "Rejected" 
;; 
*\<*) 
echo "Rejected" 
;; 
*\>*) 
echo "Rejected" 
;; 
*\`*) 
echo "Rejected" 
;; 
*\|*) 
echo "Rejected" 
;; 
rsync\ --server*) 
$SSH_ORIGINAL_COMMAND 
;; 
*) 
echo "Rejected" 
;; 
esac 
