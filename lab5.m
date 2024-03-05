clear all;
clc
clf

%n1=0:1:3;
%x=[1,2,3,1];
%n2=-1:1:2;
%h=[1,2,1,-1];

n1= input('Enter the range of sequence x:');
x= input('Enter the value of first sequence x(n):');
n2= input('Enter the range of sequence h:');
h= input('Enter the value of second sequence h(n):');
z=[]; 
for i=1:1:length(x)
 g = x.*h(i);
 z = [z ; g];
end
[r,c]=size(z); m=r+c; t=2; sum=0;
y=[];
while(t<=m)
    for i=1:r
        for j=1:c
            if i+j==t
                sum=sum+z(i,j);
            end
        end
    end
    t=t+1;
    y = [y sum];
    sum=0;
end
display(y);
n=min(n1)+min(n2):max(n1)+max(n2);
stem(n,y);



    
          
    
                



