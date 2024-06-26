
function out=method_5_Bloom(in)
count=0;
out={};

 
 

 
for palmindex=1:600
        key =ltttsss(0.848+1*0.001);
        value=(int2str(key));
        v=((bin2dec(value)));
        v(v==0)=256;
        v2=v';%% random value from ltss 
   
    for palmj=1:10
        block_index=[];
        bloom_filter = zeros(4096,1); %% this is bloom filter 1 to 4096
        block_tmp=in{palmindex,palmj};
        for i=1:4
          for j=1:4
            block_index=block_tmp((i-1)*8+1:i*8,(j-1)*8+1:j*8);
             for k=1:8
                 tmp=bin2dec(int2str( block_index(:,k)'));
                 tmp(tmp==0)=256;
                 tmp=v2(tmp);
                 if bloom_filter(tmp)==0
                    bloom_filter(tmp)=1;   
                 else
                     while(bloom_filter(tmp)==1) %% if the tmp is same , tmp move to one position
                         t=tmp+palmindex;
                         t(t==4045)=t+1;
                         tmp=mod(t,4045);
                     end
                     bloom_filter(tmp)=1;
                 end 
             end
            end
        end
 
          bloom_filter=reshape(bloom_filter,[256,16]);
          out{palmindex,palmj}=bloom_filter;
   
    end
end
%{
function out=divide_block_map_bloom(in)
 
out={};
for palmindex=1:100
    for palmj=1:5
        block_index=[];
        bloom_filter = zeros(256,16);
        block_tmp=in{palmindex,palmj};
        for i=1:4
          for j=1:4
            block_index=block_tmp((i-1)*8+1:i*8,(j-1)*8+1:j*8);
            %每块有8个bloom滤波器
             for k=1:4
                tmp=bin2dec(int2str( block_index(:,k)'));  
                if bloom_filter(tmp+1,(i-1)*4+j)==0
                  bloom_filter(tmp+1,(i-1)*4+j)=1;
                 
                else
                    while(bloom_filter(tmp+1,(i-1)*4+j)==1)
                        tmp=tmp+1;
                        tmp=mod(tmp,128);
                    end
                    bloom_filter(tmp+1,(i-1)*4+j)=1;
                end
  
             end
          end
       end
       
      out{palmindex,palmj}=bloom_filter; 
    end
end   

%} 