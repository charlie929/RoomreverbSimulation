function [T_60,g] = reverbtime(a1,L,W,D)
%generate the parameter of reverb time
% a1=0.03 average sound absorption coefficient 
% a2=0.1 attenuation coefficient on 10kHz
%T_60: reverb time
% based on Sabine eqation
v=L*W*D;
s=L*W*2+L*D*2+W*D*2;
T_60 = (0.16*v)/(a1*s);
g=(1-0.336/T_60)*(1-a2);
end

