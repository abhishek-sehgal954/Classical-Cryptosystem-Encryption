function B = vigenere(A, key )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%display('hola');
%return;
%A='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
keySet   = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
valueSet = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26];
map1(valueSet)=keySet;%digit to alphabet
map2(keySet)=valueSet;%alphabet to digit
%map1(1)
%mapObj('D')
j=1;
for i=1:size(A,2)
    temp=map2(key(1,j));
    temp2=map2(A(1,i))+temp-1;
    if(temp2>26)
    temp2=mod(temp2,26);
    end
    
    %temp2=temp2+1;
   if(temp2~=0)
    A(1,i)=map1(temp2);
   end
    %key(1,j)
    j=j+1;
    if(j>size(key,2))
    j=mod(j,size(key,2));
    if(j==0)
        j=j+1;
    end
    end
    
    
end
B=A;

    
    
    
    
end

