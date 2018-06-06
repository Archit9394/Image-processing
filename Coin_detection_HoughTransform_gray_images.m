% clc;
% clear all;
%
% %% Gray Image 1
% IG1=imread('DSCN0579Gray4_C1.png');
% r=0.93;
% r1=0.85;
% [centers,radii]=imfindcircles(IG1,[30,55],'ObjectPolarity','dark','Sensitivity',r,'EdgeThreshold',0.1);
% figure(9);
% imshow(IG1);
% viscircles(centers,radii,'EdgeColor','r');
% hold on 
% viscircles(centers,radii);
%     plot(centers(1,1),centers(1,2),'*');
%     plot(centers(2,1),centers(2,2),'*');
%     plot(centers(3,1),centers(3,2),'*');
%     plot(centers(4,1),centers(4,2),'*');
%     plot(centers(5,1),centers(5,2),'*');
%     plot(centers(6,1),centers(6,2),'*');
%     plot(centers(7,1),centers(7,2),'*');
%     plot(centers(8,1),centers(8,2),'*');
%     plot(centers(9,1),centers(9,2),'*');
%     plot(centers(10,1),centers(10,2),'*');
%     plot(centers(11,1),centers(11,2),'*');
%     
% %% Gray Image 2
% IG2=imread('DSCN0576Gray4_C1.png');
% r=0.93;
% [centers,radii]=imfindcircles(IG2,[30,55],'ObjectPolarity','dark','Sensitivity',r,'EdgeThreshold',0.1);
% [centers_bright,radii_bright]=imfindcircles(IG2,[30,55],'ObjectPolarity','bright','Sensitivity',r,'EdgeThreshold',0.1);
% figure(10);
% imshow(IG2);
% viscircles(centers_bright,radii_bright,'EdgeColor','r')
% hold on
% viscircles(centers_bright,radii_bright);
%     plot(centers_bright(1,1),centers_bright(1,2),'*');
%     plot(centers_bright(2,1),centers_bright(2,2),'*');
%     plot(centers_bright(3,1),centers_bright(3,2),'*');
%     plot(centers_bright(4,1),centers_bright(4,2),'*');
%     plot(centers_bright(5,1),centers_bright(5,2),'*');
%     plot(centers_bright(6,1),centers_bright(6,2),'*');
%     plot(centers_bright(7,1),centers_bright(7,2),'*');
%     plot(centers_bright(8,1),centers_bright(8,2),'*');
%     plot(centers_bright(9,1),centers_bright(9,2),'*');
%     plot(centers_bright(10,1),centers_bright(10,2),'*');
%     plot(centers_bright(11,1),centers_bright(11,2),'*');
%  
% %% Gray Image 3
% IG3=imread('DSCN0572Gray4_C1.png');
% r=0.93;
% % [centers,radii]=imfindcircles(IG3,[30,55],'ObjectPolarity','dark','Sensitivity',r,'EdgeThreshold',0.1);
% [centers_bright,radii_bright]=imfindcircles(IG3,[30,55],'ObjectPolarity','bright','Sensitivity',r,'EdgeThreshold',0.1);
% figure(11);
% imshow(IG3);
% viscircles(centers_bright,radii_bright,'EdgeColor','r')
% hold on
% viscircles(centers_bright,radii_bright);
%     plot(centers_bright(1,1),centers_bright(1,2),'*');
%     plot(centers_bright(2,1),centers_bright(2,2),'*');
%     plot(centers_bright(3,1),centers_bright(3,2),'*');
%     plot(centers_bright(4,1),centers_bright(4,2),'*');
%     plot(centers_bright(5,1),centers_bright(5,2),'*');
%     plot(centers_bright(6,1),centers_bright(6,2),'*');
%     plot(centers_bright(7,1),centers_bright(7,2),'*');
%     plot(centers_bright(8,1),centers_bright(8,2),'*');
%     plot(centers_bright(9,1),centers_bright(9,2),'*');
%     plot(centers_bright(10,1),centers_bright(10,2),'*');
%     plot(centers_bright(11,1),centers_bright(11,2),'*');
% 
% % Gray Image 4
% IG4=imread('DSCN0569Gray4_C1.png');
% r=0.780;
% [centers,radii]=imfindcircles(IG4,[30,55],'ObjectPolarity','dark','Sensitivity',r,'EdgeThreshold',0.1);
% %[centers_bright,radii_bright]=imfindcircles(IG4,[30,55],'ObjectPolarity','bright','Sensitivity',r,'EdgeThreshold',0.1);
% figure(12);
% imshow(IG4);
% %viscircles(centers_bright,radii_bright,'EdgeColor','r')
% viscircles(centers,radii,'EdgeColor','r')
% hold on 
% viscircles(centers,radii);
%     plot(centers(1,1),centers(1,2),'*');
%     plot(centers(2,1),centers(2,2),'*');
%     plot(centers(3,1),centers(3,2),'*');
%     plot(centers(4,1),centers(4,2),'*');
%     plot(centers(5,1),centers(5,2),'*');
%     plot(centers(6,1),centers(6,2),'*');
%     plot(centers(7,1),centers(7,2),'*');
%     plot(centers(8,1),centers(8,2),'*');
%     plot(centers(9,1),centers(9,2),'*');
%     plot(centers(10,1),centers(10,2),'*');
%     plot(centers(11,1),centers(11,2),'*');
%     
% %% Gray Image 5
% IG5=imread('DSCN0566Gray4_C1.png');
% r=0.82;
% r1=0.80
% [centers,radii]=imfindcircles(IG5,[30,55],'ObjectPolarity','dark','Sensitivity',r,'EdgeThreshold',0.1);
% [centers_bright,radii_bright]=imfindcircles(IG5,[30,55],'ObjectPolarity','bright','Sensitivity',r1,'EdgeThreshold',0.1);
% figure(13);
% imshow(IG5);
% viscircles(centers_bright,radii_bright,'EdgeColor','b')
% viscircles(centers,radii,'EdgeColor','r')
% hold on 
% viscircles(centers,radii);
%     plot(centers(1,1),centers(1,2),'*');
%     plot(centers(2,1),centers(2,2),'*');
%     plot(centers(3,1),centers(3,2),'*');
%     plot(centers(4,1),centers(4,2),'*');
%     plot(centers(5,1),centers(5,2),'*');
%     plot(centers(6,1),centers(6,2),'*');
%     plot(centers(7,1),centers(7,2),'*');
%     plot(centers(8,1),centers(8,2),'*');
%     plot(centers(9,1),centers(9,2),'*');
% hold on
%     plot(centers_bright(1,1),centers_bright(1,2),'*');
%     plot(centers_bright(2,1),centers_bright(2,2),'*');
% 
% %% Gray Image 6
% IG6=imread('DSCN0563Gray4_C1.png');
% r=0.82;
% r1=0.85
% [centers_bright,radii_bright]=imfindcircles(IG6,[30,55],'ObjectPolarity','bright','Sensitivity',r1,'EdgeThreshold',0.1);
% figure(14);
% imshow(IG6);
% viscircles(centers_bright,radii_bright,'EdgeColor','b')
% hold on
% viscircles(centers_bright,radii_bright);
%     plot(centers_bright(1,1),centers_bright(1,2),'*');
%     plot(centers_bright(2,1),centers_bright(2,2),'*');
%     plot(centers_bright(3,1),centers_bright(3,2),'*');
%     plot(centers_bright(4,1),centers_bright(4,2),'*');
%     plot(centers_bright(5,1),centers_bright(5,2),'*');
%     plot(centers_bright(6,1),centers_bright(6,2),'*');
%     plot(centers_bright(7,1),centers_bright(7,2),'*');
%     plot(centers_bright(8,1),centers_bright(8,2),'*');
%     plot(centers_bright(9,1),centers_bright(9,2),'*');
%     plot(centers_bright(10,1),centers_bright(10,2),'*');
%     plot(centers_bright(11,1),centers_bright(11,2),'*');