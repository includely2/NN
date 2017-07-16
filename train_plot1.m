clear;
clc;
load('C:\Users\think\Documents\MATLAB\NN\c17_74181input.mat');%rawinput
load('C:\Users\think\Documents\MATLAB\NN\c17_74181output.mat');%rawoutput
input = rawinput(1:end,1:end*0.8);%���뼯��80%����ѵ��
output = rawoutput(1,1:end*0.8);%�������80%����ѵ��
testinput = rawinput(1:end,end*0.8+1:end);%���뼯��20%���ڲ���
testoutput = rawoutput(1,end*0.8+1:end);%�������20%���ڲ���
net=newff(input,output,1000,{'tansig','tansig'},'traingd');
%����ѵ���Ĳ���
net.trainParam.epochs = 5000; %�ﵽ5000�����ڣ���ֹͣѵ��
net.trainParam.lr = 0.01; %learning rate
net.trainParam.goal = 0.0001;
net = train(net,input,output);
y = sim(net,testinput);%���в���
p = polyfit(testoutput,y,1);
plot(testoutput,y,'o',testoutput,polyval(p,testoutput));
legend('���ݵ�','�������')
str1 = '������Ϸ��̣�T = ';
str2 = num2str(p(1,1));
str3 = 'R + ';
str4 = num2str(p(1,2));
titlestr = strcat(str1,str2,str3,str4);
title(titlestr,'fontsize',12)
ylabel('ѵ�����T','fontsize',12)
xlabel('ʵ�ʽ��R','fontsize',12)




