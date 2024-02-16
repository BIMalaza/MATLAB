% Step1 : Load and display image 
I = imread("pout2.png");
imshow(I);
%Image Enhancement
% Step 2: Brightness adjustment
brightness_adjusted = I + 60; 
imshow(brightness_adjusted);
title('Brightness Adjusted Image');


% Step 3: Contrast enhancement
contrast_enhanced = imadjust(I, [0.3 0.7], []); % Adjust the contrast limits as needed
imshow(contrast_enhanced);
title('Contrast Enhanced Image');

% Step 4: Noise reduction
noise_reduced = imgaussfilt(I, 2);
imshow(noise_reduced);
title('Noise Reduced Image');

% Step 6: Load and display the original image
I = imread("pout2.png");
figure;
subplot(2, 3, 1);
imshow(I);
title('Original Image');

% Step 7: Convert the image to grayscale
I_gray = rgb2gray(I);

% Step 8: Apply edge detection using Sobel algorithm
edges_sobel = edge(I_gray, 'Sobel');
subplot(2, 3, 2);
imshow(edges_sobel);
title('Sobel Edge Detection');

% Step 9: Apply edge detection using Prewitt algorithm
edges_prewitt = edge(I_gray, 'Prewitt');
subplot(2, 3, 3);
imshow(edges_prewitt);
title('Prewitt Edge Detection');

% Step 10: Compare the effects of different algorithms
subplot(2, 3, 4);
imshow(I);
title('Original Image');

subplot(2, 3, 5);
imshow(edges_sobel);
title('Sobel Edge Detection');

subplot(2, 3, 6);
imshow(edges_prewitt);
title('Prewitt Edge Detection');
