clear all
close all
clc
t=0:0.002:4;
%perioada este de 2secunde => Frecventa este 0.5
F=0.5;
n=25;
s=(0.75*square(2*pi*F*t,n))-0.25;
%square genereaza intre -1 si 1, asa ca trebuie modificat astfel incat
%valorile sa apartina intre -1 si 0.5
%Astfel ca am facut sistemul de ecuatii :
%-x+a=-1
%x+a=0.5, de unde a rezultat a=-0.25 si x=0.75
figure(1);
subplot(3,1,1),plot(t,s),grid,title('Pentru 2ms'),xlabel('Timp [s]'),ylabel('A [V]');
%Am folosit subplot pentru a incarca figura 1 cu 3 subgrafice
t1=0:0.02:40;
s1=(0.75*square(2*pi*F*t1,n))-0.25;
subplot(3,1,2),plot(t,s),grid,title('Pentru 20ms'),xlabel('Timp [s]'),ylabel('A [V]');
t2=0:0.2:400;
s2=(0.75*square(2*pi*F*t2,n))-0.25;
subplot(3,1,3),plot(t,s),grid,title('Pentru 200ms'),xlabel('Timp [s]'),ylabel('A [V]');

