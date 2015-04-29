function [ pe,sa, wo, ph] = suchen( Person, Satza, Wort, Phonem)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

fid = fopen('allsenlist.txt');
data = textscan(fid, '%s', 'delimiter', '\n');
fclose(fid);

fid = fopen('allphonelist.txt');
data2 = textscan(fid, '%s', 'delimiter', '\n');
fclose(fid);

temp=size(data{1});
zeilen=temp(1)+1;

counter=1;
while counter < zeilen
    B=strfind(data{1}(counter), Person);
    B_str=cell2mat(B);
    
    a=cell2mat(data{1}(counter));
    Satz=mat2str(a);
    if B_str > 1
       Satz=strsplit(Satz);
       pe=Satz(1);
       
    end    
    counter=counter+1;
end


while counter < zeilen
    B=strfind(data{1}(counter), Satza);
    B_str=cell2mat(B);
    
    a=cell2mat(data{1}(counter));
    Satz=mat2str(a);
    if B_str > 1
       Satz=strsplit(Satz);
       sa=Satz(1);
    end    
    counter=counter+1;
end

% while counter < zeilen
%     B=strfind(data{1}(counter), Wort);
%     B_str=cell2mat(B);
%     
%     a=cell2mat(data{1}(counter));
%     Satz=mat2str(a);
%     if B_str > 1
%        Satz=strsplit(Satz);
%        wo=Satz(1);
%     end    
%     counter=counter+1;
% end
% 
% while counter < zeilen
%     B=strfind(data2{1}(counter), Phonem);
%     B_str=cell2mat(B);
%     
%     a=cell2mat(data2{1}(counter));
%     Satz=mat2str(a);
%     if B_str > 1
%        Satz=strsplit(Satz);
%        ph=Satz(1);
%     end    
%     counter=counter+1;
% end

end

