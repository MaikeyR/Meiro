/**
Hier zijn de arrays opgeslagen die het doolhof bouwen
a = muur
b = pad
f = finish
d = deur
w = beweegbare muur
s = smalle doorgang
*/
char grid [][] = new char[][] {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'b', 'w', 'v', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a'}, {'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'v', 'w', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
