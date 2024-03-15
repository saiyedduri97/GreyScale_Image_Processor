%% Image processing 
clear;
%% Manual
fprintf("Manual\n Hello, Welcome to simple greyscale Image processer.Using this image processer, you can apply fully blur/sharpened blur/find edges to your greyscaled image\n" + ...
    "You have to just upload your image and then answer few simple questions in command window based on your requirments\n")
%%%%%%%%%%
%% Reads initial image and takes user requirements
selected_img_name = uigetfile('*.pgm','Please select a file for image processing');  
IM=imread(selected_img_name);% reads the input_image of size 512 by 512
origIM=IM;
fprintf("We recieved your image! \n");
nr_blur=input("Upto which level you want to blur the image, '5' is medium blur and '0' is no blur: ");
nr_sharpen=input("How many times your want to sharpen the image, '5' is medium sharpenig and '0' is no sharpening: ");
nr_edgethickness=input("How well you want to thicken the edges in your image, '5' thick edges and '0' is no edge detection: ");

%% Converting IM to double from uint8 and intializing resultant double matrix
 IM=padarray(IM,[1 1],'replicate');% Here, padding array is used to add a extra boundary to image of same pixels(replicate) as current boundary and then converting back to size of actual image.
 IM=double(IM); %resultant matrix be accurate doubles instead of approximating values to integers after element multipication
 R=IM;

%% Gaussian Blur Filter
    w=(1/16)*[1 2 1;2 4 2;1 2 1];
    %I chose the write below code again and again,not as a function
    %becasue,I believe,it would be easy for the new programmer to easily comprehend the code
    %instead of scrolling and searching for function which otherwise would be at the end.
    for blur=1:nr_blur % considers the number of blurs from user
    for d=0:509 % d for the box to move_down
        for m=0:509 % m for box to move_right
            A=IM(1+d:3+d,1+m:3+m);% 3 by 3 box and moving on each side
            R(2+d,2+m)=sum(sum(A.*w));% placing sum of elements in the 3 by 3 matrix in the middile element of output
        end
    end
    IM=R;% stores the resultant matrix R in IM for each convolution
    end

%% Sharpening
    w=[0 -1 0;-1 5 -1;0 -1 0];   
    for sharpen=1:nr_sharpen
    for d=0:509% d for the box to movedown
        for m=0:509 % m for box to move_right
            A=IM(1+d:3+d,1+m:3+m);  
            R(2+d,2+m)=sum(sum(A.*w));     
        end
    end
    IM=R;
    end

%% EDGE DETECTION
for edgethick=1:nr_edgethickness
    w=[0 -1 0;-1 4 -1;0 -1 0];
    for d=0:509% d for the box to movedown
        for m=0:509 % m for box to movingright
            A=IM(1+d:3+d,1+m:3+m);
            R(2+d,2+m)=sum(sum(A.*w));     
        end
    end
    IM=R;
end

%% Coverting back to unsignedinteger of resulting double matrix--> Displaying result--> Saving result
    [r,c]=size(IM);%Here,IM is of size 514 by 514
    changedIM=IM(2:r-1,2:c-1); % coverted back to 512 by 512 matrix by removing non-blurred matrix
    changedIM=uint8(changedIM); 
    compare_fig(origIM,changedIM);   
    img_save(changedIM);

%% Show result
function compare_fig(pic_initial,pic_final)
    
  % Create a figure objet w/o tool and menu bars. It is a now a "window".
    fig = figure(1);
    fig.ToolBar="none";
    fig.MenuBar="none";

    % subplot function compares two plots in one window
    subplot(1,2,1)
    image(pic_initial);
    title('Original');
    axis('image'); 
    axis('off');
    colormap(gray); 
    
    subplot(1,2,2);
    image(pic_final);
    title('Image after processing');
    axis('image'); 
    axis('off');
    colormap(gray); 
end
%% Saving function
    function img_save(pic)
    saveq=input("Would you like to save the comparision image displayed? Ifso, press 'y' :",'s');
        if(strcmpi(saveq,'y')==1)
            img_name=input("Please  Enter the image name: ",'s');
            imwrite(pic,strcat(img_name,".pgm"),"pgm");% wrtes the name of file on image file
            fprintf("Your image is successfully saved in the current file folder\n")
        else
            fprintf("You didnt press 'y' as acceptance.so image is not saved\n");
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
