# MATLAB 
--Task report

#1. Image Enhancement Techniques:

Brightness Adjustment: The brightness was adjusted by adding a constant value to all pixel intensities. This is a simple method to control image brightness.
Contrast Enhancement: MATLAB's imadjust function was used to enhance image contrast by specifying contrast limits. Adjusting these limits can effectively improve the image contrast.
Noise Reduction: Gaussian filtering using imgaussfilt was applied to reduce noise. The filter size and standard deviation were adjusted for the desired level of noise reduction.

</br>
#2. Edge Detection Techniques:

Sobel Edge Detection: Sobel algorithm was applied to detect edges. The resulting image emphasizes edges based on the gradient magnitude.
Prewitt Edge Detection: Prewitt algorithm was used for edge detection, providing another approach to emphasize edges based on gradient information.

</br>
#3. Observations:

Brightness adjustment visibly changes the overall brightness of the image.
Contrast enhancement enhances the difference between light and dark regions in the image.
Noise reduction smoothens the image and reduces unwanted artifacts.
Sobel and Prewitt edge detection algorithms highlight edges, but with different emphasis and patterns.
</br>
4. Outcomes:

The combined application of these techniques allows for comprehensive image enhancement and edge detection.
The visual comparison highlights the differences between Sobel and Prewitt edge detection methods, aiding in the selection of the most suitable approach for a given application.
This report summarizes the techniques applied, observations made, and the overall outcomes of the image enhancement and edge detection process in MATLAB. Adjustments can be made to parameters and methods based on specific image characteristics and desired results.
