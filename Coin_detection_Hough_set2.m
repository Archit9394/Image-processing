% %% Image set 2
% 
% 
% IS2=imread('DSCN0582Color4_C1.png');
% rS2=0.8;
% [centers_dark,radii_dark]=imfindcircles(IS2,[25,95],'ObjectPolarity','dark','Sensitivity',rS2,'EdgeThreshold',0.1)
% [centers_bright,radii_bright]=imfindcircles(IS2,[5,35],'ObjectPolarity','bright','Sensitivity',rS2,'EdgeThreshold',0.1)
% figure(8);imshow(IS2);
% viscircles(centers_dark,radii_dark,'EdgeColor','b');
% viscircles(centers_bright,radii_bright,'EdgeColor','r');
% hold on
% viscircles(centers_bright,radii_bright);
%     plot(centers_bright(1,1),centers_bright(1,2),'*');
%     plot(centers_bright(2,1),centers_bright(2,2),'*');
%     plot(centers_bright(3,1),centers_bright(3,2),'*');
%     plot(centers_bright(4,1),centers_bright(4,2),'*');
%     plot(centers_bright(5,1),centers_bright(5,2),'*');
% %     plot(centers_bright(6,1),centers_bright(6,2),'*');
% %     plot(centers_bright(7,1),centers_bright(7,2),'*');
% %     plot(centers_bright(8,1),centers_bright(8,2),'*');
% %     plot(centers_bright(9,1),centers_bright(9,2),'*');
% %     plot(centers_bright(10,1),centers_bright(10,2),'*');
% %     plot(centers_bright(11,1),centers_bright(11,2),'*');
%  hold on
%  viscircles(centers_dark,radii_dark);
%     plot(centers_dark(1,1),centers_dark(1,2),'*');
%     plot(centers_dark(2,1),centers_dark(2,2),'*');
%     plot(centers_dark(3,1),centers_dark(3,2),'*');
%     plot(centers_dark(4,1),centers_dark(4,2),'*');
%     plot(centers_dark(5,1),centers_dark(5,2),'*');
%     plot(centers_dark(6,1),centers_dark(6,2),'*');
%     plot(centers_dark(7,1),centers_dark(7,2),'*');
%     plot(centers_dark(8,1),centers_dark(8,2),'*');
%     plot(centers_dark(9,1),centers_dark(9,2),'*');
%     plot(centers_dark(10,1),centers_dark(10,2),'*');
%     plot(centers_dark(11,1),centers_dark(11,2),'*');