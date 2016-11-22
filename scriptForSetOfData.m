[Ytest Xtest] = libsvmread('50%testData.train');
[Ytrain Xtrain] = libsvmread('50%trainData.train');

X1 = Xtrain(:,6);%91.4%
X2 = Xtrain(:,[6 3]);%97.36%
X3 = Xtrain(:,[6 3 2]);%98.53%
X4 = Xtrain(:,[6 3 2 7]);%98.5337%
X5 = Xtrain(:,[6 3 2 7 1]);%98.5337
X6 = Xtrain(:,[6 3 2 7 1 8 ]);%98.5337%
X7 = Xtrain(:,[6 3 2 7 1 8 4 ]);%98.827%c=16384,g=6.1035e-005
X8 = Xtrain(:,[6 3 2 7 1 8 4 5]);%98.827%c=2,g=0.0039062
X9 = Xtrain(:,[6 3 2 7 1 8 4 5 9]);%98.827%c=0.5,g=0.0039062

acc = zeros(9);
%model1 = svmtrain(Ytrain,X9,'-s 0 -t 2 -c 0.5 -g 0.0039062 -v 10');
%svmpredict(Ytest, Xtest, model1);
model2 = svmtrain(Ytrain,X6,'-s 0 -t 2 -c 0.5 -g 0.0039062');
svmpredict(Ytest, Xtest, model2);
