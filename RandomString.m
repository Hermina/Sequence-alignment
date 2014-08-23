function String = RandomString(n)

% generates a random string of lower case letters of length n

LetterStore = char(97:122); % string containing all allowable letters (in this case lower case only)
String = LetterStore(ceil(length(LetterStore).*rand(1,n)));