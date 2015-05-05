function [ Datei, Saetze] = suchen(sucheNachSAT, sucheNachWOR, sucheNachPER, sucheNachPHN)
% Funktion durchsucht eine Datenbank nach den EIngabeparametern
% Usage [ Datei, Saetze] = suchen(sucheNachSAT, sucheNachWOR, sucheNachPER, sucheNachPHN)
% Input Parameter:
%	 sucheNachSAT: 		zu suchender Satz 
%    sucheNachWOR:      zu suchendes Wort 
%    sucheNachPER:      zu suchende Person 
%    sucheNachPHN:      zu suchendes Phonem 
% Output Parameter:
%	 Datei:             Dateien, in denen eine Übereinstimmung der
%                       Suchbegriffe gefunden wurde
%    Saetze:            Sätze, in denen eine Übereinstimmung der
%                       Suchbegriffe gefunden wurde
%------------------------------------------------------------------------ 
% Example: [ Datei, Saetze] = suchen(sucheNachSAT, sucheNachWOR, sucheNachPER, sucheNachPHN)

% Author: Nora Jüergens, Hanna Möhle, Maren Osterloh (c) TGM @ Jade Hochschule applied licence see EOF 

%------------Our function implementation here--------------------------- 

fid = fopen('allsenlist.txt'); %öffnen der .tex Datei in welcher alle Sätze
%                            der Datenbank enthalten sind
data = textscan(fid, '%s', 'delimiter', '\n'); % Daten aus 'allsenlist.txt'
%                            werden in data gespeichert
fclose(fid); %schließen der .tex Datei


fid = fopen('allphonelist.txt');
data2 = textscan(fid, '%s', 'delimiter', '\n');% Daten aus 
%                           'allphonelist.txt' werden in data2 gespeichert
fclose(fid);

% Alle Eingabewerte werden in ein Cell Array zusammengefügt
Eingabewerte={sucheNachSAT sucheNachWOR sucheNachPER sucheNachPHN};

Zeilen=1:size(data{1}); % Erstellung eines Vektors, Länge entspricht der 
%                           Anzahl von Datein

EingMatrix=cell2mat(Eingabewerte); % Eingabewerte wird als Matrix umgewandelt

% Falls keine Eingabe stattgefunden hat, wird dies im Command Window (CW) ausgegeben
% In die Variablen Saetze und Datei werden leere Strings gespeichert. 
if isempty(EingMatrix)
    disp('Es wurden keine Parameter festgelegt. Bitte überprüfen Sie die Eingabe');
    Saetze='';
    Datei='';
else   
    % Hier werden die einzelnen Eingabeparameter (1-4) durchlaufen
    for Eingaben=1:4
        % Wenn ein Parameter nicht leer ist, wird eine leere Matrix in
        % ZeilenTemp erzeugt.
        if ~isempty(Eingabewerte{Eingaben})
            ZeilenTemp = [];
            % Spaltet die Zeile auf, sodass jedes Wort ein einzelner String
            % ist, damit der Dateiname seperat Ausgegeben wird
            for idx_temp = Zeilen 
                Data=data{1}{idx_temp};
                Data_split=strsplit(Data);
                Data2=data2{1}{idx_temp};
                Data2_split=strsplit(Data2);
                % Vergleich der Eingabeparameter mit der Datenbank
                % In Position wird die Postion des gefunden Wortes
                % gespeichert
                if Eingaben == 1
                    Position=strfind(data{1}(idx_temp), Eingabewerte{Eingaben});
                elseif Eingaben == 2 
                    Position=strfind(Data_split(2:end), Eingabewerte{Eingaben});
                elseif Eingaben == 3 
                    Position=strfind(Data_split(1), Eingabewerte{Eingaben});
                elseif Eingaben == 4
                    Position=strfind(Data2_split(2:end), Eingabewerte{Eingaben});
                end 
                % Wenn eine Position gespeichert ist, wird durch idx_temp
                % die entsprechende Zeile in ZeilenTemp gesichert
                if ~isempty(cell2mat(Position))
                    ZeilenTemp(end+1)=idx_temp;
                end
            end
            Zeilen = ZeilenTemp; 
        end

    end
    Saetze=data{1}(Zeilen); % Sätze der möglichen Kombinationen der Suchparameter 
    Datei={};
    % Wenn keine Übereinstimmung gefunden wurde, wird dies im CW ausgegeben
    if isempty(Saetze)
        disp('Es wurde keine Übereinstimmung gefunden.')
        disp('Entweder ist eins der Eingabeparameter in keiner Datei enthalten,')  
        disp('oder bei Kombination mehrerer Eingabeparameter gibt es KEINE Übereinstimmung!')
        disp('Bitte überprüfen Sie die Eingabe.')
    else
        % Datei wird mit den Dateinamen gefüllt
        for i=1:length(Zeilen)
            SatzString=data{1}{Zeilen(i)}; 
            SatzGetrennt=strsplit(SatzString);
            Datei(i)=SatzGetrennt(1);
        end     
    end
end
end


%--------------------Licence ---------------------------------------------
% <Funktion suchen.m durchsucht eine Datenbank nach den EIngabeparametern>
% Copyright (C) <2015>  <Nora Jüergens, Hanna Möhle, Maren Osterloh>
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
% <suchen.m>  Copyright (C) <2015>  <Nora Jüergens, Hanna Möhle, Maren Osterloh>
% 
% This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
% This is free software, and you are welcome to redistribute it
% under certain conditions; type `show c' for details.
