% Step1 : Load image named pout
I = imread("pout.tif");

% Step2: Display image
imshow(I)

% Step3: Check How the Image Appears in the Workspace
whos I

% Step 4: Improve Image Contrast
%  create a histogram by calling the imhist function
imhist(I)

% Improve the contrast in an image using the imhist function,
I2 = histeq(I);
imshow(I2)

% Call the imhist function again to create a histogram of the equalized image I2
figure
imhist(I2);

% Write the Adjusted Image to a File
% Write the newly adjusted image I2 to a file using the imwrite function.
imwrite(I2,"pout2.png");

% Check the Contents of the Newly Written File.
imfinfo("pout2.png")

% Read a truecolor image into the workspace
% Read another image
RGB = imread("football.jpg");

% Read image data
whos
imshow(RGB)

%Read a grayscale image into the workspace.
I = imread("cameraman.tif");
whos
imshow(I)

% Read an indexed image into the workspace.
[X,map] = imread("trees.tif");
whos
imshow(X)

% imread infers the file format to use from the contents of the file.
pep = imread("peppers.png","png");
whos
imshow(pep)

%% Read multiple images from sigle graphic file
mri = zeros([128 128 1 27],'uint8');
%% Read the images from the file, using a loop to read each image sequentially.
for frame=1:27
    [mri(:,:,:,frame),map] = imread('mri.tif',frame);
end
whos

%% Read and Display Image
A = imread('ngc6543a.jpg');
%% Display image
image(A)
%% Read the first image in the sample indexed image file, corn.tif.
[X,cmap] = imread('corn.tif');

%% The indexed image X is a 415-by-312 array of type uint8. The colormap cmap is a 256-by-3 matrix of type double, therefore there are 256 colors in the indexed image. Display the image.
imshow(X,cmap)
%% Convert the indexed image to an RGB image. The result is a 415-by-312-by-3 array of type double
RGB = ind2rgb(X,cmap);
%%Check that values of the RGB image are in the range [0, 1].
disp(['Range of RGB image is [',num2str(min(RGB(:))),', ',num2str(max(RGB(:))),'].'])
%%Read Specific Image in Multipage TIFF File
[X,map] = imread('corn.tif',3);

%% Return Alpha Channel of PNG Image
[X,map,alpha] = imread('peppers.png');
whos alpha

%%Read Specified Region of TIFF Image
%%Read a specific region of pixels of the sample image, corn.tif.
A = imread('corn.tif','PixelRegion',{[1,2],[2,5]});