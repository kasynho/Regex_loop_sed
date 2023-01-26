#!/bin/bash

echo "Digite ou cole o nome do arquivo para inserir a linkagem das referências(Arquivo.txt|Arquivo.csv):"
read arqsqlite

#v. 2-5 | vs. 2-5
sed -i 's/\v\. \([0-9]\+-[0-9]\+\)/vs\. \1/g' $arqsqlite
sed -i 's/vv\./vs\./g' $arqsqlite
sed -i 's/vs\./vs\. /g' $arqsqlite
sed -i 's/  / /g' $arqsqlite
sed -i 's/  / /g' $arqsqlite
sed -i 's/  / /g' $arqsqlite

sed -e ':inicio' -f Linka_ref.sed -e 't inicio' $arqsqlite> Arquivo_Linkado_$arqsqlite

#Voltar ao padrão
sed -i 's/vs\./vv\./g' Arquivo_Linkado_$arqsqlite

echo "Execução terminada"
