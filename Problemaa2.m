clear all
close all
clc
t=0:0.002:6;
f=1/3; %Frecventa este inversul perioadei, deci este 1/3
w=2*pi*f;%Am definit pulsatia w
s=0.4*(sin(w*t)+ abs(sin(w*t)));%Sinusul este definit pe [-1,1],astfel ca am inmultit semnalul
               %cu 0.4, deoarece abs returneaza modulul, iar pentru partea
               %negativa suma din paranteza va fi nula
figure(1);   
plot(t,s),grid,title('Pentru 2ms'),xlabel('Timp [s]'),ylabel('Amplitudine [V]');
t1=0:0.02:6;
s1=0.4*(sin(w*t1)+abs(sin(w*t1)));
figure(2);
plot(t1,s1),grid,title('Pentru 20ms'),xlabel('Timp[s]'),ylabel('Amplitudine [V]');
t2=0:0.2:6;
s2=0.4*(sin(w*t2)+abs(sin(w*t2)));
figure(3);
plot(t2,s2),grid,title('Pentru 200ms'),xlabel('Timp[s]'),ylabel('Amplitudine [V]');


