function  h =  makenoise()
    pic = imread('friends.jpg');
    pic = rgb2gray(pic);  % convert it to gray level 
    [height, width] = size(pic); % return vector []
    dis = round(rand(1)*100)
    for r = 12:16:height
        for c = 9:5:width
                noise = 0 % default 
                if(round(rand(1)) == 0)
                    noise = 255
                end
               pic (r,c) = noise;
        end
    end
    h = imshow(pic);
end
