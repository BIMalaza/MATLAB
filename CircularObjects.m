%% Step 1: Loading the Image and show it
rgb = imread('coloredChips.png');
imshow(rgb)
%% Step 2: Determining the Radius Range for Searching Circles
d = imdistline;
%%  remove the imdistline tool
delete(d);
%%Step 3: Initial Attempt to Find Circles
%n create a grayscale version of the image.
gray_image = rgb2gray(rgb);
imshow(gray_image);
%% specify the search radius of [20 25]pixels.
[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark')
centers = []
radii = []
%% Step 4: Increasing Detection Sensitivity
[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', ...
 'Sensitivity',0.9)
centers =146.1895,198.5824
 328.813, 135.5883
 130.3134, 43.8039
 175.2698 ,297.0583
 312.2831, 192.3709
 327.1316 ,297.0077
 243.9893 ,166.4538
 271.5873 ,280.8920
 radii = 23.1604
 22.5710
 22.9576
 23.7356
 22.9551
 22.9995
 22.9055
 23.0298

 %% Step 5: Drawing the Circles on the Image
 imshow(rgb);
h = viscircles(centers,radii);

[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', ...
 'Sensitivity',0.92);
length(centers)
ans =16
delete(h); % Delete previously drawn circles
h = viscircles(centers,radii);

%%Step 6: Using the Second Method (Two-Stage) for Finding Circles
[centers, radii] = imfindcircles(rgb,[20 25], 'ObjectPolarity','dark', ...
 'Sensitivity',0.92,'Method','twostage');
delete(h);
h = viscircles(centers,radii);