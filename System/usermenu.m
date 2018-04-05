

close all;
clc;

if (exist('DATABASE.mat','file'))
    load DATABASE.mat;
end
while (1==1)
  
    choice=menu('WelCome To Face Recognition Attandence system',...          
                '1.Recognize from Image',...
                '2.Recognize from Webcam',...
                '3.Exit');
      
    if (choice == 1)
        if (~exist('myDatabase','var'))
            fprintf('Please generate database first!\n');
        else            
            pause(0.1);            
            [file_name, file_path] = uigetfile ({'*.pgm';'*.jpg';'*.png'});
            if file_path ~= 0
                filename = [file_path,file_name];                
                facerec (filename,myDatabase,minmax);                        
            end
        end
    end
    if (choice == 2)
        I = getcam();
        if (~isempty(I))           
            filename = ['./',num2str(floor(rand()*10)+1),'.pgm'];
            imwrite(I,filename);
            if (exist('myDatabase','var'))
                facerec (filename,myDatabase,minmax);
            end
        end
    end
    
    
    
    if (choice == 3)
        clear choice choice2
        return;
    end    
    
end