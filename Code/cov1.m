function S=cov1(X)
xhat=mean(X,2);
Xc=X-xhat*ones(1,size(X,2));
S=(1/size(X,2))*Xc*Xc';
end