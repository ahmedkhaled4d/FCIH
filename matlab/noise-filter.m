%**********************%
% Ahmed Khaled Mohammed %
%             20130025           %
 
  pic = imread('friends.jpg');
    pic = rgb2gray(pic);  % convert it to gray level 
    [height, width] = size(pic); % return vector []
    range = 13; 
    dis = round(rand(1)*range);
    for r = 1:dis:height
        for c = 1:dis:width
                noise = 0 % default 
                if(round(rand(1)) == 0)
                    noise = 255
                end
               pic (r,c) = noise;
        end
    end
  
  %---------- filter ---------%
    pic2 = pic;  
    for r2 = 3:1:height-3
        for c2 = 3:1:width-3
                
                 if(pic2 (r2,c2)==0 | pic2 (r2,c2) == 255)
                    p = ( pic2 (r2-1,c2) + pic2 (r2,c2-1) + pic2 (r2,c2+1) +  pic2 (r2+1,c2)  ) / 4;
                    pic2 (r2,c2) = p;
                 end
        end
    end
    
  figure
  subplot(1,2,1)
  imshow(pic);
  subplot(1,2,2);
  imshow(pic2);
  
 


 


 
