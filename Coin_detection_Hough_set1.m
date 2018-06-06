% clc;
% clear all;
% 
% %% Image set 1
% 
% IS1=imread('DSCN0616Color2_C1.png');
% rS1=0.80;
% [centers_dark_7,radii_dark_7]=imfindcircles(IS1,[25 70],'ObjectPolarity','dark','Sensitivity',rS1,'EdgeThreshold',0.1)
% figure(7); imshow(IS1);
% viscircles(centers_dark_7,radii_dark_7,'EdgeColor','b');
% hold on
% viscircles(centers_dark_7,radii_dark_7);
%     plot(centers_dark_7(1,1),centers_dark_7(1,2),'*');
%     plot(centers_dark_7(2,1),centers_dark_7(2,2),'*');
%     plot(centers_dark_7(3,1),centers_dark_7(3,2),'*');
%     plot(centers_dark_7(4,1),centers_dark_7(4,2),'*');
%     plot(centers_dark_7(5,1),centers_dark_7(5,2),'*');
%     plot(centers_dark_7(6,1),centers_dark_7(6,2),'*');
%     plot(centers_dark_7(7,1),centers_dark_7(7,2),'*');
%     plot(centers_dark_7(8,1),centers_dark_7(8,2),'*');
%     plot(centers_dark_7(9,1),centers_dark_7(9,2),'*');
%     plot(centers_dark_7(10,1),centers_dark_7(10,2),'*');
%     plot(centers_dark_7(11,1),centers_dark_7(11,2),'*');