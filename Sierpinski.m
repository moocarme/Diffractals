function carpetHolo = Sierpinski(fracOrder);
	carpetBase = ones(3); % Initialize matrix
	carpetBase(2,2) = 0;
	% Zero middle element
	if fracOrder==0;
		% For zero order case
		carpetHolo = carpetBase;
	else
		% For higher order cases
		carpetHolo= kron(carpetBase,carpetBase);
		% For loop iterates the Kronecker tensor product
		for i = 1:fracOrder-1
			carpetHolo = kron(carpetHolo,carpetBase);
		end
	end
end