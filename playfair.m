function P = playfair(B, key )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
for i=1:26
    arr(i)=0;
end
%k==1;
j=1;
%B='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
for k=1:size(key,2)
    if key(1,k)=='J'
        key(1,k)='I';
    end
end

    
for k=1:size(key,2)
    if arr(double(key(1,k))-65+1)==0
        play_look(j)=key(1,k);
        arr(double(key(1,k))-65+1)=1;
        j=j+1;
    end
end
for i=1:26
    if(arr(i)==0&&char(i+64)~='J')
        play_look(j)=char(i+64);
        arr(i)=1;
        j=j+1;
    end
end
play_look;
size(play_look);
play_look(7);
count=1;
m=1;
n=1;
        for i=1:size(play_look,2)
            if(count<5)
            table(m,n)=play_look(1,i);
            count=count+1;
            n=n+1;
            else
                
                table(m,n)=play_look(1,i);
                n=1;
                m=m+1;
                count=1;
                
            end
        end
        table;
        m=1;
        n=1;
        count=0;
        j=1;
        i=1;
       while(i<=size(B,2))
            if(i+1>size(B,2))
                pair(m,1)=B(1,i);
                pair(m,2)='X';
                i=i+1;
            else
            
            if(B(1,i)~=B(1,i+1))
                pair(m,1)=B(1,i);
                pair(m,2)=B(1,i+1);
                i=i+2;
                m=m+1;
            else
                pair(m,1)=B(1,i);
                pair(m,2)='X';
                i=i+1;
                m=m+1;
               % i=i+1;
            end
            
            end
       end
        
        
       for i=1:size(pair,1)
           for j=1:2
               if pair(i,j)=='J'
                   pair(i,j)='I';
               end
           end
       end
              
        
            for i=1:size(pair,1)
                for j=1:2
                    find=0;
                    for k=1:5
                        for l=1:5
                            if table(k,l)==pair(i,j)
                                x(i,j)=k;
                                y(i,j)=l;
                                find=1;
                                
                            end
                            if find==1
                                break;
                            end
                            end
                        if find==1
                            break;
                        end
                    end
                end
            end
           table
            for i=1:size(pair,1)
                if x(i,1)==x(i,2)
                    if(y(i,1)<5)
                    y(i,1)=y(i,1)+1;
                    else
                        y(i,1)=1;
                    end
                        if(y(i,2)<5)
                    y(i,2)=y(i,2)+1;
                        else
                            y(i,2)=1;
                        end
                    
                elseif y(i,1)==y(i,2)
                    if(x(i,1)<5)
                    x(i,1)=x(i,1)+1;
                    else
                        x(i,1)=1;
                    end
                        if(x(i,2)<5)
                    x(i,2)=x(i,2)+1;
                        else
                            x(i,2)=1;
                        end
                else
                    temp=y(i,1);
                    y(i,1)=y(i,2);
                    y(i,2)=temp;
                end
            end
                   k=1; 
                   %size(pair,2)
            for i=1:size(pair,1)
                for j=1:2
                encrypt(k)=table(x(i,j),y(i,j));
                k=k+1;
                end
            end
            encrypt
           % size(encrypt)
                
            
        
                
          P=encrypt;  
            
            

        
        
        

end

