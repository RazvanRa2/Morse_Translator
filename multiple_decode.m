function x = multiple_decode(sir)

i = 1;

while sir %cat timp sunt caractere in sir
	[string sir] = strtok(sir, ' '); %desparte sirul in tokens
	x(i) = morse_decode(string); %decodeaza caracterul si il pune in x
	i++;

end

end
