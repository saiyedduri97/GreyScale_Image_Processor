# GreyScale_Image_Processor

## Description:
Hello, Welcome to simple greyscale Image processer. Using this image processer, you can simply apply fully blur(or/and))sharpened blur(or/and)find edges to your greyscaled image using MATLAB. 

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

## Review of Code:
The Userinferace modal dialog box collects the greyscaled image with pixel values ranging from 0 to 255. The matlab UI facilitated this with well-customed prompt command called "uigetfile()" to save in the current folder with matlab folder of ".m"file.

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



## Version Requirements:
- Requires [MATLAB](https://www.mathworks.com/help/install/install-products.html) 
- Matlab [Image Processing Tool Box](https://www.mathworks.com/products/image.html) available for Mac, Windows and LINUX
- Parallel Computing Toolbox is required for image processing on GPU. A list of supported functions is available on [the page](https://www.mathworks.com/products/image.html).
- Deep Learning Toolbox is required for deep learning functionality. Parallel Computing Toolbox is required for GPU support. 

## CONTRIBUTIONS:
- Project is done under the guidence of Dr. Uwe Pruefert.
