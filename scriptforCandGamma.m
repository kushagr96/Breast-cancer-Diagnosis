[Y,X] = libsvmread('data.train');
C = [2^-10 2^-8 2^-6 2^-5 2^-4 2^-3 2^-2 2^-1 2^0 2^1 2^2 2^3 2^4 2^5 2^6 2^7 2^8 2^9 2^10 2^11 2^12 2^13 2^14 2^15 2^16];
G = [2^-20 2^-18 2^-16 2^-14 2^-12 2^-10 2^-8 2^-6 2^-4 2^-2 2^0 2^2 2^4 2^6 2^8 2^10];
accuracy  = zeros (length(C),length(G));
for i=1:length(C)
    for j=1:length(G)
        opt = sprintf('-s 0 -t 2 -c %i -g %i -v 10',C(i),G(j));
        accuracy(i,j) = svmtrain(Y,X(:,[6 3 2 7 1 8 4]),opt);
    end
end

%accuracy

[M I1]= max(accuracy);
[A I2]=max(M);
C(I1(I2))
G(I2)
accuracy(I1(I2),I2)