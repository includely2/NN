function [ result ] = scaling0_1( rawdata )
%scaling0_1 ʵ�����������ݵ�0-1��һ��
%   rawdata ԭʼ���ݣ�������
%   result  ��һ�������������
maxVar = max(rawdata); %�ҵ�ԭʼ�����е����ֵ
minVar = min(rawdata); %�ҵ�ԭʼ�����е���Сֵ
result = (rawdata - minVar)/(maxVar - minVar);
%[raw(i)-raw(min)] / [raw(max)-raw(min)] =
%[result(i)-result(min)] / [result(max)-result(min)]
%result(min) = 0
%result(max) = 1
end

