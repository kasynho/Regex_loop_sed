#REDUZIR REFERÊNCCIAS
#a class='bible' href='#b
#a href='b
#MACRO LINCAR NOTAS
#========================
#<a href='b41.1.2-41.1.8'>Mc 1:2-8</a>
#<a href='b41.1.12'>Mc 1:12</a>,<a href='b41.1.13'>13</a>
#<a href='bMr.1.2-Mr:1.8'>Mc 1:2-8</a>

#PADRONIZANDO PARA FAZER A LINKAGEM
#LINKANDO O TEXTO BÍBLICO
#BLOCO 1
#(1:1)
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?[(]\)\([0-9]\+\)\(\:\)\([0-9]\+\)\([)]\)/\1\2\3\<a href\=\'b\1\4\.\6\'\>\4\5\6\<\/a\>\7/g
#(1:2-17)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?[(]\)\([0-9]\+\)\(\:\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([)]\)/\1\2\<a href\=\'b\1\3\.\5\6\1\3\.\7\'\>\3\4\5\6\7\<\/a\>\8/g
#(1:3,10)
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?[(]\)\([0-9]\+\)\(\:\)\([0-9]\+\)[,]\([0-9]\+\)\([)]\)/\1\2\3\<a href\=\'b\1\4\.\6\'\>\4\5\6\<\/a\>\, \<a href\=\'b\1\4\.\7\'\>\7\<\/a\>\8/g
#(8:23—9:8)|8:23—9:8[ajuste de um " |"]
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\( \|\<a\>\; \|[(]\|veja \|ex\.\, \|ex\. \|de \)\([0-9]\+\)[:]\([0-9]\+\)\([—]\)\([0-9]\+\)[:]\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\3\<a href\=\'b\1\4\.\5\-\1\7\.\8\'\>\4\:\5\6\7\:\8\<\/a\>\9/g
#(veja 1:42.|
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?[\(]veja \)\([0-9]\+\)\(\:\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\<a href\=\'b\1\3\.\5\'\>\3\4\5\<\/a\>\6/g
#(18:15-18,25)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?[(]\)\([0-9]\+\)\(\:\)\([0-9]\+\)[-]\([0-9]\+\)[,]\([0-9]\+\)\([)]\)/\1\2\<a href\=\'b\1\3\.\5\-\1\3\.\6\'\>\3\4\5\-\6\<\/a\>\, \<a href\=\'b\1\3\.\7\'\>\7\<\/a\>\8/g
#(18:15-18,25-27)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?[(]\)\([0-9]\+\)\(\:\)\([0-9]\+\)[-]\([0-9]\+\)[,]\([0-9]\+\)[-]\([0-9]\+\)\([)]\)/\1\2\<a href\=\'b\1\3\.\5\-\1\3\.\6\'\>\3\4\5\-\6\<\/a\>\, \<a href\=\'b\1\3\.\7\-\1\3\.\8\'\>\7\-\8\<\/a\>\9/g
#(18:15-18,25; 
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?[(]\)\([0-9]\+\)\(\:\)\([0-9]\+\)[-]\([0-9]\+\)[,]\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2<a href\=\'b\1\3\.\5-\1\3\.\6\'>\3\4\5-\6<\/a>, <a href\=\'b\1\3\.\7\'>\7<\/a>\8/g
#-----2:16-17(|LISTA DE PALAVRAS)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\? \)\(em \|a \|ao \|com \|mas \|por \|de \|que \|também \|notas \|notas \|claramente \|possivelmente \|veja \)\([0-9]\+\)\([:]\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\3<a href\=\'b\1\4\.\6-\1\4\.\8\'>\4\5\6\7\8<\/a>\9/g
#2:16-17,18(|lista de palavras)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\? \)\(em \|a \|ao \|com \|mas \|por \|de \|que \|também \|notas \|nota \|claramente \|possivelmente \|ligeiramente\; \|entre \|veja \)\([0-9]\+\)\([\:]\)\([0-9]\+\)[-]\([0-9]\+\)[,]\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2<a href\=\'b\1\4\.\6-\1\4\.\7\'>\4\5\6-\7<\/a>, <a href\=\'b\1\4\.\8\'>\8<\/a>\9/g
#1:19,25 (lista de palavras)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\? \)\(em \|a \|ao \|com \|mas \|por \|de \|que \|também \|notas \|nota \|claramente \|possivelmente \|ligeiramente\; \|entre \|veja \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\,\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\3<a href\=\'b\1\4\.\6\'>\4\5\6<\/a>\,<a href\=\'b\1\4\.\7\'>\7<\/a>\8/g
#1:19 (|lista de palavras)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\? \)\(em \|a \|ao \|com \|mas \|por \|de \|que \|também \|notas \|nota \|claramente \|possivelmente \|ligeiramente\; \|entre \|veja \|[,] \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([ .:,...?!;]\|[)]\|<\/p>\|<\/br>\|<\/i>\|<\/b>\|<p>\|<br>\|<i>\|<b>\)/\1\2\3<a href\=\'b\1\4\.\6\'>\4\5\6<\/a>\7/g
#-----ex. 3:8|ex., 3:8
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(ex\. \|ex\.\, \)\([0-9]\+\)\(\:\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\3\<a href\=\'b\1\4\.\6\'\>\4\5\6\<\/a\>\7/g
#ex. 3:8-9|ex., 3:8-9
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(ex. \|ex\.\, \)\([0-9]\+\)\(\:\)\([0-9]\+\)\(-\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\3\<a href\=\'b\1\4\.\6\-\1\4\.\8\'\>\4\5\6\7\8\<\/a>\9/g
#vs. 43-32|Cf. vs. 25-32
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?vs\. \)\([0-9]\+\)\([-]\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\3\<a href\=\'b\1\2\4\-\1\2\6\'>\4\5\6<\/a>\7/g
#(vs. 42-45,46-55)#está no padrão simplificado
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?vs\. \)\([0-9]\+\)\(-\)\([0-9]\+\)[,]\([0-9]\+\)[-]\([0-9]\+\)\([)]\)/\1\2\3\<a href\=\'b\1\2\4\-\6\'\>\4\5\6\<\/a>\,\<a href\=\'\b\1\2\7\-\8\'\>\7\5\8<\/a>\9/g
#(vs. 4,39)
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?vs\. \)\([0-9]\+\)\([,]\)\([0-9]\+\)\([)]\)/\1\2\3\<a href\=\'b\1\2\4\'>\4<\/a>,\<a href\=\'b\1\2\6\'>\6<\/a>\7/g
#v. 31| v. 31a|
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?v\. \)\([0-9]\+\)\([abc]\)/\1\2\3<a href\=\'b\1\2\4\'>\4\5<\/a>/g
#v. 31| v. 31a|
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?v\. \)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\3<a href\=\'b\1\2\4\'>\4<\/a>\5/g
#(vs. 21,
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?vs\. \)\([0-9]\+\)\([,]\|[)]\)/\1\2\3<a href\=\'b\1\2\4\'>\4<\/a>\5/g
#-----cf. 4:31|cf. 16:21;
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?cf\. \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2<a href\=\'b\1\3\.\5\'>\3\4\5<\/a>\6/g
#(cf. 20:2-3)#esta é específica
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?cf. \)\([0-9]\+\)\([:]\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2<a href\=\'b\1\3\.\5\6\1\3\.\7\'>\3\4\5\6\7<\/a>\8/g
#------(4:50,5:8) verificar depois
#s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?\(([0-9]\+\)\([:]\)\([0-9]\+\.\)[,]\([0-9]\+\.\)[:]\([0-9]\+\.\)(\([\1\2\3<a href\=\'b\1\4\.\6\'>\4\5\6<\/a>, <a href\=\'b\1\7.\8\'>\7\5\8<\/a>\9/g
#ESTAS SÃO EXECUTADAS DEPOIS QUE TODAS ANTERIORES FORAM EXECUTADAS
#-----(vs. 21,27,33,38,43)
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?[0-9]\+<\/a>,\)\([0-9]\+\)\([,]\|[)]\)/\1\2\3<a href\=\'b\1\2\4\'>\4<\/a>\5/g
#-----<a>; 21:20|
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?<\/a>\; \)\([0-9]\+\)\([:]\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2<a href\=\'b\1\3\.\5\'>\3\4\5<\/a>\6/g
#</a>; 21:20-20|
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?<\/a>; \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2<a href\=\'b\1\3\.\5\6\1\3\.\7\'>\3\4\5\6\7<\/a>\8/g
#</a>, 21
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?<\/a>\,\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\3<a href\=\'b\1\2\4\'>\4<\/a>\5/g
#</a>,34\-41
s/^\([0-9]\+\.\)\([0-9]\+\.\)\([0-9]\+\t.*\?<\/a>,\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([ .:,...?!;]\|[)]\)/\1\2\3<a href\=\'b\1\2\4\-\1\2\6\'>\4\5\6<\/a>\7/g
#BLOCO2
#(1:1a)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\([(]cf[.] \|[aeiouáéóú]; \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([a-c]\)\([,]\|[)]\|[;] \|[.:]\| \)/\1\2\3<a href\=\'b\1\4\.\6\'>\4\5\6\7<\/a>\8/g
#(1:2a-17)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\([(]cf[.] \|[aeiouáéóú]; \|[(]\)\([0-9]\+\)[:]\([0-9]\+\)\([a-d]\)\([-]\)\([0-9]\+\)\([)]\|[;] \|[,]\| \|[.]\)/\1\2\3<a href\=\'b\1\4\.\5\-\1\4\.\8\'>\4\:\5\6\7\8<\/a>\9/g
#(1:2-17a)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?[(]\)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([a-d]\)\([)]\|[;] \|[,]\| \|[.]\)/\1\2<a href\=\'b\1\3\.\5\-\1\3\.\7\'>\3\4\5\6\7\8<\/a>\9/g
#(caps. 1—11)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(caps\. \|<\/a>[;] \| e \|veja \|Jó \|Salmos \)\([0-9]\+\)\([—]\)\([0-9]\+\)\([ .,\?!;]\|[)]\)/\1\2\3<a href\=\'b\1\4.0-\1\6.0\'>\4\5\6<\/a>\7/g
#(cap. 1)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(cap\. \|[(]caps\. \|ao \|<\/a>[;] \|caps\. \)\([0-9]\+\)\([ .,\?!]\|[)]\|[;] \)/\1\2\3<a href\=\'b\1\4.0\'>\4<\/a>\5/g
#(1:2-17)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?[(]\)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([)]\|[;] \|[,]\)/\1\2<a href\=\'b\1\3\.\5\6\1\3\.\7\'>\3\4\5\6\7<\/a>\8/g
#(1:2-17)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(como \|conforme \|[,] \|veja \|em \|nota \|notas \|ex\.\, \|de \|<\/a>[;] \|é \| e \| esp[.] \|sobre \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([a-c]\|[)]\|[;] \|[,]\| \|[.]\)/\1\2\3<a href\=\'b\1\4\.\6-\1\4\.\8\'>\4\5\6\7\8<\/a>\9/g
#(1:1)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\([(]\|partir de \|<\/a>[;] \|variações; \|conforme \|[,] \|veja \|nota \|notas \|também \|ex\.\, \| é \| em \|Em \|cf\. \|com \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([,]\|[)]\|[;] \| \|\. \|[a-c]\)/\1\2\3<a href\=\'b\1\4\.\6\'>\4\5\6<\/a>\7/g
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(conforme \|[,] \|veja \|em \|nota \|notas \|ex\.\, \|de \|<\/a>[;] \|cf[.] \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([)]\|[;] \|[,]\)/\1\2\3<a href\=\'b\1\4\.\6-\1\4\.\8\'>\4\5\6\7\8<\/a>\9/g
#(caps\. 1—11)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(caps[.] \|cap[.] \|<\/a>[;] \| e \|veja \|Jó \|Salmos \)\([0-9]\+\)\([—]\)\([0-9]\+\)\([ .,\?!;]\|[)]\)/\1\2\3<a href\=\'b\1\4.0-\1\6.0\'>\4\5\6<\/a>\7/g
#(13:4b
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\([(]\|partir de \|<\/a>[;] \|variações; \|conforme \|[,] \|veja \|nota \|notas \|também \|ex\.\, \| é \| em \|Em \|cf\. \|com \|no \|de \| e \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([,]\|[)]\|[;] \| \|\. \|[a-c]\)/\1\2\3<a href\=\'b\1\4\.\6\'>\4\5\6<\/a>\7/g
#<\/a>; 2.
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(<\/a>[;] \|notas \)\([0-9]\+\)\([;] \|[)]\)/\1\2<a href\=\'b\1\4.0\'>\4<\/a>\5/g
#(caps\. 1—11)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(caps\. \|<\/a>[;] \| e \|veja \|Jó \|Salmos \)\([0-9]\+\)\([—]\)\([0-9]\+\)\([ .,\?!;]\|[)]\)/\1\2\3<a href\=\'b\1\4.0-\1\6.0\'>\4\5\6<\/a>\7/g
#(1:1b)Verificar depois numero e letra
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(<\/a>[;] \|<\/a>a; \|” \| e \|de \|nota \|em \|após \|sobre \|diz \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([,]\|[)]\|[;] \|[.:]\|ss\| \|[a-c]\)/\1\2\3<a href\=\'b\1\4\.\6\'>\4\5\6<\/a>\7/g
#<\/a>; 2.
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(<\/a>[;] \)\([0-9]\+\)\([;] \|[)]\)/\1\2<a href\=\'b\1\4.0\'>\4<\/a>\5/g
#Rever uso (1:2-17)
s/^\([0-9]\+\.\)\([0-9]\+\.[0-9]\+\t.*\?\)\(como \|conforme \|[,] \|veja \|em \|nota \|notas \|ex\.\, \|de \|<\/a>[;] \|é \| e \| esp[.] \)\([0-9]\+\)\([\:]\)\([0-9]\+\)\([-]\)\([0-9]\+\)\([)]\|[;] \|[,]\| \|[.]\|<\/p>\|<\/br>\|<\/i>\|<\/b>\|<p>\|<br>\|<i>\|<b>\)/\1\2\3<a href\=\'b\1\4\.\6-\1\4\.\8\'>\4\5\6\7\8<\/a>\9/g
#CORRIGINDO LINKAGEM
s/>,</>，</g
s/>, </>， </g
s/>;</>;</g
s/>; </>; </g

