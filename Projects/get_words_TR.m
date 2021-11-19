function data=get_words(hero)
% data=GETWORDS(hero)
% This function gets the words from a .txt file and stores them as an array
FID = fopen("TestSample2.txt","r") % Open the file
data = textscan(FID,"%s") %scan through the file for each word;
% Within this function, we could call the "remove_delim" function to repeat
% for every word, since the textscan automatically puts each word in its
% own cell
celldisp(data) %Just to debug, displays every cell.
fclose(FID) %close the file
end
