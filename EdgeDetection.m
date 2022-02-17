clear;clc;

Org_Img = imread('lena.bmp');
%Original, Sobel, Prewitt, Log, Canny %
image01 = edge(Org_Img,'Sobel');
image02 = edge(Org_Img,'Prewitt');
image03 = edge(Org_Img,'log');
image04 = edge(Org_Img,'Canny');
%Show results%
%Original, Sobel, Prewitt, Log, Canny%
figure('Name','Original, Sobel, Prewitt, Log, Canny');
subplot(1,5,1); imshow(Org_Img); title('Main')
subplot(1,5,2); imshow(image01); title({'Sobel'})
subplot(1,5,3); imshow(image02); title('Prewitt')
subplot(1,5,4); imshow(image03); title('Log')
subplot(1,5,5); imshow(image04); title('Canny')
%#####################################################%
%Diffrents Gaussian noise values with MSE,RMSE
%Converting the image to double form 
%Calculating MSE and RMSE and showing in the following with Var=0.01
M = size(Org_Img,1); N = size(Org_Img,2);
image1 = imnoise(Org_Img,'gaussian',0,0.01);
MS1 = (sum(sum(((double(Org_Img) - double(image1)).^2))))/(M*N);
RM1 = sqrt(MS1);
%Calculating MSE and RMSE and showing in the following with Var=0.05
image2 = imnoise(Org_Img,'gaussian',0,0.05);
MS2 = (sum(sum(((double(Org_Img) - double(image2)).^2))))/(M*N);
RM2 = sqrt(MS2);
%Calculating MSE and RMSE and showing in the following with Var=0.1
image3 = imnoise(Org_Img,'gaussian',0,0.1);
MS3 = (sum(sum(((double(Org_Img) - double(image3)).^2))))/(M*N);
RM3 = sqrt(MS3);
%Calculating MSE and RMSE and showing in the following with Var=0.5
image4 = imnoise(Org_Img,'gaussian',0,0.5);
MS4 = (sum(sum(((double(Org_Img) - double(image4)).^2))))/(M*N);
RM4 = sqrt(MS4);
%Calculating MSE and RMSE and showing in the following with Var=1
image5 = imnoise(Org_Img,'gaussian',0,1);
MS5 = (sum(sum(((double(Org_Img) - double(image5)).^2))))/(M*N);
RM5 = sqrt(MS5);

%*** Plot lena Image with different noise ***%
figure('Name','Gaussian');
subplot(2,3,1); imshow(Org_Img); title('Main Lena')
subplot(2,3,2); imshow(image1); title({'Variance = 0.01'})
subplot(2,3,3); imshow(image2); title({'Variance = 0.05'})
subplot(2,3,4); imshow(image3); title({'Variance = 0.1'})
subplot(2,3,5); imshow(image4); title({'Variance = 0.5'})
subplot(2,3,6); imshow(image5); title({'Variance = 1'})
%#####################################################%
%Edge detection by sobel on Lena Noisy Images%
%Canny Edge detector 
figure('Name','Sobel');
subplot(2,3,1)
image6 = edge(Org_Img,'canny',0.1,1); imshow(image6)
title({'Canny' ;'Thresh = 0.1, Sigma = 1'; 'Noise-Free' })
%Sobel, MSE, RMSE, Var=0.01
subplot(2,3,2)
imaeg7 = edge(image1,'sobel'); imshow(imaeg7)
MS6 = (sum(sum(((double(image6) - double(imaeg7)).^2))))/(M*N);
RM6 = sqrt(MS6);
title({ 'Variance = 0.01'})
%Sobel, MSE, RMSE, Var=0.05
subplot(2,3,3)
image8 = edge(image2,'sobel'); imshow(image8)
MS7 = (sum(sum(((double(image6) - double(image8)).^2))))/(M*N);
RM7 = sqrt(MS7);
title({'Variance = 0.05'})
%Sobel, MSE, RMSE, Var=0.1
subplot(2,3,4)
image9 = edge(image3,'sobel'); imshow(image9)
MS8 = (sum(sum(((double(image6) - double(image9)).^2))))/(M*N);
RMS8 = sqrt(MS8);
title({'Variance = 0.1'})
%Sobel, MSE, RMSE, Var=0.5
subplot(2,3,5)
image10 = edge(image4,'sobel'); imshow(image10)
MS9 = (sum(sum(((double(image6) - double(image10)).^2))))/(M*N);
RM9 = sqrt(MS9);
title({ 'Variance = 0.5'})
%Sobel, MSE, RMSE, Var=1
subplot(2,3,6)
image11 = edge(image5,'sobel'); imshow(image11)
MS10 = (sum(sum(((double(image6) - double(image11)).^2))))/(M*N);
RM10 = sqrt(MS10);
title({'Variance = 1'})
%#####################################################%
%Edge detection by prewitt on Lena Noisy Images%
%Canny Edge detector 
figure('Name','Prewitt');
subplot(2,3,1)
image6 = edge(Org_Img,'canny',0.1,1); imshow(image6)
title({'Canny' ;'Thresh = 0.1, Sigma = 1'; 'Noise-Free' })
%Prewitt, MSE, RMSE, Var=0.01
subplot(2,3,2)
image12 = edge(image1,'prewitt'); imshow(image12)
MS11 = (sum(sum(((double(image6) - double(image12)).^2))))/(M*N);
RM11 = sqrt(MS11);
title({'Variance = 0.01'})
%Prewitt, MSE, RMSE, Var=0.05
subplot(2,3,3)
image13 = edge(image2,'prewitt'); imshow(image13)
MS12 = (sum(sum(((double(image6) - double(image13)).^2))))/(M*N);
RM12 = sqrt(MS12);
title({ 'Variance = 0.05'})
%Prewitt, MSE, RMSE, Var=0.1
subplot(2,3,4)
image14 = edge(image3,'prewitt'); imshow(image14)
MS13 = (sum(sum(((double(image6) - double(image14)).^2))))/(M*N);
RM13 = sqrt(MS13);
title({'Variance = 0.1' })
%Prewitt, MSE, RMSE, Var=0.5
subplot(2,3,5)
image15 = edge(image4,'prewitt'); imshow(image15)
MS14 = (sum(sum(((double(image6) - double(image15)).^2))))/(M*N);
RM14 = sqrt(MS14);
title({'Variance = 0.5'})
%Prewitt, MSE, RMSE, Var=1
subplot(2,3,6)
image16 = edge(image5,'prewitt'); imshow(image16)
MS15 = (sum(sum(((double(image6) - double(image16)).^2))))/(M*N);
RM15 = sqrt(MS15);
title({'Variance = 1'})
%#####################################################%
%Edge detection by Laplacian of Gaussian (LoG) on Lena Noisy Images
%Canny Edge detector 
figure('Name','LoG');
subplot(2,3,1)
image6 = edge(Org_Img,'canny',0.1,1); imshow(image6)
title({'Canny' ;'Thresh = 0.1, Sigma = 1'; 'Noise-Free' })
%Log, MSE, RMSE, Var=0.01
subplot(2,3,2)
image17 = edge(image1,'log'); imshow(image17)
MS16 = (sum(sum(((double(image6) - double(image17)).^2))))/(M*N);
RM16 = sqrt(MS16);
title({'Variance = 0.01'})
%Log, MSE, RMSE, Var=0.05
subplot(2,3,3)
imag18 = edge(image2,'log'); imshow(imag18)
MS17 = (sum(sum(((double(image6) - double(imag18)).^2))))/(M*N);
RM17 = sqrt(MS17);
title({'Variance = 0.05'})
%Log, MSE, RMSE, Var=0.1
subplot(2,3,4)
image19 = edge(image3,'log'); imshow(image19)
MS18 = (sum(sum(((double(image6) - double(image19)).^2))))/(M*N);
RM18 = sqrt(MS18);
title({'Variance = 0.1'})
%Log, MSE, RMSE, Var=0.5
subplot(2,3,5)
image20 = edge(image4,'log'); imshow(image20)
MS19 = (sum(sum(((double(image6) - double(image20)).^2))))/(M*N);
RM19 = sqrt(MS19);
title({'Variance = 0.5'})
%Log, MSE, RMSE, Var=1
subplot(2,3,6)
image21 = edge(image5,'log'); imshow(image21)
MS20 = (sum(sum(((double(image6) - double(image21)).^2))))/(M*N);
RM20 = sqrt(MS20);
title({'Variance = 1'})
%#####################################################%
%Edge detection by Canny on Lena Noisy Images
figure('Name','Canny');
subplot(2,3,1)
image6 = edge(Org_Img,'canny',0.1,1); imshow(image6)
title({'Canny' ;'Thresh = 0.1, Sigma = 1'; 'Noise-Free'})
%Canny, MSE, RMSE, Var=0.01
subplot(2,3,2)
image22 = edge(image1,'canny'); imshow(image22)
MS21 = (sum(sum(((double(image6) - double(image22)).^2))))/(M*N);
RM21 = sqrt(MS21);
title({'Variance = 0.01';})
%Canny, MSE, RMSE, Var=0.05
subplot(2,3,3)
image23 = edge(image2,'canny'); imshow(image23)
MS22 = (sum(sum(((double(image6) - double(image23)).^2))))/(M*N);
RM22 = sqrt(MS22);
title({ 'Variance = 0.05';})
%Canny, MSE, RMSE, Var=0.1
subplot(2,3,4)
image24 = edge(image3,'canny'); imshow(image24)
MS23 = (sum(sum(((double(image6) - double(image24)).^2))))/(M*N);
RM23 = sqrt(MS23);
title({'Variance = 0.1';})
%Canny, MSE, RMSE, Var=0.5
subplot(2,3,5)
image25 = edge(image4,'canny'); imshow(image25)
MS24 = (sum(sum(((double(image6) - double(image25)).^2))))/(M*N);
RM24 = sqrt(MS24);
title({'Variance = 0.5';})
%Canny, MSE, RMSE, Var=1
subplot(2,3,6)
image26 = edge(image5,'canny'); imshow(image26)
MS25 = (sum(sum(((double(image6) - double(image26)).^2))))/(M*N);
RM25 = sqrt(MS25);
title({'Variance = 1';})
%#####################################################%
%MSE, RMSE Table Results
sobel_RM = [RM6 RM7 RMS8 RM9 RM10];
sobel_MS = [MS6 MS7 MS8 MS9 MS10];
prewitt_RM= [RM11 RM12 RM13 RM14 RM15];
prewitt_MS = [MS11 MS12 MS13 MS14 MS15];
LoG_RMSE = [RM16 RM17 RM18 RM19 RM20];
LoG_MSE = [MS16 MS17 MS18 MS19 MS20];
canny_RM = [RM21 RM22 RM23 RM24 RM25];
canny_MS = [MS21 MS22 MS23 MS24 MS25];
RM = [sobel_RM ; prewitt_RM; LoG_RMSE; canny_RM]';
MS = [sobel_MS ; prewitt_MS; LoG_MSE; canny_MS]';
%Plot sobel_MSE, prewitt_MSE, LoG_MSE, canny_MSE
figure('Name','Result');
x=[0.01 0.05 0.1 0.5 1];
s1 = sobel_RM; s2 = prewitt_RM; s3 = LoG_RMSE; s4 = canny_RM;
plot(x,s1,'--r',x,s2,'--g', x,s3,'--b',x,s4,':*')
xlabel('Variance'); ylabel('RMSE'); 
legend('Sobel','Prewitt','Laplacian','Canny');
%#####################################################%
%Canny edge detector with two parameters thresh=0.1 and sigma=1%
%Edge are stronger than threshold with sigma and the standard deviation filter %
image00 = edge(Org_Img,'canny',0.1,1);
%Canny edge detector%
figure('Name','Canny, Thresh = 0.1 , Sigma = 1 ');
subplot(2,3,1)
title('Canny edge detector')
%Original Lena image%
imshow(Org_Img)
title('Original Lena image')
%Canny Edge detector with Thresh = 0.1 , Sigma = 1%
subplot(2,3,2); imshow(image00)
title({'Canny Edge detector'; 'Thresh = 0.1 , Sigma = 1'})




