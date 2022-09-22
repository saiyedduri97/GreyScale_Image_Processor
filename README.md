# GreyScale_Image_Processor

## Description:
Welcome to simple greyscale Image processer. Using this image processer, you can simply apply fully blur(or/and))sharpened blur(or/and)find edges to your greyscaled image using MATLAB. 

## Steps to Set up the Code:
- The "GreyScale_Image_Processor.zip" folder has six files of which
the matlab_file_io_pavan has the main code for the program to run.
- An example for greyscale image is provide with the name "GreyScaleImage.pgm" for the user.
- The images that were generated after the running the code is also included with names: blurred5andsharpen.pgm,blurred5times.pgm,edgedetection.pgm.


## Steps to run the Code:
- On the Editor or Live Editor tab, in the Run section, click  Run.
- Upload the greyscaled image for processing (If not available: Please choose the "GreyScaleImage.pgm" image form the folder)
- Choose the level of blur(or/and))sharpened blur(or/and)find edges to the image from 0 to 5. where,0 represents the no modification and 5 represents the highest modification.
- Image processsing tool generates the processed image in comparision with the origional image.
- Inorder to save in the current folder the processed image please click "y" indicating yes



## Review of Code:
### Reading the initial user image and requirements:
The Userinferace modal dialog box collects the image with pixel values. The matlab UI facilitated this with well-customed prompt command called "uigetfile()" to save in the current folder with matlab folder of ".m"file. The greyscaled image is read as matrix of pixel intensities ranging from 0 to 255 occupied throughout the size of the image by the "imread()". The level of modification is considered by input() commands and stors in the variables such as nr_blur,nr_sharpen and nr_edgethickness.
![initial convertion](https://user-images.githubusercontent.com/114020643/191416723-c5acbc12-00f1-4a82-9f41-9d9cdc436c0e.jpg)

### Consideration of Imageprocessing Methods:
#### Convolution technique:
Inorder to process the pixels of the image, a widely popular mathematical technique known as convolution is employed.In this technique, we consider a kernel based on the technique to be performed. For Gaussian blur we consider (1/16)*[1 2 1;2 4 2;1 2 1] and for edge detection we consider [0 -1 0;-1 4 -1;0 -1 0] as kernels.Similarly for sharpening the image [0 -1 0;-1 5 -1;0 -1 0] is preferred as kernel.Along with kernel, we would consider a small matrix of image.At the intersities of the matrix is multiplied with the kernel,whose sum is replaces the center of the image.The same operation iterated through out the image.So each pixel of image is calculated by considering intensities of other pixels in matrix.

![blur_code](https://user-images.githubusercontent.com/114020643/191416534-5e4a26b8-ef60-4119-9953-57458d5c502d.jpg)


### Conversion of pixels form unsigned integer to double datatype:
Although both double precision numbers in range of 0 to 1 and unsignedintegers in range of 0 to 255 can be used to describe images, the image datatype is converted to double because it is provides more accurate values in the describing each pixel intensities
<p align="center">
  <img src="https://user-images.githubusercontent.com/114020643/191403432-ef3b768a-b4aa-408f-997c-a80ae8ba9e7b.jpg" />
</p>

## Image Visulalization:
After converting back into unsigned integer from double precision, the generated is compared using subplot() function. Image is generated following the 
The processed image is then compared with with the user's origional image.

![EDGE](https://user-images.githubusercontent.com/114020643/191405535-228b432c-7aae-41c4-b9b3-3fb5c6e22292.jpg)
	
<sub>Fig1: The above comparision represents comparison of the user image with the generated image after sharpening and edge detection.</sub>


## Software Requirements:
- Requires [MATLAB](https://www.mathworks.com/help/install/install-products.html) 
- Matlab [Image Processing Tool Box](https://www.mathworks.com/products/image.html) available for Mac, Windows and LINUX
- Parallel Computing Toolbox is required for image processing on GPU. A list of supported functions is available on [the page](https://www.mathworks.com/products/image.html).
- Deep Learning Toolbox is required for deep learning functionality. Parallel Computing Toolbox is required for GPU support. 


## CONTRIBUTIONS:
- Project is done under the guidence of Dr. Uwe Pruefert.
