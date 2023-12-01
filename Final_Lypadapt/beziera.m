function value = beziera( afra, s )
%#codegen
[n, m] = size(afra);
value=zeros(n,1);
M = m-1;
if M<2
    return;
elseif M==3
    k=[6 6];
elseif M==4
    k=[12 24 12];
elseif M==5
    k = [20 60 60 20];
elseif M==6
    k=[30 120 180 120 30];
elseif M== 7
    k = [42   210   420   420   210    42];
elseif M==8
    k = [56         336         840        1120         840         336          56];
elseif M==9
    k = [ 72         504        1512        2520        2520        1512         504          72];
elseif M==20
    k = [ 380        6840       58140      310080     1162800     3255840     7054320    12093120    16628040,...
    18475600    16628040    12093120     7054320     3255840     1162800      310080       58140        6840,...
         380];
else
    k=M*(M-1)*binom(M-2);
end
%%
x = ones(1, M-1);
y = ones(1, M-1);
for i=1:M-2
    x(i+1)=s*x(i);
    y(i+1)=(1-s)*y(i);
end
for i=1:n
   value(i) = 0;
   for j=1:M-1
      value(i) = value(i) + (afra(i,j+2)-2*afra(i,j+1)+afra(i,j)) *k(j)*x(j)*y(M-j);
   end
end


  