rgb = imread('coloredChips.png');
gray_image = rgb2gray(rgb);
%[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', 'Sensitivity',0.9);
[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', 'Sensitivity',0.95);
[centersBright,radiiBright,metricBright] = imfindcircles(rgb,[20 25], 'ObjectPolarity','bright','Sensitivity',0.92,'EdgeThreshold',0.1);


%h = viscircles(centers,radii);
%hBright = viscircles(centersBright, radiiBright,'Color','b');

