function outImage = medianFilt(inImage)
% save size of image in variables
[m, n] = size(inImage);
outImage = inImage;
% vector to store neighboring pixel values
Med = [];
% loop through all pixels
% note: matlab arrays begin at index 1,
% not 0, so you must start your filter at 2
% since there are neighbors to the left (x-1)
for i=2:m-1
    for j=2:n-1
        % if inImage(i,j) < 25 || inImage(i,j) > 230
            % gather neighbor pixel values
            Med(1) = inImage(i-1,j-1);  % north west
            Med(2) = inImage(i-1,j) ;   % west
            Med(3) = inImage(i-1,j+1);  % south west
            Med(4) = inImage(i,j-1);    % north
            Med(5) = inImage(i,j+1);    % south  
            Med(6) = inImage(i+1, j-1); % north east
            Med(7) = inImage(i+1,j);    % east
            Med(8) = inImage(i+1,j+1);  % south east
            outImage(i,j) = median(Med);
        % end
    end
end 
imshowpair(inImage, outImage, 'montage');
end