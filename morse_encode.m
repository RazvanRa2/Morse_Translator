function x = morse_encode(c)

	tree = morse(); %alege tot codul

	s = tree{2}; %alege partea din stanga radacinii

	d = tree{3}; %alege partea din dreapta radacinii

	temp=''; %in temp se retine temporar tot durmul cautarii pana la caracter
	poz = 1;
	ended = 0;
	nivel = 1;
	[temp poz ended nivel]= actual_morse_encode(temp,tree, c, poz, ended);

	if !ended %daca nu a fost gasit caracterului
		x = '*'; %se pune *
	else
		for i = 1:nivel %se selecteaza doar codul corespunzator caracterului
			x(i) = temp(i);
		end
	end

end
