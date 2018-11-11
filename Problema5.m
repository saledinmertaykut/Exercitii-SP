clear all
close all
clc
%Perioada este de 4 secunde, deci vom defini frecventa ca inverul perioadei
f=1/4;
t1=0:0.002:8;%Vom afisa 2 perioade ale semnalului
%definim pulsatia, ca in cazul anterior
w=2*pi*f;
s1=1.5*abs(sin(w*t1));
figure(1);
plot(t1,s1),title('Semnal redresat dulbu alternanta pentru 2ms'),grid,xlabel('Timp[s]'),ylabel('Amplitudine [V]');
t2=0:0.02:8;
s2=1.5*abs(sin(w*t2));
figure(2);
plot(t2,s2),title('Semnal redresat dublu alternanta pentru 20ms'),grid,xlabel('Timp[s]'),ylabel('Amplitudine [V]');
t3=0:0.2:8;
s3=1.5*abs(sin(w*t3));
figure(3);
plot(t3,s3),title('Semnal redresat dublu alternanta pentru 200ms'),grid,xlabel('Timp[s]'),ylabel('Amplitudine [V]');
%Pentru a demonstra ca semnalul chiar reprezinta semnalul redresat dublu
%alternanta cu perioada de 4 secunde vom afisa semnalul fara a il redresa
t4=0:0.02:8;
s4=1.5*sin(w*t2);
figure(4);
plot(t4,s4),title('Semnal neredresat cu perioada de 4secunde si rezolutia temporara 20ms'),grid,xlabel('Timp[s]'),ylabel('Amplitudine [V]');


