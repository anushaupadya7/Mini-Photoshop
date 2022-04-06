% Photoshop
clear,clc;
A = imread('C:\Users\Anusha Upadya\OneDrive\Desktop\Docs\IP PROJECT\155d586816b53a5aa2dc2a798f1bff39.jpg');
colormap(gray(256));
set(gcf,'color','#fbbc58');
subplot(1,2,1), image(A);
title('Original');
option = menu('PhotoEditor Option','Properties','Darken','Brighten','Increase Contrast','Decrease Contrast','Sharpen','Smoothing','Crop','Negative','Rotate');
switch option
    case 1 %Properties
        info = imfinfo('C:\Users\Anusha Upadya\OneDrive\Desktop\Docs\IP PROJECT\155d586816b53a5aa2dc2a798f1bff39.jpg')
        
    case 2 %Darken
        A2 = A - 50;
        subplot(1,2,1), image(A); 
        title('Original');
        subplot(1,2,2), image(A2);
        title('Darker');
        
       
    case 3 %Brighten
        A2 = A + 50;
        subplot(1,2,1), image(A);
         title('Original');
        subplot(1,2,2), image(A2);
         title('Brighter');
       
    
               
    case 4 %Increase Contrast
        A2 = A*2;
        subplot(1,2,1), image(A);
         title('Original');
        subplot(1,2,2), image(A2);
         title('Increased Contrast');
        
        
    case 5 %Decrease Contrast
         A2 = A/2;
        subplot(1,2,1), image(A);
         title('Original');
        subplot(1,2,2), image(A2);
         title('Decreased Contrast');
        
        
    case 6 %Sharpen
        A2=imsharpen(A);
        subplot(1,2,1), image(A);
         title('Original');
        subplot(1,2,2), image(A2);
         title('Sharpend');

    case 7 %Smoothing   
        A3=imgaussfilt(A,2);
        subplot(1,2,1), image(A);
         title('Original');
        subplot(1,2,2), image(A3);
        title('Smoothing');  

    case 8 %Crop
        fprintf('Choose two diagonal corners.');
        [y,x] = ginput(2);
        r1 = x(1,1);
        r2 = x(2,1);
        c1 = y(1,1);
        c2 = y(2,1);
        
        R1 = A(r1:1:r2, c1:1:c2);
        
        subplot(1,2,2), image(R1);
        title('Cropped');
  
        
    case 9 %Negative
        A2 = 256 - A;
         subplot(1,2,1), image(A)
          title('Original');
         subplot(1,2,2), image(A2)
          title('Negative');
    case 10
        
        angle=menu('Angle of Rotation',10,30,60,90,180,270,360);
        switch angle
            case 1
                Rotate=imrotate(A,10);
            case 2
                Rotate=imrotate(A,30);
            case 3
                Rotate=imrotate(A,60);
            case 4
                Rotate=imrotate(A,90);
            case 5
                Rotate=imrotate(A,180);
            case 6
                Rotate=imrotate(A,270);
            case 7
                Rotate=imrotate(A,360);
        end

    
        subplot(1,2,2), image(Rotate)
end
