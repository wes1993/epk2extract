#Lanciare il seguente comando qualora ci fossero errori nel batch durante l'esecuzione (not found etc)  sed -i -e "s/\r$//" nomefile
# Il seguente Script va lanciato nella directory dove sono presenti i seguenti file STR (i Video Criptati), dvr(La chiave univoca della TV), epk2extract (Compilato per Linux)
#!/bin/sh
ls -tr | grep STR > list #Esporta L'elenco dei File STR in ordine di data/ora ultima modifica
files=$(grep . list) #Pulisce righe non valide e caratteri nulli
for file in $files;  do ./epk2extract "$file" -a 0x1C -v 0x1B;  done #Chiama L'eseguibile e passa il valore di ogni file STR uno per volta
rm list #Rimuove il file list creato per lo scopo
#sed -i -e "s/\r$//" nomefile
