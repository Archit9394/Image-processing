clc;
clear all;
cd 'C:\Users\archi\Downloads\Part 1 Cropped Gray Images\Part 1 Cropped Gray Images'
%-------------------------------------------------------------------------

F={'DSCN0563Gray4_C1.png','DSCN0566Gray4_C1.png','DSCN0569Gray4_C1.png','DSCN0572Gray4_C1.png','DSCN0576Gray4_C1.png','DSCN0579Gray4_C1.png',}
G={'image1.png','image2.png','image3.png','image4.png','image5.png','image6.png'}
%% Image 1
im=imread('DSCN0563Gray4_C1.png');
im(im>126 & im<175)=0; im(im>0)=1;  
im=bwareaopen(im,50);
im=imfill(im,'holes');
% figure(1);
% imshow(im,[0,1]);
imwrite(im,'image1.png');

%% Image 2
img2=imread('DSCN0566Gray4_C1.png');
figure(13);
imshow(img2);
img2(img2>64 & img2<137)=1; img2(img2>1)=0;
img2_h1=strel('disk',5,4);
img2_g1=imdilate(img2,img2_h1);
img2_g2=imfill(img2_g1); 
img2_h2=strel('diamond',3);
img2_g3=imerode(img2_g2,img2_h2);
img2_g3=bwareaopen(img2_g3,50);
% figure(3);
% imshow(img2_g3,[0,1]);
imwrite(img2_g3,'image2.png');
 
%% Image 3
img3=imread('DSCN0569Gray4_C1.png');
img3(img3>170)=1;
img3(img3>1)=0;
img3=1-img3;
%figure(4);
img3=imfill(img3);
img3=bwareaopen(img3,50);
% imshow(img3,[0,1]);
% title('Image 3');
imwrite(img3,'image3.png');
%% Image 4
img4=imread('DSCN0572Gray4_C1.png');
img4(img4>132)=0;img4(img4>0)=1;
img4_h1=strel('disk',5,4);
g1=imdilate(img4,img4_h1);
img4_g2=imfill(g1);
img4_h2=strel('diamond',5);
img4_g3=imerode(img4_g2,img4_h2);
img4_g3=bwareaopen(img4_g3,50);
% figure(5);
% imshow(img4_g3,[0,1]);
% title('Image 4');
imwrite(img4_g3,'image4.png');
%% Image 5
img5=imread('DSCN0576Gray4_C1.png');
img5(img5>116)=1; img5(img5>1)=0;
img5=1-img5;
img5=imfill(img5);
img5_h1=[0 1 0;1 1 1;0 1 0];
img5=imdilate(img5,img5_h1);
img5=imfill(img5);
img5=bwareaopen(img5,50);
% figure(6);
% imshow(img5,[]);
% title('Image 5');
imwrite(img5,'image5.png');
%% Image 6
img6=imread('DSCN0579Gray4_C1.png');
img6(img6<130)=0; img6(img6>0)=1;
img6=1-img6;
img6=bwareaopen(img6,100);
h0=(1/25)*ones(5,5);
img6=imfill(img6,'holes');
% figure(7);
% imshow(img6,[0,1]);
% title('Image 6');
imwrite(img6,'image6.png');

R1=imread('DSCN0563Gray4_C1.png');
R2=imread('DSCN0566Gray4_C1.png');
R3=imread('DSCN0569Gray4_C1.png');
R4=imread('DSCN0572Gray4_C1.png');
R5=imread('DSCN0576Gray4_C1.png');
R6=imread('DSCN0579Gray4_C1.png');
R={R1,R2,R3,R4,R5,R6}
A=cell(1,6);
    for j=2:6
        A{j}=imread(sprintf('image%d.png',j));
        figure(j);
        imshow(F{j});
        L = bwlabel(A{j});                  %Label Image
        I=A{j};
        Measurements = regionprops(L,I, 'all');
        no_blobs = size(Measurements, 1);
        Centroids = [Measurements.Centroid];
        centroidsX = Centroids(1:2:end-1);
        centroidsY = Centroids(2:2:end);
        title('Outlines, from bwboundaries()'); 
        axis image; % Make sure image is not artificially stretched because of screen's aspect ratio.
        hold on;
        boundaries = bwboundaries(I);
        numberOfBoundaries = size(boundaries, 1);
        for k = 1 : numberOfBoundaries
            thisBoundary = boundaries{k};
            plot(thisBoundary(:,2), thisBoundary(:,1), 'r', 'LineWidth', 2);
        end
            hold off;

        textFontSize = 14;
        labelShiftX = -7;
        blobECD = zeros(1, no_blobs);

        for k = 1 : no_blobs
            blobArea = Measurements(k).Area;
            blobCentroid = Measurements(k).Centroid;
            blobECD(k) = sqrt(4 * blobArea / pi);
            text(blobCentroid(1)-15, blobCentroid(2), num2str(k));
        end
        hold on;
        for k = 1 : no_blobs         
                plot(centroidsX(k), centroidsY(k), 'r+', 'MarkerSize', 5, 'LineWidth', 1);
        end
 
        set(gcf, 'Units','Normalized','OuterPosition',[0 0 1 1]);
        for k = 1 : no_blobs
                thisBlobsBoundingBox = Measurements(k).BoundingBox;
                subImage = imcrop(R{j}, thisBlobsBoundingBox);
                figure(6+j);
                subplot(4,4,k)
                imshow(subImage);
                caption = sprintf('Coin #%d \n Diameter = %.1f pixels\nArea = %d pixels', ...
                k, blobECD(k),Measurements(k).Area);
                title(caption);
                set(gcf, 'Units','Normalized','OuterPosition',[0 0 1 1]);
        end     
    end