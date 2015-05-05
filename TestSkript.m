% Script to test the function suchen.m 
% Author: Nora Jürgens, Hanna Moehle, Maren Osterloh (C)

clear;
close all;
clc;

%------------Your script starts here-------- 

% Eingabe von einem Eingabeparameter:
% in allsenlist.txt
[Datei,Saetze]=suchen('', 'dwarf', '', '');
%[Datei,Saetze]=suchen('which church do the smiths worship in','','','');
%[Datei,Saetze]=suchen('','','marc','');
% in allphonelist.txt
%[Datei,Saetze]=suchen('','','','ih');

% Eingabe einer Kombination von zwei Eingabeparameter
%[Datei,Saetze]=suchen('','','mcpm','pau');

% Eingabe einer Kombination von drei Eingabeparameter
%[Datei,Saetze]=suchen('','terms','fvmh','ix');

% Eingabe einer Kombination aller Eingabeparameter
%[Datei,Saetze]=suchen('she had your dark suit in greasy wash water all year','she','mcpm','sh');

% Eingabe von mindestens einem Wort, welches nicht in den Dateien vorkommt
%[Datei,Saetze]=suchen('please shorten this skirt for joyce ','','Dateiname','ix');
%[Datei,Saetze]=suchen('','Wort','marc','ix');
%[Datei,Saetze]=suchen('Das ist ein falscher Satz.','the','','ix');

% Eingabe von einem Phonem, welches nicht in den Dateien vorkommt
%[Datei,Saetze]=suchen('','black','mae','ggs');

% Eingabe von leeren Strings
%[Datei,Saetze]=suchen('','','','');

Datei %Ausgabe der Dateinamen
Saetze %Ausgabe ganze Sätze

%--------------------Licence ---------------------------------------------
%    <TestScript.m to test the function suchen.m >
%    Copyright (C) <2015>  <Nora Jürgens, Hanna Möhle, Maren Osterloh>
% 
%    This program is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.
% 
%     <TestSkript.m>  Copyright (C) <2015>  <Nora Jürgens, Hanna Möhle, Maren Osterloh>
% 
%     This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
%     This is free software, and you are welcome to redistribute it
%     under certain conditions; type `show c' for details.