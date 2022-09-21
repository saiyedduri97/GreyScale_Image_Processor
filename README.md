# GreyScale_Image_Processor

## Description:
Welcome to simple greyscale Image processer. Using this image processer, you can simply apply fully blur(or/and))sharpened blur(or/and)find edges to your greyscaled image using MATLAB. 

## Steps to Set up the Code:
- The "GreyScale_Image_Processor" folder has six files of which
the matlab_file_io_pavan has the main code for the program to run.
- An example for greyscale image is provide with the name "GreyScaleImage.pgm" for the user.
- The images that were generated after the running the code is also included with names: blurred5andsharpen.pgm,blurred5times.pgm,edgedetection.pgm.


## Steps to run the Code:
- On the Editor or Live Editor tab, in the Run section, click  Run.
- Upload the greyscaled image for processing (If not available: Please choose the "GreyScaleImage.pgm" image form the folder)
- Choose the level of blur(or/and))sharpened blur(or/and)find edges to the image from 0 to 5. where,0 represents the no modification and 5 represents the highest modification.
- Image processsing tool generates the processed image in comparision with the origional image.
- Inorder to save in the current folder the processed image please click "y" indicating yes

![EDGE](https://user-images.githubusercontent.com/114020643/191405535-228b432c-7aae-41c4-b9b3-3fb5c6e22292.jpg)


## Review of Code:
### Reading the initial user image and requirements:
The Userinferace modal dialog box collects the image with pixel values. The matlab UI facilitated this with well-customed prompt command called "uigetfile()" to save in the current folder with matlab folder of ".m"file. The greyscaled image is read as matrix of pixel intensities ranging from 0 to 255 occupied throughout the size of the image by the "imread()". The level of modification is considered by input() commands and stors in the variables such as nr_blur,nr_sharpen and nr_edgethickness.
## Consideration of Imageprocessing Methods:
### Convolution technique:
Inorder to process the pixels of the image, a widely popular mathematical technique known as convolution is employed.In this technique, we consider a kernel based on the technique to be performed. For Gaussian blur we consider (1/16)*[1 2 1;2 4 2;1 2 1] and for edge detection we consider [0 -1 0;-1 4 -1;0 -1 0] as kernels.Similarly for sharpening the image [0 -1 0;-1 5 -1;0 -1 0] is preferred as kernel.Along with kernel, we would consider a small matrix of image.At the intersities of the matrix is multiplied with the kernel,whose sum is replaces the center of the image.The same operation iterated through out the image.So each pixel of image is calculated by considering intensities of other pixels in matrix.
<p align="center">
  <img src="https://user-images.githubusercontent.com/114020643/191390229-7bcd106e-a57a-4def-95c0-cc2da2e8f85d.jpg" />
</p>
<p align="center">
  <img src="https://user-images.githubusercontent.com/114020643/191390158-3bdc133c-af0e-4239-b303-bce31a99bdd7.jpg" />
</p>
<p align="center">
  <img src="https://user-images.githubusercontent.com/114020643/191390140-10296f8f-559a-4860-9595-9300191e5204.jpg" />
</p>
<p align="center">
  <img src="https://user-images.githubusercontent.com/114020643/191388086-817bbb1a-e99a-4bc6-b603-712b3927aba7.jpg" />
</p>

### Conversion of pixels form unsigned integer to double datatype:
Although both double precision numbers in range of 0 to 1 and unsignedintegers in range of 0 to 255 can be used to describe images, the image datatype is converted to double because it is provides more accurate values in the describing each pixel intensities
<p align="center">
  <img src="https://user-images.githubusercontent.com/114020643/191403432-ef3b768a-b4aa-408f-997c-a80ae8ba9e7b.jpg" />
</p>

## Image Visulalization:
After converting back into unsigned integer from double precision, the generated is compared using subplot() function

![Resul_image_visualization](https://user-images.githubusercontent.com/114020643/191404190-404af98f-967a-45f9-b5ff-3c372fe40f7f.jpg)


## Version Requirements:
- Requires [MATLAB](https://www.mathworks.com/help/install/install-products.html) 
- Matlab [Image Processing Tool Box](https://www.mathworks.com/products/image.html) available for Mac, Windows and LINUX
- Parallel Computing Toolbox is required for image processing on GPU. A list of supported functions is available on [the page](https://www.mathworks.com/products/image.html).
- Deep Learning Toolbox is required for deep learning functionality. Parallel Computing Toolbox is required for GPU support. 


## CONTRIBUTIONS:
- Project is done under the guidence of Dr. Uwe Pruefert.
