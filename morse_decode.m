function  x = morse_decode(sir)

tree = morse(); %apleaza morse ca sa preia codul morse

n = length(sir); %afla cate . si - are codul

for i = 1:n %se muta in tree pentru fiecare - si .

	if length(tree) == 0 %daca s-a ajuns la ultimul "rand" si nu s-a gasit
		x = '*'; %inseamna ca nu exista caracterul
		break;
	end

	if sir(i) == '.' %se muta la stanga daca e .
		tree = tree{2};
		if(length(tree) != 0)
			x = tree{1}; %se atribuie valoarea din tree{1}
		end
	end

	if sir(i) == '-' %se muta la dreapta daca e -
		tree = tree{3};
		if length(tree) != 0
			x = tree{1}; %se atribuie valoarea din tree{1}
		end
	end

end

end
