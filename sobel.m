function outImage = sobel(inImage)
% 3x3 mask for x gradient sobel
Gx = [1 +2 +1; 0 0 0; -1 -2 -1];
% inverse of this mask if the y gradient sobel
Gy = Gx';

%perform 2D convolution to find value from both gradients
temp_x = conv2(inImage, Gx, 'same');
temp_y = conv2(inImage, Gy, 'same');

%take directional value
outImage = sqrt(temp_x.^2 + temp_y.^2);
outImage = uint8(outImage);
imshow(outImage);
% imwrite(outImage, 'pepper_edge.jpg', 'jpg');
end