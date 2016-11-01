function  h =  makenoise()
    pic = imread('friends.jpg');
    pic = rgb2gray(pic);  % convert it to gray level 
    [height, width] = size(pic); % return vector []
    dis = round(rand(1)*10)
    for r = 12:dis:height
        for c = 9:dis:width
                noise = 0 % default 
                if(round(rand(1)) == 0)
                    noise = 255
                end
               pic (r,c) = noise;
        end
    end
    h = imshow(pic);
end
