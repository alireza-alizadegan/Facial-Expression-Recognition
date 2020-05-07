close all; clear all; clc
load yalefaces
for i=1:size(yalefaces,3)
x=double(yalefaces(:,:,i));
imagesc(x);
colormap(gray)
drawnow
% pause(.1)
end