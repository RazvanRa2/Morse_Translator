function [x poz ended nivel] = actual_morse_encode(x, tree, c,poz, ended)

	nivel = 0;

	if tree{1} == c %daca s-a gasit caracterul
		ended = 1;  % valideaza sa ca fost gasit
		nivel = poz; %retine linia din arbore in care a fost gasit
		return;
	else

		if length(tree{2}) != 0 && ended == 0 %daca mai poate cauta la stanga
			poz++;
			x(poz) = '.'; %memoreaza o deplasare la stanga
			[x, poz, ended, nivel]= actual_morse_encode(x,  tree{2}, c, poz, ended);
			%cauta recursiv elementul si mai la stanga
			poz--;
		end

		if length(tree{3}) != 0 && ended == 0 %daca mai poate cauta la dreapta
			poz++;
			x(poz) = '-'; %memoreaza o deplasare la dreapta
			[x, poz, ended, nivel]= actual_morse_encode(x, tree{3}, c, poz, ended);
			%cauta recursiv elementul si mai la dreapta
			poz--;
		end

	end

end
