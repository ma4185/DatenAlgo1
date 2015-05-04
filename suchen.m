function [ AusgabeMatrix] = suchen3(sucheNachPHN, sucheNachWOR, sucheNachSAT, sucheNachPER)

fid = fopen('allsenlist.txt');
data = textscan(fid, '%s', 'delimiter', '\n');
fclose(fid);

fid = fopen('allphonelist.txt');
data2 = textscan(fid, '%s', 'delimiter', '\n');
fclose(fid);

Eingabewerte1_3={sucheNachWOR sucheNachSAT sucheNachPER sucheNachPHN};

Zeilen=1:size(data{1});

for Eingaben=1:4
    if ~isempty(Eingabewerte1_3{Eingaben})
        ZeilenTemp = [];
        for idx_temp = Zeilen % 1:length(Zeilen)
            if Eingaben < 4
                B=strfind(data{1}(idx_temp), Eingabewerte1_3{Eingaben}); % Suche in der
            else
                B=strfind(data2{1}(idx_temp), Eingabewerte1_3{Eingaben}); % Suche in der
            end
            if ~isempty(cell2mat(B))
                ZeilenTemp(end+1)=idx_temp;
            end
        end
        Zeilen = ZeilenTemp; 
    end
    
end
% counter=1;
% data
% AusgabeMatrix=cell2mat(data{1}(Zeilen)); % Alle Sätze als Matrix
% Ausgabe=data{1}(Zeilen)
 for i=1:length(Zeilen)
     AusgabeMatrix(i)=data{1}(Zeilen(i));    
 end     
 
end
% for idx_temp=1:length(Zeilen)
%     B=strfind(data2{1}(Zeilen), sucheNachPHN); % Suche in der
%     %                      einzelnen Zeile nach dem gewünschten Suchobjekt, B
%     %                      =Zeichen, wo Übereinstimmung gefunden
%     B_str=cell2mat(B); % Aus dem Cellarray wird eine Matrix
%     %                      gemacht, damit später mit dem Wert gearbeitet
%     %                      werden kann
%     if B_str > 1
%         Zeilen(temp2)=idx_temp;
%         temp2=temp2+1;
%     end
% end
% 
% 
% for i=1:length(Zeilen);
%     Satz=mat2str(GefilterteSaetze);    % Matrix als String (für Stringsplit)
%     if B_str > 1
%         Satz=strsplit(Satz);
%         AusgabePER(temp1)=Satz(1);
%         temp1=temp1+1;
%     else
%         AusgabePER='NIX';
%     end
% end
% 
% end
