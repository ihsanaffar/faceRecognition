clc

userdef='admin';

passdef='admin';
for n = 1:3
    
userin=input(' Username: ','ihsan');

passin=input(' Password: ','123');

a=length(userin); a1=length(userdef);

b=length(passin); b1=length(passdef);




if(a==a1 && b==b1)

    if(userin==userdef && passin==passdef) 
        fprintf('Correct!');
         mainmenu();
    else
      
        fprintf('Wrong! Please try again' );
    end
else

    fprintf('Wrong! Please try again');
     
end
end