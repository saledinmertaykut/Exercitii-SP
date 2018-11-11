clear all
close all
clc
f0=0.2; %frecventa fundamentala,ce reprezinta un parametru de intrare pentru functia definita
T=1/f0; %este egal cu 5, adica perioada noastra este de 5 secunde
t= 0:0.002:T; %Vom afisa o perioada a semnalului, cu rezolutia temporara de 2ms
figure(1);
plot(t,fc(t,f0)),grid,title('Pentru 2ms'),xlabel('Timp [s]'),ylabel('Amplitudine [V]');
t1=0:0.02:T;%La fel, vom afisa doar o perioada a semnalului, dar cu rezolutia temporara de 20ms
figure(2);
plot(t1,fc(t1,f0)),grid,title('Pentru 20ms'),xlabel('Timp [s]'),ylabel('Amplitudine [V]');
t2=0:0.2:T; %De asemenea, vom afisa doar o perioada a semnalului, dar cu rezolutia temporara de 200ms
figure(3);
plot(t2,fc(t2,f0)),grid,title('Pentru 200ms'),xlabel('Timp [s]'),ylabel('Amplitudine [V]');




