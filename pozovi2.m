fs = 1000; % frekvencija uzorkovanja
T = 1/fs;
t=0:1/fs:1;
x = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t); %nas zadani signal
y = x + 2*randn(size(t)); % signal sa sumom 
N=1024;
Y=fft(y,N);
Y=Y(1:ceil(N/2)+1); % matlab indeksira od 1, a ne od 0
A=abs(Y);
f=(0:N/2)*fs/N;
figure(1);
plot(t,y);
title('Promatrani val sa šumom');
xlabel('Vrijeme(s)');
ylabel ('Amplituda');
figure(2);
plot(f,A);
title('Val s frekvencijskom domenom');
xlabel('Frekvencija(Hz)');
ylabel ('|Y|');