function recon = reconFun(Threshold,carpetBaseLength,carpetHolo)
	normLength = length(carpetHolo)/carpetBaseLength; % Ratio of length of hologram
	
	% Convert to array of cells
	cellHolo = mat2cell(carpetHolo,repmat(normLength,1,carpetBaseLength),...
	repmat(normLength,1,carpetBaseLength));
	
	% Calculate mean, determine if above threshold value, and plot
	pcolor(double(cell2mat(cellfun(@mean2, cellHolo))>Threshold));
end