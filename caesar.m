%Simple Encryption using Caesar Cypher

%Method 1
function coded = caesar(arr, num)
    size = strlength(arr);
    coded = arr+num
    for i = 1:size
        while coded(i)> 126 
            coded(i) = coded(i) - 95;
        end
        while coded(i) < 32
            coded(i) = coded(i) + 95;
        end
    end
    coded = char(coded);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Method 2
function txt = caesar(txt,key)
    txt = double(txt) + key;
    first = double(' ');
    last = double('~');
    % use mod to shift the characters - notice the + 1
    % this is a common error and results in shifts 
    % being off by 1
    txt = char(mod(txt - first,last - first + 1) + first);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Method 3
function y = caesar2(ch, key)
    v = ' ' : '~';
    [~, loc] = ismember(ch, v);
    v2 = circshift(v, -key);
    y = v2(loc);
end
