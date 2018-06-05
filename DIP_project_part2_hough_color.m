% clc; clear all;
% 
% % Imcenter method
% %% Figure 1
% I1=imread('DSCN0579Color4_C1.png');
% r1=0.93;
% r2=0.82;
% [centers_dark_1,radii_dark_1]=imfindcircles(I1,[30 55],'ObjectPolarity','dark','Sensitivity',r1,'Method','twostage')
% figure(1); imshow(I1);
% viscircles(centers_dark_1,radii_dark_1,'EdgeColor','b');
% hold on
% viscircles(centers_dark_1,radii_dark_1);
%     plot(centers_dark_1(1,1),centers_dark_1(1,2),'*');
%     plot(centers_dark_1(2,1),centers_dark_1(2,2),'*');
%     plot(centers_dark_1(3,1),centers_dark_1(3,2),'*');
%     plot(centers_dark_1(4,1),centers_dark_1(4,2),'*');
%     plot(centers_dark_1(5,1),centers_dark_1(5,2),'*');
%     plot(centers_dark_1(6,1),centers_dark_1(6,2),'*');
%     plot(centers_dark_1(7,1),centers_dark_1(7,2),'*');
%     plot(centers_dark_1(8,1),centers_dark_1(8,2),'*');
%     plot(centers_dark_1(9,1),centers_dark_1(9,2),'*');
%     plot(centers_dark_1(10,1),centers_dark_1(10,2),'*');
%     plot(centers_dark_1(11,1),centers_dark_1(11,2),'*');
% 
% %% Figure 2
% I2=imread('DSCN0576Color4_C1.png');
% r2=0.93;
% [centers_bright_2,radii_bright_2]=imfindcircles(I2,[30 55],'ObjectPolarity','bright','Sensitivity',r2,'Method','twostage')
% figure(2); imshow(I2);
% viscircles(centers_bright_2,radii_bright_2,'EdgeColor','b');
% hold on
% viscircles(centers_bright_2,radii_bright_2);
%     plot(centers_bright_2(1,1),centers_bright_2(1,2),'*');
%     plot(centers_bright_2(2,1),centers_bright_2(2,2),'*');
%     plot(centers_bright_2(3,1),centers_bright_2(3,2),'*');
%     plot(centers_bright_2(4,1),centers_bright_2(4,2),'*');
%     plot(centers_bright_2(5,1),centers_bright_2(5,2),'*');
%     plot(centers_bright_2(6,1),centers_bright_2(6,2),'*');
%     plot(centers_bright_2(7,1),centers_bright_2(7,2),'*');
%     plot(centers_bright_2(8,1),centers_bright_2(8,2),'*');
%     plot(centers_bright_2(9,1),centers_bright_2(9,2),'*');
%     plot(centers_bright_2(10,1),centers_bright_2(10,2),'*');
%     plot(centers_bright_2(11,1),centers_bright_2(11,2),'*');
% 
% % Figure 3
% I3=imread('DSCN0569Color4_C1.png');
% r3=0.78;
% r31=0.96;
% [centers_dark_3,radii_dark_3]=imfindcircles(I3,[30 65],'ObjectPolarity','dark','Sensitivity',r3,'EdgeThreshold',0.1);
% figure(3); imshow(I3);
% viscircles(centers_dark_3,radii_dark_3,'EdgeColor','b');
% hold on
% viscircles(centers_dark_3,radii_dark_3);
%     plot(centers_dark_3(1,1),centers_dark_3(1,2),'*');
%     plot(centers_dark_3(2,1),centers_dark_3(2,2),'*');
%     plot(centers_dark_3(3,1),centers_dark_3(3,2),'*');
%     plot(centers_dark_3(4,1),centers_dark_3(4,2),'*');
%     plot(centers_dark_3(5,1),centers_dark_3(5,2),'*');
%     plot(centers_dark_3(6,1),centers_dark_3(6,2),'*');
%     plot(centers_dark_3(7,1),centers_dark_3(7,2),'*');
%     plot(centers_dark_3(8,1),centers_dark_3(8,2),'*');
%     plot(centers_dark_3(9,1),centers_dark_3(9,2),'*');
%     plot(centers_dark_3(10,1),centers_dark_3(10,2),'*');
%     plot(centers_dark_3(11,1),centers_dark_3(11,2),'*');
% 
%  
% %% Figure 4
% I4=imread('DSCN0572Color4_C1.png');
% r4=0.88;
% [centers,radii]=imfindcircles(I4,[30 65],'ObjectPolarity','bright','Sensitivity',r4,'EdgeThreshold',0.1)
% figure(4); imshow(I4);
% viscircles(centers,radii,'EdgeColor','b');
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
% %% Figure 5
% I5=imread('DSCN0566Color4_C1.png');
% r5=0.885;
% [centers_bright_5,radii_bright_5]=imfindcircles(I5,[30 55],'ObjectPolarity','bright','Sensitivity',r5,'EdgeThreshold',0.1)
% figure(5); imshow(I5);
% viscircles(centers_bright_5,radii_bright_5,'EdgeColor','b');
% hold on
% viscircles(centers_bright_5,radii_bright_5);
%     plot(centers_bright_5(1,1),centers_bright_5(1,2),'*');
%     plot(centers_bright_5(2,1),centers_bright_5(2,2),'*');
%     plot(centers_bright_5(3,1),centers_bright_5(3,2),'*');
%     plot(centers_bright_5(4,1),centers_bright_5(4,2),'*');
%     plot(centers_bright_5(5,1),centers_bright_5(5,2),'*');
%     plot(centers_bright_5(6,1),centers_bright_5(6,2),'*');
%     plot(centers_bright_5(7,1),centers_bright_5(7,2),'*');
%     plot(centers_bright_5(8,1),centers_bright_5(8,2),'*');
%     plot(centers_bright_5(9,1),centers_bright_5(9,2),'*');
%     plot(centers_bright_5(10,1),centers_bright_5(10,2),'*');
%     plot(centers_bright_5(11,1),centers_bright_5(11,2),'*');
% 
% %% Figure 6
% I6=imread('DSCN0563Color4_C1.png');
% r6=0.90;
% [centers_bright_6,radii_bright_6]=imfindcircles(I6,[30 55],'ObjectPolarity','bright','Sensitivity',r6,'EdgeThreshold',0.1)
% figure(6); imshow(I6);
% viscircles(centers_bright_6,radii_bright_6,'EdgeColor','b');
% hold on
% viscircles(centers_bright_6,radii_bright_6);
%     plot(centers_bright_6(1,1),centers_bright_6(1,2),'*');
%     plot(centers_bright_6(2,1),centers_bright_6(2,2),'*');
%     plot(centers_bright_6(3,1),centers_bright_6(3,2),'*');
%     plot(centers_bright_6(4,1),centers_bright_6(4,2),'*');
%     plot(centers_bright_6(5,1),centers_bright_6(5,2),'*');
%     plot(centers_bright_6(6,1),centers_bright_6(6,2),'*');
%     plot(centers_bright_6(7,1),centers_bright_6(7,2),'*');
%     plot(centers_bright_6(8,1),centers_bright_6(8,2),'*');
%     plot(centers_bright_6(9,1),centers_bright_6(9,2),'*');
%     plot(centers_bright_6(10,1),centers_bright_6(10,2),'*');
%     plot(centers_bright_6(11,1),centers_bright_6(11,2),'*');