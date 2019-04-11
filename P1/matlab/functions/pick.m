%% Fonction pick
%
% La fonction pick prend en entr�e une distribution de probabilit� 'p' et
% un vecteur 's' contenant des dimensions et retourne une matrice de ces
% dimensions contenant des r�alisations g�n�r�es selon la distribution de
% probabilit� 'p'.

function x = pick(p, s)
	r = rand(s);
	x = ones(s);

    l = length(p);
	for i = 1:prod(s)
		while x(i) < l
			r(i) = r(i) - p(x(i));
			if r(i) < 0
				break;
			end
			x(i) = x(i) + 1;
		end
	end
end