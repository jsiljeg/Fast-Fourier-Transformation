fs = 150;
t=0:1/fs:1;
f = 5; % kreirat cemo sinusni val od 5Hz
x=sin(2*pi*f*t); %naša funkcija
N=1024;
X=fft(x,N);
X=X(1:N/2+1); % matlab indeksira od 1, a ne od 0
A=abs(X);
f=(0:N/2)*fs/N;
figure(1);
plot(t,x);
title('Sinusni val');
xlabel('Vrijeme(s)');
ylabel ('Amplituda');
figure(2);
plot(f,A);
title('Sinusni val s frekvencijskom domenom');
xlabel('Frekvencija(Hz)');
ylabel ('|X|');