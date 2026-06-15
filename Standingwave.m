clear all;
clc;


%wave parameters



f_c = 50;
omega = 2*pi*f_c;

beta = 3;


T = 1/omega;
T = T/500;


%frame parameters

frame = 1200;
frame = frame -1;
n = 1;
m = 1
wall = 0;

%propogation level
 p = 5;
 z_r = 0;

 %making video
vidfile = VideoWriter('testmovie.mp4','MPEG-4');
open(vidfile);

    
    
    for  s = 0:0.0205:(0.0205*frame)
        
        if wall == 0
            
            z = 0:0.0205:(0.0205)*n;
            
        elseif wall == 1
            
            bounce_back = 1
            
            z_r = p:(-0.0205):(p - m*(0.0205));  
            m = m + 1 ;
            
        end
            
            
        %defining the Electrical and Magnetic Fields:
        t = ones(size(z))*s;
        E = sin(omega*t - beta*z);
        
        t_r = ones(size(z_r))*s;
        E_r = sin(-1*omega*(t_r) - beta*(z_r));
        
        E_s = sin(-1*omega*(t_r) - beta*(z_r)) + sin(omega*(t_r) - beta*(z_r));
        
        
        
    
    
        %Ploting the arrays:
        figure(n)
        f = figure(n);
        f.Position(3:4) = [1000 450];
        
        
        


        patch([z fliplr(z)], [E zeros(size(E))], [zeros(size(z)) zeros(size(z))],'EdgeColor','blue','FaceColor','blue','LineWidth',1.1);
        
        if wall == 1
            
            hold on
            patch([z_r fliplr(z_r)], [E_r zeros(size(E_r))], [zeros(size(z_r)) zeros(size(z_r))],'EdgeColor','red','FaceColor','red','LineWidth',1.1);
            hold on
            patch([z_r fliplr(z_r)], [E_s zeros(size(E_s))], [zeros(size(z_r)) zeros(size(z_r))],'EdgeColor','k','FaceColor','yellow','LineWidth',1.20);
            
        end
        
        alpha(0.15)
        xlabel('Z')
        ylabel('E')
        grid on;
        ylim ([-2.2,2.2])
        xlim ([0,p])
        
        
        
        
        if max(z) >= p
            wall = 1;
        end
        





        %making file title:
        str = sprintf('time = %d milisecond', s*1000);
        title(str)
        %making frame
        filename = sprintf('testdata_%d.png',n); 
        

        n = n + 1;
        
        
        F(n) = getframe(gcf); 
        writeVideo(vidfile,F(n));
        
        close all
        
    end
    
    close(vidfile)
    
    
