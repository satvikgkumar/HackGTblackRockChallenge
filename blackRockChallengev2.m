image = imread('imageEmbedded.png');

[row,col,~] = size(image);

for r = 1:row
    for c = 1:col
        red = image(r,c,1);
        green = image(r,c,2);
        blue = image(r,c,3);
        binRed = de2bi(red);
        binRed = [zeros(1,8-length(binRed)) binRed];
        newRed = [binRed(3:end) 0 0];
        newRed = uint8(bi2de(newRed));
        
        binBlue = de2bi(blue);
        binBlue = [zeros(1,8-length(binBlue)) binBlue];
        newBlue = [binBlue(3:end) 0 0];
        newBlue = uint8(bi2de(newBlue));
        
        binGreen = de2bi(green);
        binGreen = [zeros(1,8-length(binGreen)) binGreen];
        newGreen = [binGreen(3:end) 0 0];
        newGreen = uint8(bi2de(newGreen));
        
        image(r,c,1) = newRed;
        image(r,c,2) = newBlue;
        image(r,c,3) = newGreen;
    end
end

imwrite(image,'fixedImage2.png');
        
        
        
        
       
        
        
        
        
        


