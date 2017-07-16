function [ result ] = scaling0_1( rawdata )
%scaling0_1 实现向量中数据的0-1归一化
%   rawdata 原始数据，行向量
%   result  归一化结果，行向量
maxVar = max(rawdata); %找到原始数据中的最大值
minVar = min(rawdata); %找到原始数据中的最小值
result = (rawdata - minVar)/(maxVar - minVar);
%[raw(i)-raw(min)] / [raw(max)-raw(min)] =
%[result(i)-result(min)] / [result(max)-result(min)]
%result(min) = 0
%result(max) = 1
end

