close all; clear all; clc
load yalefaces

for i=1:size(yalefaces,3)
    X(:,i)=reshape(double(yalefaces(:,:,i)),size(yalefaces,1)*size(yalefaces,2),1);
end
S=cov1(X);
[V,D]=eig(S);
semilogy(real(diag(D)))
sum=0;
k=1;
while sum/trace(D)<.99
    sum=sum+D(k,k);
    k=k+1;
end
k

subplot(451)
imagesc(reshape(mean(X,2),size(yalefaces,1),size(yalefaces,2)));
colormap(gray)
title('0');

for i=1:19
subplot(4,5,i+1);
imagesc(reshape(V(:,i),size(yalefaces,1),size(yalefaces,2)));
colormap(gray)
title(num2str(i));
end