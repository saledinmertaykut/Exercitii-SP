function result=fc(t,f0)
T=1/f0;
result=zeros(1,length(t));
for time_index = 1:length(t)
    if mod(t(time_index),T)<T/6
        result(time_index)=mod(t(time_index),T)/(T/6);
    else if mod(t(time_index),T)>T/6 && mod(t(time_index),T)<4*T/6
            result(time_index)=-mod(t(time_index),T)/(T/6)+2;
        else if mod(t(time_index),T)>4*T/6 && mod(t(time_index),T)<T
                result(time_index)=mod(t(time_index),T)/(T/6)-6;
            end
        end
    end
end
end
%Comentarii:
%Functia switching fc este definita astfel:
%fc(t)= 1, t apartine (0/T/2)
%       -1, t apartine (T/2,T)
%f0=frecventa fundamentala, astfel ca T este perioada semnalului ce are ca
%parametru de iesire result-ul ,ce reprezinta axa amplitudinilor <=> axa OY
%result acesta va initiazila un vector cu elementele 0 cu numar de elemente
%lungimea vectorului t (ce va reprezenta axa timpului<=> axa OX)
%In for vom modifica valoarea parametrului de iesire result in functie de t
%Am editat funcia switching pentru a avea un rezultat asemanator cu desenul
%creat cu Graphing calculator