clear;close all;


k=rand(10,2);
R=0.2;
v0=rand(10,2)-0.5;
tmax=10;
tstep=0.1;

figure
plot(k(:,1),k(:,2),'v')
xlim([-10 10]);
ylim([-10 10]);
hold on;

for t=1:tmax/tstep
    
    for i=1:length(k)
    k(i,1)=k(i,1)+v0(i,1)*tstep;
    k(i,2)=k(i,2)+v0(i,2)*tstep;
    end
    
    clf;
    plot(k(:,1),k(:,2),'v');
    pause(0.1)
end

