function encrypt = hill(B,key )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here\
keySet   = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
valueSet = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26];
map1(valueSet)=keySet;%digit to alphabet
map2(keySet)=valueSet;%alphabet to digit
%map1(14)
%map1(1)
%H=2;
l=1;

for i=1:3
    for j=1:3
        key_mat(i,j)=map2(key(1,l))-1;
        l=l+1;
    end
end
count=0;
key_mat;
flag=0;
for i=1:size(B,2)
    if(count==0)
        temp=B(1,i);
    else
    temp=[temp B(1,i)];
    end
    count=count+1;
    if(count==3)
        
        for j=1:3
            temp(1,j)=map2(temp(1,j))-1;
        end
        for(j=1:3)
            temp2(j,1)=temp(1,j);
        end
        
        if(flag==0)
        flag=1;
        %key_mat
        %temp
        x=key_mat*temp2;
        for i=1:size(x,1)
            x2(1,i)=x(i,1);
        end
        encrypt=x2;
        
        else
             x=key_mat*temp2;
        for i=1:size(x,1)
            x2(1,i)=x(i,1);
        end
            encrypt=[encrypt x2];
        end
        
        temp;
       temp=0;
        count=0;
    end
    
end
if(temp~=0)
x=size(temp,2);
if ((x~=3))
    for i=1:(3-x)
        temp=[temp 'X'];
    end
end
end
%temp
if(temp~=0)
 for j=1:3
            temp(1,j)=map2(temp(1,j))-1;
 end
        for(j=1:3)
            temp2(j,1)=temp(1,j);
        end
         x=key_mat*temp2;
        for i=1:size(x,1)
            x2(1,i)=x(i,1);
        end
encrypt=[encrypt x2];
encrypt;
end
size(encrypt);
   for j=1:size(encrypt,2)
       encrypt(1,j)=mod(encrypt(1,j),26);
       encrypt(1,j)=encrypt(1,j)+1;
       %encrypt(1,j)=map1(encrypt(1,j));
   end
   encrypt;
   size(encrypt);
   for j=1:size(encrypt,2)
       encrypt2(1,j)=map1(encrypt(1,j));
   end
   encrypt2;
   encrypt=encrypt2;

end

