function output = BasicSourceName(input)

%{ 
input is a device name; output is the key device name associated with that
name
%}

dbstop if error

input = lower(input);

devices = { ...	
			'File'				'file'; ...
			'Network'			'network'; ...
			'Dvs128'			'dvs128'; ...
			'Dvs128'			'tmpdiff128'; ...
			'Davis240A'			'davis240a'; ...
			'Davis240A'			'sbret10'; ...
			'Davis240B'			'davis240b'; ...
			'Davis240B'			'sbret20'; ...
			'Davis240C'			'davis240c'; ...
			'Davis240C'			'sbret21'; ...
			'Davis128Mono'		'davis128mono'; ...
			'Davis128Rgb'		'davis128rgb'; ...
			'Davis128Rgb'		'davis128'; ...
			'Davis208Mono'		'davis208mono'; ...
			'Davis208Rgbw'		'davis208rgbw'; ...
			'Davis208Rgbw'		'pixelparade'; ...
			'Davis208Rgbw'		'sensdavis192'          ; ...
			'Davis208Rgbw'		'davis208'              ; ...
			'Davis208Rgbw'		'davis208pixelparade'   ; ...
			'Davis346AMono'		'davis346amono'; ...
			'Davis346ARgb'		'davis346argb'; ...
			'Davis346ARgb'		'davis346'; ...
			'Davis346BMono'		'davis346bmono'; ...
			'Davis346BRgb'		'davis346brgb'; ...
			'Davis346BRgb'		'davis346b'; ...
			'Davis346CBsi'		'davis346cbsi'; ...
			'Davis346CBsi'		'davis346bsi'; ...
			'Davis640Mono'		'davis640mono'; ...
			'Davis640Rgb'		'davis640rgb'; ...
			'Davis640Rgb'		'davis640'; ...
			'DavisHet640Mono'	'davishet640mono'; ...
			'DavisHet640Rgbw'	'davishet640rgbw'; ...
			'DavisHet640Rgbw'	'cdavis640'; ...
			'DavisHet640Rgbw'	'cdavis640rgbw'; ...
			'Das1'				'das1'; ...
			'Das1'				'cochleaams1c';	...
            'SecDvs'			'secdvs'	};


sourceNameMatchLogical = cellfun(@strcmp, devices(:, 2), repmat({input}, length(devices), 1));
if any(sourceNameMatchLogical)
	output = devices{sourceNameMatchLogical, 1};
else
	error(['Source name not recognised: ' input])
end


