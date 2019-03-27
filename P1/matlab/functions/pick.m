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