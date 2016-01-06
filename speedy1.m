
[name,path]=uigetfile('*.*','Select leaf image');
leaf = imread([path,name]);
[y,x,z]= size(leaf);
%if x>800
   % leaf=imresize(leaf,0.5);
%end
gray_image = rgb2gray(leaf);
level = graythresh(leaf);
bw = ~im2bw(leaf,level);
leafarea = bwarea(bw);
mean_leaf = mean2(bw);
standard_deviation = std2(bw);
bw = ~im2bw(leaf,level); % bw = im2bw(gray_img) // bw = ~im2bw(gray_img)
boundary = bwboundaries(bw);
imshow(bw)
area = bwarea(bw);      %area
 mean = mean2(bw);     %mean
std = std2(bw);        %standard deviation
%sk = skewness(bw);     %skewness //skewness(bw,flag)
%ku = Kurtosis(bw);
disp(area);
disp(mean);
disp(std);
%disp(sk);
%disp(ku);
%disp(boundary);

numOfTruePixels = sum(bw);           %number of pixels true=white || false==black
[rows columns numberOfColorChannels] = size(bw);
numberOfPixels = rows*columns;           % numberOfPixels = rows*columns*numberOfColorChannels
disp(numberOfPixels);
%------------------------------------------------------------------------------------------------------
% Get the skew and kurtosis from the histogram bin values.
% Uses formulas from
% http://itl.nist.gov/div898/handbook/eda/section3/eda35b.htm

		% Get the number of pixels in the histogram.
	%	numberOfPixels = sum(pixelCounts);
		% Get the mean gray lavel.
		%meanGL = sum(GLs .* pixelCounts) / numberOfPixels;
		% Get the variance, which is the second central moment.
		%varianceGL = sum((GLs - meanGL) .^ 2 .* pixelCounts) / (numberOfPixels-1);
		% Get the standard deviation.
		%sd = sqrt(varianceGL);
		% Get the skew.
		%skew = sum((GLs - meanGL) .^ 3 .* pixelCounts) / ((numberOfPixels - 1) * sd^3);
		% Get the kurtosis.
		%kurtosis = sum((GLs - meanGL) .^ 4 .* pixelCounts) / ((numberOfPixels - 1) * sd^4);
  
    % from GetSkewAndKurtosis
