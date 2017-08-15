function x = multiple_encode(str)
x='';
temp = '';%retine temporar codul pt un singur caracter
i = 1;
n = length(str); %preia lungimea sirului
k = 1;
for i = 1:n %pentru fiecare caracter din sir

	buffer = morse_encode(str(i)); %in buffer se pune codul caracterului
	temp = strcat(temp, buffer); %in temp se copiaza buffer
	temp(length(temp) + 1) = '^'; %si se adauga (temporar) ^
end

for i = 1:length(temp) - 1

	if temp(i) == '^' % ^ e doar placeholder pentru spatiu
		x(i) = ' '; %adauga spatiu dupa fiecare cod
	else
		x(i) = temp(i);  %copiaza codul morse in sirul rezultat

end

end
