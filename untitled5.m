x=input('Enter the digital sequence'); %Kullanıcıdan veri alma.
N=length(x); %Girilen verinin uzunluğunu belirleme.
t=0.01:0.01:N; %0'dan N'e kadar olan zaman aralığını belirleme.
c=2*sin(10*pi*t); %Taşıyıcı sinyalini belirleme.

for i=1:1:N %For döngüsü ile oluşan vektörleri darbe sinyaline çevirme.
    m((i-1)*100+1:i*100)=x(i);

end
y=c.*m; %Grafik çizdirme
subplot(3,1,1);
plot(t,m);
xlabel('time');
ylabel('amplitude');
title('Data Signal');
axis([0 N -0.2 2]);
subplot(3,1,2);
plot(t,c);
xlabel('time');
ylabel('amplitude');
title('Carrier Signal');
subplot(3,1,3);
plot(t,y);
xlabel('time');
ylabel('amplitude');
title('Modulated Signal');
