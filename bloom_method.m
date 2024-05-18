clear all;
clc
%{
for i=1:100
     key =ltss(0.848+i*0.001);
    
     value=(bin2dec(int2str(key)))

     
end

%}

load('fvc2004_db3_bitstring.mat')

load('fvc2002_db1_bitstring.mat');
a=fvc2002_db1_bitstring;

for palmindex=1:100;
 
    key =ltss(0.848+palmindex*0.001);
    value=(int2str(key));
    v=((bin2dec(value)))
    v(v==0)=14;
    % v(v==0)=floor(rand(sum(v==0),1)*2)+1;
    v2=v'
 
    for palmj=1:5;
        d=[];
        shuzu=a{palmindex,palmj}
        for temp=1:32;
            kkk=v2(temp)
            c=shuzu(kkk:kkk+127)
            d=cat(2,c,d);
           
        end
        a{palmindex,palmj}=d;
        a;
    end
end

User_Spec =logstic_map(0.368+1*0.001);
for i=1:100

     User_Spec =logstic_map(0.848+i*0.001);
    for j=1:5
    temp=a{i,j};
    tmp= xor(temp(1:32,1:32)',User_Spec);
    xor_a11{i,j}=tmp(1:32,1:32);

    end
end


bloom_filter8=divide_block_map_bloom(xor_a11);
[gen8 imp8] = matching_IoM_bloom(bloom_filter8);
[EER8, mTSR8, mFAR8, mFRR8, mGAR8] = computeperformance(1-gen8, 1-imp8, 0.001);
%performance_plot(gen8,imp8);

