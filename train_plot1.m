clear;
clc;
load('C:\Users\think\Documents\MATLAB\NN\c17_74181input.mat');%rawinput
load('C:\Users\think\Documents\MATLAB\NN\c17_74181output.mat');%rawoutput
input = rawinput(1:end,1:end*0.8);%输入集的80%用于训练
output = rawoutput(1,1:end*0.8);%输出集的80%用于训练
testinput = rawinput(1:end,end*0.8+1:end);%输入集的20%用于测试
testoutput = rawoutput(1,end*0.8+1:end);%输出集的20%用于测试
net=newff(input,output,1000,{'tansig','tansig'},'traingd');
%设置训练的参数
net.trainParam.epochs = 5000; %达到5000个周期，则停止训练
net.trainParam.lr = 0.01; %learning rate
net.trainParam.goal = 0.0001;
net = train(net,input,output);
y = sim(net,testinput);%进行测试
p = polyfit(testoutput,y,1);
plot(testoutput,y,'o',testoutput,polyval(p,testoutput));
legend('数据点','线性拟合')
str1 = '线性拟合方程：T = ';
str2 = num2str(p(1,1));
str3 = 'R + ';
str4 = num2str(p(1,2));
titlestr = strcat(str1,str2,str3,str4);
title(titlestr,'fontsize',12)
ylabel('训练结果T','fontsize',12)
xlabel('实际结果R','fontsize',12)




