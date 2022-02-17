# Matlab---Edge-detection
Edge detectior: Sobel, Prewitt, Log, Canny

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
