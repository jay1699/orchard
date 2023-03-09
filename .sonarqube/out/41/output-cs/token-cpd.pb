ˆo
ÄC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\LuceneQueryService.cs
	namespace

 	
OrchardCore


 
.

 
Search

 
.

 
Lucene

 #
{ 
public 

class 
LuceneQueryService #
:$ %
ILuceneQueryService& 9
{ 
private 
readonly 
IEnumerable $
<$ % 
ILuceneQueryProvider% 9
>9 :
_queryProviders; J
;J K
public 
LuceneQueryService !
(! "
IEnumerable" -
<- . 
ILuceneQueryProvider. B
>B C
queryProvidersD R
)R S
{ 	
_queryProviders 
= 
queryProviders ,
;, -
} 	
public 
Task 
< 
LuceneTopDocs !
>! "
SearchAsync# .
(. /
LuceneQueryContext/ A
contextB I
,I J
JObjectK R
queryObjS [
)[ \
{ 	
var 
	queryProp 
= 
queryObj $
[$ %
$str% ,
], -
as. 0
JObject1 8
;8 9
if 
( 
	queryProp 
== 
null !
)! "
{ 
throw 
new 
ArgumentException +
(+ ,
$str, S
)S T
;T U
} 
var 
query 
= 
CreateQueryFragment +
(+ ,
context, 3
,3 4
	queryProp5 >
)> ?
;? @
var   
sortProperty   
=   
queryObj   '
[  ' (
$str  ( .
]  . /
;  / 0
var!! 
fromProperty!! 
=!! 
queryObj!! '
[!!' (
$str!!( .
]!!. /
;!!/ 0
var"" 
sizeProperty"" 
="" 
queryObj"" '
[""' (
$str""( .
]"". /
;""/ 0
var$$ 
size$$ 
=$$ 
sizeProperty$$ #
?$$# $
.$$$ %
Value$$% *
<$$* +
int$$+ .
>$$. /
($$/ 0
)$$0 1
??$$2 4
$num$$5 7
;$$7 8
var%% 
from%% 
=%% 
fromProperty%% #
?%%# $
.%%$ %
Value%%% *
<%%* +
int%%+ .
>%%. /
(%%/ 0
)%%0 1
??%%2 4
$num%%5 6
;%%6 7
string'' 
	sortField'' 
='' 
null'' #
;''# $
string(( 
	sortOrder(( 
=(( 
null(( #
;((# $
var** 

sortFields** 
=** 
new**  
List**! %
<**% &
	SortField**& /
>**/ 0
(**0 1
)**1 2
;**2 3
if,, 
(,, 
sortProperty,, 
!=,, 
null,,  $
),,$ %
{-- 
string.. 
sortType.. 
;..  
if00 
(00 
sortProperty00  
.00  !
Type00! %
==00& (

JTokenType00) 3
.003 4
String004 :
)00: ;
{11 
	sortField22 
=22 
sortProperty22  ,
.22, -
ToString22- 5
(225 6
)226 7
;227 8

sortFields33 
.33 
Add33 "
(33" #
new33# &
	SortField33' 0
(330 1
	sortField331 :
,33: ;
SortFieldType33< I
.33I J
STRING33J P
,33P Q
	sortOrder33R [
==33\ ^
$str33_ e
)33e f
)33f g
;33g h
}44 
else55 
if55 
(55 
sortProperty55 %
.55% &
Type55& *
==55+ -

JTokenType55. 8
.558 9
Object559 ?
)55? @
{66 
	sortField77 
=77 
(77  !
(77! "
	JProperty77" +
)77+ ,
sortProperty77, 8
.778 9
First779 >
)77> ?
.77? @
Name77@ D
;77D E
	sortOrder88 
=88 
(88  !
(88! "
	JProperty88" +
)88+ ,
sortProperty88, 8
.888 9
First889 >
)88> ?
.88? @
Value88@ E
[88E F
$str88F M
]88M N
.88N O
ToString88O W
(88W X
)88X Y
;88Y Z
sortType99 
=99 
(99  
(99  !
	JProperty99! *
)99* +
sortProperty99+ 7
.997 8
First998 =
)99= >
.99> ?
Value99? D
[99D E
$str99E K
]99K L
?99L M
.99M N
ToString99N V
(99V W
)99W X
;99X Y
var:: 
sortFieldType:: %
=::& '
SortFieldType::( 5
.::5 6
STRING::6 <
;::< =
if<< 
(<< 
sortType<<  
!=<<! #
null<<$ (
)<<( )
{== 
sortFieldType>> %
=>>& '
(>>( )
SortFieldType>>) 6
)>>6 7
Enum>>7 ;
.>>; <
Parse>>< A
(>>A B
typeof>>B H
(>>H I
SortFieldType>>I V
)>>V W
,>>W X
sortType>>Y a
.>>a b
ToUpper>>b i
(>>i j
)>>j k
)>>k l
;>>l m
}?? 

sortFieldsAA 
.AA 
AddAA "
(AA" #
newAA# &
	SortFieldAA' 0
(AA0 1
	sortFieldAA1 :
,AA: ;
sortFieldTypeAA< I
,AAI J
	sortOrderAAK T
==AAU W
$strAAX ^
)AA^ _
)AA_ `
;AA` a
}BB 
elseCC 
ifCC 
(CC 
sortPropertyCC %
.CC% &
TypeCC& *
==CC+ -

JTokenTypeCC. 8
.CC8 9
ArrayCC9 >
)CC> ?
{DD 
foreachEE 
(EE 
varEE  
itemEE! %
inEE& (
sortPropertyEE) 5
.EE5 6
ChildrenEE6 >
(EE> ?
)EE? @
)EE@ A
{FF 
	sortFieldGG !
=GG" #
(GG$ %
(GG% &
	JPropertyGG& /
)GG/ 0
itemGG0 4
.GG4 5
FirstGG5 :
)GG: ;
.GG; <
NameGG< @
;GG@ A
	sortOrderHH !
=HH" #
(HH$ %
(HH% &
	JPropertyHH& /
)HH/ 0
itemHH0 4
.HH4 5
FirstHH5 :
)HH: ;
.HH; <
ValueHH< A
[HHA B
$strHHB I
]HHI J
.HHJ K
ToStringHHK S
(HHS T
)HHT U
;HHU V
sortTypeII  
=II! "
(II# $
(II$ %
	JPropertyII% .
)II. /
itemII/ 3
.II3 4
FirstII4 9
)II9 :
.II: ;
ValueII; @
[II@ A
$strIIA G
]IIG H
?IIH I
.III J
ToStringIIJ R
(IIR S
)IIS T
;IIT U
varJJ 
sortFieldTypeJJ )
=JJ* +
SortFieldTypeJJ, 9
.JJ9 :
STRINGJJ: @
;JJ@ A
ifLL 
(LL 
sortTypeLL $
!=LL% '
nullLL( ,
)LL, -
{MM 
sortFieldTypeNN )
=NN* +
(NN, -
SortFieldTypeNN- :
)NN: ;
EnumNN; ?
.NN? @
ParseNN@ E
(NNE F
typeofNNF L
(NNL M
SortFieldTypeNNM Z
)NNZ [
,NN[ \
sortTypeNN] e
.NNe f
ToUpperNNf m
(NNm n
)NNn o
)NNo p
;NNp q
}OO 

sortFieldsQQ "
.QQ" #
AddQQ# &
(QQ& '
newQQ' *
	SortFieldQQ+ 4
(QQ4 5
	sortFieldQQ5 >
,QQ> ?
sortFieldTypeQQ@ M
,QQM N
	sortOrderQQO X
==QQY [
$strQQ\ b
)QQb c
)QQc d
;QQd e
}RR 
}SS 
}TT 
LuceneTopDocsVV 
resultVV  
=VV! "
nullVV# '
;VV' (
ifXX 
(XX 
sizeXX 
>XX 
$numXX 
)XX 
{YY 
TopDocsZZ 
topDocsZZ 
=ZZ  !
contextZZ" )
.ZZ) *
IndexSearcherZZ* 7
.ZZ7 8
SearchZZ8 >
(ZZ> ?
query[[ 
,[[ 
size\\ 
+\\ 
from\\ 
,\\  
	sortField]] 
==]]  
null]]! %
?]]& '
Sort]]( ,
.]], -
	RELEVANCE]]- 6
:]]7 8
new]]9 <
Sort]]= A
(]]A B

sortFields]]B L
.]]L M
ToArray]]M T
(]]T U
)]]U V
)]]V W
)^^ 
;^^ 
if`` 
(`` 
from`` 
>`` 
$num`` 
)`` 
{aa 
topDocsbb 
=bb 
newbb !
TopDocsbb" )
(bb) *
topDocsbb* 1
.bb1 2
	TotalHitsbb2 ;
-bb< =
frombb> B
,bbB C
topDocsbbD K
.bbK L
	ScoreDocsbbL U
.bbU V
SkipbbV Z
(bbZ [
frombb[ _
)bb_ `
.bb` a
ToArraybba h
(bbh i
)bbi j
,bbj k
topDocsbbl s
.bbs t
MaxScorebbt |
)bb| }
;bb} ~
}cc 
varee 
	collectoree 
=ee 
newee  #"
TotalHitCountCollectoree$ :
(ee: ;
)ee; <
;ee< =
contextff 
.ff 
IndexSearcherff %
.ff% &
Searchff& ,
(ff, -
queryff- 2
,ff2 3
	collectorff4 =
)ff= >
;ff> ?
resulthh 
=hh 
newhh 
LuceneTopDocshh *
(hh* +
)hh+ ,
{hh- .
TopDocshh/ 6
=hh7 8
topDocshh9 @
,hh@ A
CounthhB G
=hhH I
	collectorhhJ S
.hhS T
	TotalHitshhT ]
}hh^ _
;hh_ `
}ii 
returnkk 
Taskkk 
.kk 

FromResultkk "
(kk" #
resultkk# )
)kk) *
;kk* +
}ll 	
publicnn 
Querynn 
CreateQueryFragmentnn (
(nn( )
LuceneQueryContextnn) ;
contextnn< C
,nnC D
JObjectnnE L
queryObjnnM U
)nnU V
{oo 	
varpp 
firstpp 
=pp 
queryObjpp  
.pp  !

Propertiespp! +
(pp+ ,
)pp, -
.pp- .
Firstpp. 3
(pp3 4
)pp4 5
;pp5 6
Queryrr 
queryrr 
=rr 
nullrr 
;rr 
foreachtt 
(tt 
vartt 
queryProvidertt &
intt' )
_queryProviderstt* 9
)tt9 :
{uu 
queryvv 
=vv 
queryProvidervv %
.vv% &
CreateQueryvv& 1
(vv1 2
thisvv2 6
,vv6 7
contextvv8 ?
,vv? @
firstvvA F
.vvF G
NamevvG K
,vvK L
(vvM N
JObjectvvN U
)vvU V
firstvvV [
.vv[ \
Valuevv\ a
)vva b
;vvb c
ifxx 
(xx 
queryxx 
!=xx 
nullxx !
)xx! "
{yy 
breakzz 
;zz 
}{{ 
}|| 
return~~ 
query~~ 
;~~ 
} 	
public
ÅÅ 
static
ÅÅ 
List
ÅÅ 
<
ÅÅ 
string
ÅÅ !
>
ÅÅ! "
Tokenize
ÅÅ# +
(
ÅÅ+ ,
string
ÅÅ, 2
	fieldName
ÅÅ3 <
,
ÅÅ< =
string
ÅÅ> D
text
ÅÅE I
,
ÅÅI J
Analyzer
ÅÅK S
analyzer
ÅÅT \
)
ÅÅ\ ]
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ 
String
ÉÉ 
.
ÉÉ 
IsNullOrEmpty
ÉÉ $
(
ÉÉ$ %
text
ÉÉ% )
)
ÉÉ) *
)
ÉÉ* +
{
ÑÑ 
return
ÖÖ 
new
ÖÖ 
List
ÖÖ 
<
ÖÖ  
string
ÖÖ  &
>
ÖÖ& '
(
ÖÖ' (
)
ÖÖ( )
;
ÖÖ) *
}
ÜÜ 
var
àà 
result
àà 
=
àà 
new
àà 
List
àà !
<
àà! "
string
àà" (
>
àà( )
(
àà) *
)
àà* +
;
àà+ ,
using
ââ 
(
ââ 
var
ââ 
tokenStream
ââ "
=
ââ# $
analyzer
ââ% -
.
ââ- .
GetTokenStream
ââ. <
(
ââ< =
	fieldName
ââ= F
,
ââF G
text
ââH L
)
ââL M
)
ââM N
{
ää 
tokenStream
ãã 
.
ãã 
Reset
ãã !
(
ãã! "
)
ãã" #
;
ãã# $
while
åå 
(
åå 
tokenStream
åå "
.
åå" #
IncrementToken
åå# 1
(
åå1 2
)
åå2 3
)
åå3 4
{
çç 
var
éé 
termAttribute
éé %
=
éé& '
tokenStream
éé( 3
.
éé3 4
GetAttribute
éé4 @
<
éé@ A 
ICharTermAttribute
ééA S
>
ééS T
(
ééT U
)
ééU V
;
ééV W
if
êê 
(
êê 
termAttribute
êê %
!=
êê& (
null
êê) -
)
êê- .
{
ëë 
result
íí 
.
íí 
Add
íí "
(
íí" #
termAttribute
íí# 0
.
íí0 1
ToString
íí1 9
(
íí9 :
)
íí: ;
)
íí; <
;
íí< =
}
ìì 
}
îî 
}
ïï 
return
óó 
result
óó 
;
óó 
}
òò 	
}
ôô 
}öö ⁄L
ëC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\BooleanQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{		 
public

 

class

  
BooleanQueryProvider

 %
:

& ' 
ILuceneQueryProvider

( <
{ 
private 
readonly 
IEnumerable $
<$ %(
ILuceneBooleanFilterProvider% A
>A B
_filtersC K
;K L
public  
BooleanQueryProvider #
(# $
IEnumerable$ /
</ 0(
ILuceneBooleanFilterProvider0 L
>L M
filtersN U
)U V
{ 	
_filters 
= 
filters 
; 
} 	
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str 
) 
{ 
return 
null 
; 
} 
var 
	boolQuery 
= 
new 
BooleanQuery  ,
(, -
)- .
;. /
foreach 
( 
var 
property !
in" $
query% *
.* +

Properties+ 5
(5 6
)6 7
)7 8
{ 
var 
occur 
= 
Occur !
.! "
MUST" &
;& '
bool 
isProps 
= 
false $
;$ %
switch!! 
(!! 
property!!  
.!!  !
Name!!! %
.!!% &
ToLowerInvariant!!& 6
(!!6 7
)!!7 8
)!!8 9
{"" 
case## 
$str## 
:##  
occur$$ 
=$$ 
Occur$$  %
.$$% &
MUST$$& *
;$$* +
break%% 
;%% 
case&& 
$str&& "
:&&" #
case'' 
$str'' #
:''# $
occur(( 
=(( 
Occur((  %
.((% &
MUST_NOT((& .
;((. /
break)) 
;)) 
case** 
$str** !
:**! "
occur++ 
=++ 
Occur++  %
.++% &
SHOULD++& ,
;++, -
break,, 
;,, 
case-- 
$str--  
:--  !
	boolQuery.. !
...! "
Boost.." '
=..( )
property..* 2
...2 3
Value..3 8
...8 9
Value..9 >
<..> ?
float..? D
>..D E
(..E F
)..F G
;..G H
isProps// 
=//  !
true//" &
;//& '
break00 
;00 
case11 
$str11 /
:11/ 0
	boolQuery22 !
.22! "$
MinimumNumberShouldMatch22" :
=22; <
property22= E
.22E F
Value22F K
.22K L
Value22L Q
<22Q R
int22R U
>22U V
(22V W
)22W X
;22X Y
isProps33 
=33  !
true33" &
;33& '
break44 
;44 
case55 
$str55 !
:55! "
return66 
CreateFilteredQuery66 2
(662 3
builder663 :
,66: ;
context66< C
,66C D
	boolQuery66E N
,66N O
property66P X
.66X Y
Value66Y ^
)66^ _
;66_ `
default77 
:77 
throw77 "
new77# &
ArgumentException77' 8
(778 9
$"779 ;
$str77; M
{77M N
property77N V
.77V W
Name77W [
}77[ \
$str77\ n
"77n o
)77o p
;77p q
}88 
if:: 
(:: 
!:: 
isProps:: 
):: 
{;; 
switch<< 
(<< 
property<< $
.<<$ %
Value<<% *
.<<* +
Type<<+ /
)<</ 0
{== 
case>> 

JTokenType>> '
.>>' (
Object>>( .
:>>. /
	boolQuery?? %
.??% &
Add??& )
(??) *
builder??* 1
.??1 2
CreateQueryFragment??2 E
(??E F
context??F M
,??M N
(??O P
JObject??P W
)??W X
property??X `
.??` a
Value??a f
)??f g
,??g h
occur??i n
)??n o
;??o p
break@@ !
;@@! "
caseAA 

JTokenTypeAA '
.AA' (
ArrayAA( -
:AA- .
foreachBB #
(BB$ %
varBB% (
itemBB) -
inBB. 0
(BB1 2
(BB2 3
JArrayBB3 9
)BB9 :
propertyBB: B
.BBB C
ValueBBC H
)BBH I
)BBI J
{CC 
ifDD  "
(DD# $
itemDD$ (
.DD( )
TypeDD) -
!=DD. 0

JTokenTypeDD1 ;
.DD; <
ObjectDD< B
)DDB C
{EE  !
throwFF$ )
newFF* -
ArgumentExceptionFF. ?
(FF? @
$"FF@ B
$strFFB `
"FF` a
)FFa b
;FFb c
}GG  !
	boolQueryHH  )
.HH) *
AddHH* -
(HH- .
builderHH. 5
.HH5 6
CreateQueryFragmentHH6 I
(HHI J
contextHHJ Q
,HHQ R
(HHS T
JObjectHHT [
)HH[ \
itemHH\ `
)HH` a
,HHa b
occurHHc h
)HHh i
;HHi j
}II 
breakJJ !
;JJ! "
defaultKK 
:KK  
throwKK! &
newKK' *
ArgumentExceptionKK+ <
(KK< =
$"KK= ?
$strKK? ]
"KK] ^
)KK^ _
;KK_ `
}LL 
}MM 
}NN 
returnPP 
	boolQueryPP 
;PP 
}QQ 	
privateSS 
QuerySS 
CreateFilteredQuerySS )
(SS) *
ILuceneQueryServiceSS* =
builderSS> E
,SSE F
LuceneQueryContextSSG Y
contextSSZ a
,SSa b
QuerySSc h
querySSi n
,SSn o
JTokenSSp v
filterSSw }
)SS} ~
{TT 	
QueryUU 
filteredQueryUU 
=UU  !
nullUU" &
;UU& '
varVV 
queryObjVV 
=VV 
filterVV !
asVV" $
JObjectVV% ,
;VV, -
switchXX 
(XX 
filterXX 
.XX 
TypeXX 
)XX  
{YY 
caseZZ 

JTokenTypeZZ 
.ZZ  
ObjectZZ  &
:ZZ& '
var[[ 
first[[ 
=[[ 
queryObj[[  (
.[[( )

Properties[[) 3
([[3 4
)[[4 5
.[[5 6
First[[6 ;
([[; <
)[[< =
;[[= >
foreach]] 
(]] 
var]]  
queryProvider]]! .
in]]/ 1
_filters]]2 :
)]]: ;
{^^ 
filteredQuery__ %
=__& '
queryProvider__( 5
.__5 6
CreateFilteredQuery__6 I
(__I J
builder__J Q
,__Q R
context__S Z
,__Z [
first__\ a
.__a b
Name__b f
,__f g
first__h m
.__m n
Value__n s
,__s t
query__u z
)__z {
;__{ |
ifaa 
(aa 
filteredQueryaa )
!=aa* ,
nullaa- 1
)aa1 2
{bb 
breakcc !
;cc! "
}dd 
}ee 
breakff 
;ff 
casegg 

JTokenTypegg 
.gg  
Arraygg  %
:gg% &
foreachhh 
(hh 
varhh  
itemhh! %
inhh& (
(hh) *
(hh* +
JArrayhh+ 1
)hh1 2
filterhh2 8
)hh8 9
)hh9 :
{ii 
varjj 

firstQueryjj &
=jj' (
itemjj) -
.jj- .
Firstjj. 3
(jj3 4
)jj4 5
asjj6 8
	JPropertyjj9 B
;jjB C
foreachll 
(ll  !
varll! $
queryProviderll% 2
inll3 5
_filtersll6 >
)ll> ?
{mm 
filteredQuerynn )
=nn* +
queryProvidernn, 9
.nn9 :
CreateFilteredQuerynn: M
(nnM N
buildernnN U
,nnU V
contextnnW ^
,nn^ _

firstQuerynn` j
.nnj k
Namennk o
,nno p

firstQuerynnq {
.nn{ |
Value	nn| Å
,
nnÅ Ç
query
nnÉ à
)
nnà â
;
nnâ ä
ifpp 
(pp  
filteredQuerypp  -
!=pp. 0
nullpp1 5
)pp5 6
{qq 
breakrr  %
;rr% &
}ss 
}tt 
}uu 
breakvv 
;vv 
defaultww 
:ww 
throwww 
newww "
ArgumentExceptionww# 4
(ww4 5
$"ww5 7
$strww7 U
"wwU V
)wwV W
;wwW X
}xx 
returnzz 
filteredQueryzz  
;zz  !
}{{ 	
}|| 
}}} ñ/
òC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\FuzzyFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{		 
public

 

class

 
FuzzyFilterProvider

 $
:

% &(
ILuceneBooleanFilterProvider

' C
{ 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{ 	
if 
( 
type 
!= 
$str 
)  
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
queryObj 
= 
filter !
as" $
JObject% ,
;, -
var 
first 
= 
queryObj  
.  !

Properties! +
(+ ,
), -
.- .
First. 3
(3 4
)4 5
;5 6

FuzzyQuery 

fuzzyQuery !
;! "
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '

fuzzyQuery   
=    
new  ! $

FuzzyQuery  % /
(  / 0
new  0 3
Term  4 8
(  8 9
first  9 >
.  > ?
Name  ? C
,  C D
first  E J
.  J K
Value  K P
.  P Q
ToString  Q Y
(  Y Z
)  Z [
)  [ \
)  \ ]
;  ] ^
break!! 
;!! 
case"" 

JTokenType"" 
.""  
Object""  &
:""& '
var## 
obj## 
=## 
(## 
JObject## &
)##& '
first##' ,
.##, -
Value##- 2
;##2 3
if%% 
(%% 
!%% 
obj%% 
.%% 
TryGetValue%% (
(%%( )
$str%%) 0
,%%0 1
out%%2 5
var%%6 9
value%%: ?
)%%? @
)%%@ A
{&& 
throw'' 
new'' !
ArgumentException''" 3
(''3 4
$str''4 R
)''R S
;''S T
}(( 
obj** 
.** 
TryGetValue** #
(**# $
$str**$ /
,**/ 0
out**1 4
var**5 8
	fuzziness**9 B
)**B C
;**C D
obj++ 
.++ 
TryGetValue++ #
(++# $
$str++$ 3
,++3 4
out++5 8
var++9 <
prefixLength++= I
)++I J
;++J K
obj,, 
.,, 
TryGetValue,, #
(,,# $
$str,,$ 4
,,,4 5
out,,6 9
var,,: =
maxExpansions,,> K
),,K L
;,,L M

fuzzyQuery.. 
=..  
new..! $

FuzzyQuery..% /
(../ 0
new// 
Term//  
(//  !
first//! &
.//& '
Name//' +
,//+ ,
value//- 2
.//2 3
Value//3 8
<//8 9
string//9 ?
>//? @
(//@ A
)//A B
)//B C
,//C D
	fuzziness00 !
?00! "
.00" #
Value00# (
<00( )
int00) ,
>00, -
(00- .
)00. /
??000 2
LevenshteinAutomata003 F
.00F G&
MAXIMUM_SUPPORTED_DISTANCE00G a
,00a b
prefixLength11 $
?11$ %
.11% &
Value11& +
<11+ ,
int11, /
>11/ 0
(110 1
)111 2
??113 5
$num116 7
,117 8
maxExpansions22 %
?22% &
.22& '
Value22' ,
<22, -
int22- 0
>220 1
(221 2
)222 3
??224 6
$num227 9
,229 :
true33 
)33 
;33 
if55 
(55 
obj55 
.55 
TryGetValue55 '
(55' (
$str55( /
,55/ 0
out551 4
var555 8
boost559 >
)55> ?
)55? @
{66 

fuzzyQuery77 "
.77" #
Boost77# (
=77) *
boost77+ 0
.770 1
Value771 6
<776 7
float777 <
>77< =
(77= >
)77> ?
;77? @
}88 
break:: 
;:: 
default;; 
:;; 
throw;; 
new;; "
ArgumentException;;# 4
(;;4 5
$str;;5 J
);;J K
;;;K L
}<< 
booleanQuery>> 
.>> 
Add>> 
(>> 

fuzzyQuery>> '
,>>' (
Occur>>) .
.>>. /
MUST>>/ 3
)>>3 4
;>>4 5
var?? 
queryFilter?? 
=?? 
new?? !
QueryWrapperFilter??" 4
(??4 5

fuzzyQuery??5 ?
)??? @
;??@ A
returnAA 
newAA 
FilteredQueryAA $
(AA$ %
booleanQueryAA% 1
,AA1 2
queryFilterAA3 >
)AA> ?
;AA? @
}BB 	
}CC 
}DD ¯-
°C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\GeoBoundingBoxFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public 

class (
GeoBoundingBoxFilterProvider -
:. /(
ILuceneBooleanFilterProvider0 L
{ 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{ 	
if 
( 
type 
!= 
$str *
)* +
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
queryObj 
= 
filter !
as" $
JObject% ,
;, -
var 
first 
= 
queryObj  
.  !

Properties! +
(+ ,
), -
.- .
First. 3
(3 4
)4 5
;5 6
var 
ctx 
= 
SpatialContext $
.$ %
Geo% (
;( )
var   
	maxLevels   
=   
$num   
;   
SpatialPrefixTree## 
grid## "
=### $
new##% (
GeohashPrefixTree##) :
(##: ;
ctx##; >
,##> ?
	maxLevels##@ I
)##I J
;##J K
var%% 
geoPropertyName%% 
=%%  !
first%%" '
.%%' (
Name%%( ,
;%%, -
var&& 
strategy&& 
=&& 
new&& '
RecursivePrefixTreeStrategy&& :
(&&: ;
grid&&; ?
,&&? @
geoPropertyName&&A P
)&&P Q
;&&Q R
var(( 
boundingBox(( 
=(( 
((( 
JObject(( &
)((& '
first((' ,
.((, -
Value((- 2
;((2 3
var** 
topLeftProperty** 
=**  !
boundingBox**" -
[**- .
$str**. 8
]**8 9
as**: <
JObject**= D
;**D E
var++ 
bottomRightProperty++ #
=++$ %
boundingBox++& 1
[++1 2
$str++2 @
]++@ A
as++B D
JObject++E L
;++L M
if-- 
(-- 
topLeftProperty-- 
==--  "
null--# '
||--( *
bottomRightProperty--+ >
==--? A
null--B F
)--F G
{.. 
return// 
null// 
;// 
}00 
var22 
left22 
=22 
topLeftProperty22 &
[22& '
$str22' ,
]22, -
;22- .
var33 
top33 
=33 
topLeftProperty33 %
[33% &
$str33& +
]33+ ,
;33, -
var44 
bottom44 
=44 
bottomRightProperty44 ,
[44, -
$str44- 2
]442 3
;443 4
var55 
right55 
=55 
bottomRightProperty55 +
[55+ ,
$str55, 1
]551 2
;552 3
var77 
	rectangle77 
=77 
ctx77 
.77  
MakeRectangle77  -
(77- .
(77. /
double77/ 5
)775 6
left776 :
,77: ;
(77< =
double77= C
)77C D
right77D I
,77I J
(77K L
double77L R
)77R S
bottom77S Y
,77Y Z
(77[ \
double77\ b
)77b c
top77c f
)77f g
;77g h
var99 
args99 
=99 
new99 
SpatialArgs99 &
(99& '
SpatialOperation99' 7
.997 8

Intersects998 B
,99B C
	rectangle99D M
)99M N
;99N O
var;; 
spatialQuery;; 
=;; 
strategy;; '
.;;' (
	MakeQuery;;( 1
(;;1 2
args;;2 6
);;6 7
;;;7 8
var<< 
valueSource<< 
=<< 
strategy<< &
.<<& '(
MakeRecipDistanceValueSource<<' C
(<<C D
	rectangle<<D M
)<<M N
;<<N O
var== 
valueSourceFilter== !
===" #
new==$ '
ValueSourceFilter==( 9
(==9 :
new==: =
QueryWrapperFilter==> P
(==P Q
spatialQuery==Q ]
)==] ^
,==^ _
valueSource==` k
,==k l
$num==m n
,==n o
$num==p q
)==q r
;==r s
booleanQuery?? 
.?? 
Add?? 
(?? 
new??  
FunctionQuery??! .
(??. /
valueSource??/ :
)??: ;
,??; <
Occur??= B
.??B C
MUST??C G
)??G H
;??H I
returnAA 
newAA 
FilteredQueryAA $
(AA$ %
booleanQueryAA% 1
,AA1 2
valueSourceFilterAA3 D
)AAD E
;AAE F
}BB 	
}CC 
}DD ˜ã
ûC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\GeoDistanceFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public 

class %
GeoDistanceFilterProvider *
:+ ,(
ILuceneBooleanFilterProvider- I
{ 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{ 	
if 
( 
type 
!= 
$str &
)& '
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var   
queryObj   
=   
filter   !
as  " $
JObject  % ,
;  , -
if"" 
("" 
queryObj"" 
."" 

Properties"" #
(""# $
)""$ %
.""% &
Count""& +
(""+ ,
)"", -
!="". 0
$num""1 2
)""2 3
{## 
return$$ 
null$$ 
;$$ 
}%% 
var'' 
ctx'' 
='' 
SpatialContext'' $
.''$ %
Geo''% (
;''( )
var)) 
	maxLevels)) 
=)) 
$num)) 
;)) 
SpatialPrefixTree,, 
grid,, "
=,,# $
new,,% (
GeohashPrefixTree,,) :
(,,: ;
ctx,,; >
,,,> ?
	maxLevels,,@ I
),,I J
;,,J K
	JProperty.. 
distanceProperty.. &
=..' (
null..) -
;..- .
	JProperty// 
geoProperty// !
=//" #
null//$ (
;//( )
foreach11 
(11 
var11 
	jProperty11 "
in11# %
queryObj11& .
.11. /

Properties11/ 9
(119 :
)11: ;
)11; <
{22 
if33 
(33 
	jProperty33 
.33 
Name33 "
.33" #
Equals33# )
(33) *
$str33* 4
,334 5
StringComparison336 F
.33F G
Ordinal33G N
)33N O
)33O P
{44 
distanceProperty55 $
=55% &
	jProperty55' 0
;550 1
}66 
else77 
{88 
geoProperty99 
=99  !
	jProperty99" +
;99+ ,
}:: 
};; 
if== 
(== 
distanceProperty==  
====! #
null==$ (
||==) +
geoProperty==, 7
====8 :
null==; ?
)==? @
{>> 
return?? 
null?? 
;?? 
}@@ 
varBB 
strategyBB 
=BB 
newBB '
RecursivePrefixTreeStrategyBB :
(BB: ;
gridBB; ?
,BB? @
geoPropertyBBA L
.BBL M
NameBBM Q
)BBQ R
;BBR S
ifDD 
(DD 
!DD 
TryParseDistanceDD !
(DD! "
(DD" #
stringDD# )
)DD) *
distancePropertyDD* :
.DD: ;
ValueDD; @
,DD@ A
outDDB E
varDDF I
distanceDegreesDDJ Y
)DDY Z
)DDZ [
{EE 
returnFF 
nullFF 
;FF 
}GG 
ifII 
(II 
!II !
TryGetPointFromJTokenII &
(II& '
geoPropertyII' 2
.II2 3
ValueII3 8
,II8 9
outII: =
varII> A
pointIIB G
)IIG H
)IIH I
{JJ 
returnKK 
nullKK 
;KK 
}LL 
varNN 
circleNN 
=NN 
ctxNN 
.NN 

MakeCircleNN '
(NN' (
pointNN( -
.NN- .
XNN. /
,NN/ 0
pointNN1 6
.NN6 7
YNN7 8
,NN8 9
distanceDegreesNN: I
)NNI J
;NNJ K
varPP 
argsPP 
=PP 
newPP 
SpatialArgsPP &
(PP& '
SpatialOperationPP' 7
.PP7 8

IntersectsPP8 B
,PPB C
circlePPD J
)PPJ K
;PPK L
varRR 
spatialQueryRR 
=RR 
strategyRR '
.RR' (
	MakeQueryRR( 1
(RR1 2
argsRR2 6
)RR6 7
;RR7 8
varSS 
valueSourceSS 
=SS 
strategySS &
.SS& '(
MakeRecipDistanceValueSourceSS' C
(SSC D
circleSSD J
)SSJ K
;SSK L
varTT 
valueSourceFilterTT !
=TT" #
newTT$ '
ValueSourceFilterTT( 9
(TT9 :
newTT: =
QueryWrapperFilterTT> P
(TTP Q
spatialQueryTTQ ]
)TT] ^
,TT^ _
valueSourceTT` k
,TTk l
$numTTm n
,TTn o
$numTTp q
)TTq r
;TTr s
booleanQueryVV 
.VV 
AddVV 
(VV 
newVV  
FunctionQueryVV! .
(VV. /
valueSourceVV/ :
)VV: ;
,VV; <
OccurVV= B
.VVB C
MUSTVVC G
)VVG H
;VVH I
returnXX 
newXX 
FilteredQueryXX $
(XX$ %
booleanQueryXX% 1
,XX1 2
valueSourceFilterXX3 D
)XXD E
;XXE F
}YY 	
private[[ 
static[[ 
bool[[ 
TryParseDistance[[ ,
([[, -
string[[- 3
distanceValue[[4 A
,[[A B
out[[C F
double[[G M
distanceDegrees[[N ]
)[[] ^
{\\ 	
distanceDegrees]] 
=]] 
-]] 
$num]]  
;]]  !
var__ 
distanceString__ 
=__  
Regex__! &
.__& '
Match__' ,
(__, -
distanceValue__- :
,__: ;
$str__< W
)__W X
.__X Y
Value__Y ^
;__^ _
ifaa 
(aa 
Stringaa 
.aa 
IsNullOrEmptyaa $
(aa$ %
distanceStringaa% 3
)aa3 4
)aa4 5
{bb 
returncc 
falsecc 
;cc 
}dd 
varff 
distanceUnitsff 
=ff 
distanceValueff  -
.ff- .
	Substringff. 7
(ff7 8
distanceStringff8 F
.ffF G
LengthffG M
,ffM N
distanceValueffO \
.ff\ ]
Lengthff] c
-ffd e
distanceStringfff t
.fft u
Lengthffu {
)ff{ |
.ff| }
ToLower	ff} Ñ
(
ffÑ Ö
)
ffÖ Ü
;
ffÜ á
ifhh 
(hh 
!hh 
Doublehh 
.hh 
TryParsehh  
(hh  !
distanceStringhh! /
,hh/ 0
outhh1 4
varhh5 8
distancehh9 A
)hhA B
)hhB C
{ii 
returnjj 
falsejj 
;jj 
}kk 
switchmm 
(mm 
distanceUnitsmm !
)mm! "
{nn 
caseoo 
$stroo 
:oo 
casepp 
$strpp 
:pp 
distanceDegreesqq #
=qq$ %
DistanceUtilsqq& 3
.qq3 4
Dist2Degreesqq4 @
(qq@ A
distanceqqA I
,qqI J
DistanceUtilsqqK X
.qqX Y 
EarthMeanRadiusMilesqqY m
)qqm n
;qqn o
returnrr 
truerr 
;rr  
casess 
$strss 
:ss 
casett 
$strtt !
:tt! "
distanceDegreesuu #
=uu$ %
DistanceUtilsuu& 3
.uu3 4
Dist2Degreesuu4 @
(uu@ A
distanceuuA I
,uuI J
DistanceUtilsuuK X
.uuX Y%
EarthMeanRadiusKilometersuuY r
)uur s
;uus t
returnvv 
truevv 
;vv  
caseww 
$strww 
:ww 
casexx 
$strxx 
:xx 
distanceDegreesyy #
=yy$ %
DistanceUtilsyy& 3
.yy3 4
Dist2Degreesyy4 @
(yy@ A
distanceyyA I
/yyJ K
$numyyL P
,yyP Q
DistanceUtilsyyR _
.yy_ ` 
EarthMeanRadiusMilesyy` t
)yyt u
;yyu v
returnzz 
truezz 
;zz  
case{{ 
$str{{ 
:{{ 
case|| 
$str|| 
:|| 
distanceDegrees}} #
=}}$ %
DistanceUtils}}& 3
.}}3 4
Dist2Degrees}}4 @
(}}@ A
distance}}A I
/}}J K
$num}}L P
,}}P Q
DistanceUtils}}R _
.}}_ ` 
EarthMeanRadiusMiles}}` t
)}}t u
;}}u v
return~~ 
true~~ 
;~~  
case 
$str 
: 
case
ÄÄ 
$str
ÄÄ 
:
ÄÄ 
distanceDegrees
ÅÅ #
=
ÅÅ$ %
DistanceUtils
ÅÅ& 3
.
ÅÅ3 4
Dist2Degrees
ÅÅ4 @
(
ÅÅ@ A
distance
ÅÅA I
/
ÅÅJ K
$num
ÅÅL Q
,
ÅÅQ R
DistanceUtils
ÅÅS `
.
ÅÅ` a"
EarthMeanRadiusMiles
ÅÅa u
)
ÅÅu v
;
ÅÅv w
return
ÇÇ 
true
ÇÇ 
;
ÇÇ  
case
ÉÉ 
$str
ÉÉ 
:
ÉÉ 
case
ÑÑ 
$str
ÑÑ 
:
ÑÑ 
distanceDegrees
ÖÖ #
=
ÖÖ$ %
DistanceUtils
ÖÖ& 3
.
ÖÖ3 4
Dist2Degrees
ÖÖ4 @
(
ÖÖ@ A
distance
ÖÖA I
/
ÖÖJ K
$num
ÖÖL P
,
ÖÖP Q
DistanceUtils
ÖÖR _
.
ÖÖ_ `'
EarthMeanRadiusKilometers
ÖÖ` y
)
ÖÖy z
;
ÖÖz {
return
ÜÜ 
true
ÜÜ 
;
ÜÜ  
case
áá 
$str
áá 
:
áá 
case
àà 
$str
àà "
:
àà" #
distanceDegrees
ââ #
=
ââ$ %
DistanceUtils
ââ& 3
.
ââ3 4
Dist2Degrees
ââ4 @
(
ââ@ A
distance
ââA I
/
ââJ K
$num
ââL R
,
ââR S
DistanceUtils
ââT a
.
ââa b'
EarthMeanRadiusKilometers
ââb {
)
ââ{ |
;
ââ| }
return
ää 
true
ää 
;
ää  
case
ãã 
$str
ãã 
:
ãã 
case
åå 
$str
åå "
:
åå" #
distanceDegrees
çç #
=
çç$ %
DistanceUtils
çç& 3
.
çç3 4
Dist2Degrees
çç4 @
(
çç@ A
distance
ççA I
/
ççJ K
$num
ççL S
,
ççS T
DistanceUtils
ççU b
.
ççb c'
EarthMeanRadiusKilometers
ççc |
)
çç| }
;
çç} ~
return
éé 
true
éé 
;
éé  
case
èè 
$str
èè 
:
èè 
case
êê 
$str
êê 
:
êê 
case
ëë 
$str
ëë $
:
ëë$ %
distanceDegrees
íí #
=
íí$ %
DistanceUtils
íí& 3
.
íí3 4
Dist2Degrees
íí4 @
(
íí@ A
distance
ííA I
*
ííJ K
$num
ííL Q
,
ííQ R
DistanceUtils
ííS `
.
íí` a'
EarthMeanRadiusKilometers
íía z
)
ííz {
;
íí{ |
return
ìì 
true
ìì 
;
ìì  
}
îî 
return
ññ 
false
ññ 
;
ññ 
}
óó 	
private
ôô 
static
ôô 
bool
ôô #
TryGetPointFromJToken
ôô 1
(
ôô1 2
JToken
ôô2 8
geoToken
ôô9 A
,
ôôA B
out
ôôC F
IPoint
ôôG M
point
ôôN S
)
ôôS T
{
öö 	
point
õõ 
=
õõ 
null
õõ 
;
õõ 
var
ùù 
ctx
ùù 
=
ùù 
SpatialContext
ùù $
.
ùù$ %
Geo
ùù% (
;
ùù( )
switch
üü 
(
üü 
geoToken
üü 
.
üü 
Type
üü !
)
üü! "
{
†† 
case
°° 

JTokenType
°° 
.
°°  
String
°°  &
:
°°& '
var
¢¢ 
geoStringValue
¢¢ &
=
¢¢' (
geoToken
¢¢) 1
.
¢¢1 2
ToString
¢¢2 :
(
¢¢: ;
)
¢¢; <
;
¢¢< =
var
§§ 
geoStringSplit
§§ &
=
§§' (
geoStringValue
§§) 7
.
§§7 8
Split
§§8 =
(
§§= >
$char
§§> A
)
§§A B
;
§§B C
if
¶¶ 
(
¶¶ 
geoStringSplit
¶¶ &
.
¶¶& '
Length
¶¶' -
==
¶¶. 0
$num
¶¶1 2
)
¶¶2 3
{
ßß 
if
®® 
(
®® 
!
®® 
Double
®® #
.
®®# $
TryParse
®®$ ,
(
®®, -
geoStringSplit
®®- ;
[
®®; <
$num
®®< =
]
®®= >
,
®®> ?
out
®®@ C
var
®®D G
lat
®®H K
)
®®K L
)
®®L M
{
©© 
return
™™ "
false
™™# (
;
™™( )
}
´´ 
if
≠≠ 
(
≠≠ 
!
≠≠ 
Double
≠≠ #
.
≠≠# $
TryParse
≠≠$ ,
(
≠≠, -
geoStringSplit
≠≠- ;
[
≠≠; <
$num
≠≠< =
]
≠≠= >
,
≠≠> ?
out
≠≠@ C
var
≠≠D G
lon
≠≠H K
)
≠≠K L
)
≠≠L M
{
ÆÆ 
return
ØØ "
false
ØØ# (
;
ØØ( )
}
∞∞ 
point
≤≤ 
=
≤≤ 
new
≤≤  #
Point
≤≤$ )
(
≤≤) *
lon
≤≤* -
,
≤≤- .
lat
≤≤/ 2
,
≤≤2 3
ctx
≤≤4 7
)
≤≤7 8
;
≤≤8 9
return
≥≥ 
true
≥≥ #
;
≥≥# $
}
¥¥ 
point
∂∂ 
=
∂∂ 
GeohashUtils
∂∂ (
.
∂∂( )
Decode
∂∂) /
(
∂∂/ 0
geoStringValue
∂∂0 >
,
∂∂> ?
ctx
∂∂@ C
)
∂∂C D
;
∂∂D E
return
∑∑ 
true
∑∑ 
;
∑∑  
case
∏∏ 

JTokenType
∏∏ 
.
∏∏  
Object
∏∏  &
:
∏∏& '
var
ππ 
geoPointValue
ππ %
=
ππ& '
(
ππ( )
JObject
ππ) 0
)
ππ0 1
geoToken
ππ1 9
;
ππ9 :
if
ªª 
(
ªª 
!
ªª 
geoPointValue
ªª &
.
ªª& '
ContainsKey
ªª' 2
(
ªª2 3
$str
ªª3 8
)
ªª8 9
||
ªª: <
!
ªª= >
geoPointValue
ªª> K
.
ªªK L
ContainsKey
ªªL W
(
ªªW X
$str
ªªX ]
)
ªª] ^
)
ªª^ _
{
ºº 
return
ΩΩ 
false
ΩΩ $
;
ΩΩ$ %
}
ææ 
point
¿¿ 
=
¿¿ 
new
¿¿ 
Point
¿¿  %
(
¿¿% &
geoPointValue
¿¿& 3
[
¿¿3 4
$str
¿¿4 9
]
¿¿9 :
.
¿¿: ;
Value
¿¿; @
<
¿¿@ A
double
¿¿A G
>
¿¿G H
(
¿¿H I
)
¿¿I J
,
¿¿J K
geoPointValue
¿¿L Y
[
¿¿Y Z
$str
¿¿Z _
]
¿¿_ `
.
¿¿` a
Value
¿¿a f
<
¿¿f g
double
¿¿g m
>
¿¿m n
(
¿¿n o
)
¿¿o p
,
¿¿p q
ctx
¿¿r u
)
¿¿u v
;
¿¿v w
return
¡¡ 
true
¡¡ 
;
¡¡  
case
¬¬ 

JTokenType
¬¬ 
.
¬¬  
Array
¬¬  %
:
¬¬% &
var
√√ 
geoArrayValue
√√ %
=
√√& '
(
√√( )
JArray
√√) /
)
√√/ 0
geoToken
√√0 8
;
√√8 9
if
≈≈ 
(
≈≈ 
geoArrayValue
≈≈ %
.
≈≈% &
Count
≈≈& +
!=
≈≈, .
$num
≈≈/ 0
)
≈≈0 1
{
∆∆ 
return
«« 
false
«« $
;
««$ %
}
»» 
point
   
=
   
new
   
Point
    %
(
  % &
geoArrayValue
  & 3
[
  3 4
$num
  4 5
]
  5 6
.
  6 7
Value
  7 <
<
  < =
double
  = C
>
  C D
(
  D E
)
  E F
,
  F G
geoArrayValue
  H U
[
  U V
$num
  V W
]
  W X
.
  X Y
Value
  Y ^
<
  ^ _
double
  _ e
>
  e f
(
  f g
)
  g h
,
  h i
ctx
  j m
)
  m n
;
  n o
return
ÃÃ 
true
ÃÃ 
;
ÃÃ  
default
ÕÕ 
:
ÕÕ 
throw
ÕÕ 
new
ÕÕ "
ArgumentException
ÕÕ# 4
(
ÕÕ4 5
$str
ÕÕ5 W
)
ÕÕW X
;
ÕÕX Y
}
ŒŒ 
}
œœ 	
}
–– 
}—— Å
°C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\ILuceneBooleanFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public 

	interface (
ILuceneBooleanFilterProvider 1
{ 
FilteredQuery 
CreateFilteredQuery )
() *
ILuceneQueryService* =
builder> E
,E F
LuceneQueryContextG Y
contextZ a
,a b
stringc i
typej n
,n o
JTokenp v
tokenw |
,| }
Query	~ É
toFilter
Ñ å
)
å ç
;
ç é
}		 
}

 À
õC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\MatchAllFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public 

class "
MatchAllFilterProvider '
:( )(
ILuceneBooleanFilterProvider* F
{ 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{		 	
if

 
(

 
type

 
!=

 
$str

 #
)

# $
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
matchAllQuery 
= 
new  #
MatchAllDocsQuery$ 5
(5 6
)6 7
;7 8
booleanQuery 
. 
Add 
( 
matchAllQuery *
,* +
Occur, 1
.1 2
MUST2 6
)6 7
;7 8
var 
queryFilter 
= 
new !
QueryWrapperFilter" 4
(4 5
matchAllQuery5 B
)B C
;C D
return 
new 
FilteredQuery $
($ %
booleanQuery% 1
,1 2
queryFilter3 >
)> ?
;? @
} 	
} 
} ÿ;
òC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\MatchFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public		 

class		 
MatchFilterProvider		 $
:		% &(
ILuceneBooleanFilterProvider		' C
{

 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{ 	
if 
( 
type 
!= 
$str 
)  
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
queryObj 
= 
filter !
as" $
JObject% ,
;, -
var 
first 
= 
queryObj  
.  !

Properties! +
(+ ,
), -
.- .
First. 3
(3 4
)4 5
;5 6
var 
	boolQuery 
= 
new 
BooleanQuery  ,
(, -
)- .
;. /
QueryWrapperFilter 
queryFilter *
;* +
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
foreach   
(   
var    
term  ! %
in  & (
LuceneQueryService  ) ;
.  ; <
Tokenize  < D
(  D E
first  E J
.  J K
Name  K O
,  O P
first  Q V
.  V W
Value  W \
.  \ ]
ToString  ] e
(  e f
)  f g
,  g h
context  i p
.  p q
DefaultAnalyzer	  q Ä
)
  Ä Å
)
  Å Ç
{!! 
	boolQuery"" !
.""! "
Add""" %
(""% &
new""& )
	TermQuery""* 3
(""3 4
new""4 7
Term""8 <
(""< =
first""= B
.""B C
Name""C G
,""G H
term""I M
)""M N
)""N O
,""O P
Occur""Q V
.""V W
SHOULD""W ]
)""] ^
;""^ _
}## 
break$$ 
;$$ 
case%% 

JTokenType%% 
.%%  
Object%%  &
:%%& '
var&& 
obj&& 
=&& 
(&& 
JObject&& &
)&&& '
first&&' ,
.&&, -
Value&&- 2
;&&2 3
var'' 
value'' 
='' 
obj''  #
.''# $
Property''$ ,
('', -
$str''- 4
)''4 5
?''5 6
.''6 7
Value''7 <
.''< =
Value''= B
<''B C
string''C I
>''I J
(''J K
)''K L
;''L M
if)) 
()) 
obj)) 
.)) 
TryGetValue)) '
())' (
$str))( /
,))/ 0
out))1 4
var))5 8
boost))9 >
)))> ?
)))? @
{** 
	boolQuery++ !
.++! "
Boost++" '
=++( )
boost++* /
.++/ 0
Value++0 5
<++5 6
float++6 ;
>++; <
(++< =
)++= >
;++> ?
},, 
var.. 
occur.. 
=.. 
Occur..  %
...% &
SHOULD..& ,
;.., -
if// 
(// 
obj// 
.// 
TryGetValue// '
(//' (
$str//( 2
,//2 3
out//4 7
var//8 ;
op//< >
)//> ?
)//? @
{00 
occur11 
=11 
op11  "
.11" #
ToString11# +
(11+ ,
)11, -
==11. 0
$str111 6
?117 8
Occur119 >
.11> ?
MUST11? C
:11D E
Occur11F K
.11K L
SHOULD11L R
;11R S
}22 
var44 
terms44 
=44 
LuceneQueryService44  2
.442 3
Tokenize443 ;
(44; <
first44< A
.44A B
Name44B F
,44F G
value44H M
,44M N
context44O V
.44V W
DefaultAnalyzer44W f
)44f g
;44g h
if66 
(66 
!66 
terms66 
.66 
Any66 "
(66" #
)66# $
)66$ %
{77 
if88 
(88 
obj88 
.88  
TryGetValue88  +
(88+ ,
$str88, >
,88> ?
out88@ C
var88D G
zeroTermsQuery88H V
)88V W
)88W X
{99 
if:: 
(::  
zeroTermsQuery::  .
.::. /
ToString::/ 7
(::7 8
)::8 9
==::: <
$str::= B
)::B C
{;; 
var<<  #
matchAllDocsQuery<<$ 5
=<<6 7
new<<8 ;
MatchAllDocsQuery<<< M
(<<M N
)<<N O
;<<O P
booleanQuery==  ,
.==, -
Add==- 0
(==0 1
matchAllDocsQuery==1 B
,==B C
Occur==D I
.==I J
MUST==J N
)==N O
;==O P
queryFilter>>  +
=>>, -
new>>. 1
QueryWrapperFilter>>2 D
(>>D E
matchAllDocsQuery>>E V
)>>V W
;>>W X
break??  %
;??% &
}@@ 
}AA 
}BB 
foreachDD 
(DD 
varDD  
termDD! %
inDD& (
termsDD) .
)DD. /
{EE 
	boolQueryFF !
.FF! "
AddFF" %
(FF% &
newFF& )
	TermQueryFF* 3
(FF3 4
newFF4 7
TermFF8 <
(FF< =
firstFF= B
.FFB C
NameFFC G
,FFG H
termFFI M
)FFM N
)FFN O
,FFO P
occurFFQ V
)FFV W
;FFW X
}GG 
breakII 
;II 
defaultJJ 
:JJ 
throwJJ 
newJJ "
ArgumentExceptionJJ# 4
(JJ4 5
$strJJ5 D
)JJD E
;JJE F
}KK 
booleanQueryMM 
.MM 
AddMM 
(MM 
	boolQueryMM &
,MM& '
OccurMM( -
.MM- .
MUSTMM. 2
)MM2 3
;MM3 4
queryFilterNN 
=NN 
newNN 
QueryWrapperFilterNN 0
(NN0 1
	boolQueryNN1 :
)NN: ;
;NN; <
returnPP 
newPP 
FilteredQueryPP $
(PP$ %
booleanQueryPP% 1
,PP1 2
queryFilterPP3 >
)PP> ?
;PP? @
}QQ 	
}RR 
}SS Ò&
ûC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\MatchPhraseFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public		 

class		 %
MatchPhraseFilterProvider		 *
:		+ ,(
ILuceneBooleanFilterProvider		- I
{

 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{ 	
if 
( 
type 
!= 
$str &
)& '
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
queryObj 
= 
filter !
as" $
JObject% ,
;, -
var 
first 
= 
queryObj  
.  !

Properties! +
(+ ,
), -
.- .
First. 3
(3 4
)4 5
;5 6
var 
phraseQuery 
= 
new !
PhraseQuery" -
(- .
). /
;/ 0
JToken 
value 
; 
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
value   
=   
first   !
.  ! "
Value  " '
;  ' (
break!! 
;!! 
case"" 

JTokenType"" 
.""  
Object""  &
:""& '
var## 
obj## 
=## 
(## 
JObject## &
)##& '
first##' ,
.##, -
Value##- 2
;##2 3
if%% 
(%% 
!%% 
obj%% 
.%% 
TryGetValue%% (
(%%( )
$str%%) 0
,%%0 1
out%%2 5
value%%6 ;
)%%; <
)%%< =
{&& 
throw'' 
new'' !
ArgumentException''" 3
(''3 4
$str''4 Y
)''Y Z
;''Z [
}(( 
if,, 
(,, 
obj,, 
.,, 
TryGetValue,, '
(,,' (
$str,,( .
,,,. /
out,,0 3
var,,4 7
slop,,8 <
),,< =
),,= >
{-- 
phraseQuery.. #
...# $
Slop..$ (
=..) *
slop..+ /
.../ 0
Value..0 5
<..5 6
int..6 9
>..9 :
(..: ;
)..; <
;..< =
}// 
break11 
;11 
default22 
:22 
throw22 
new22 "
ArgumentException22# 4
(224 5
$str225 M
)22M N
;22N O
}33 
foreach55 
(55 
var55 
term55 
in55  
LuceneQueryService55! 3
.553 4
Tokenize554 <
(55< =
first55= B
.55B C
Name55C G
,55G H
value55I N
.55N O
Value55O T
<55T U
string55U [
>55[ \
(55\ ]
)55] ^
,55^ _
context55` g
.55g h
DefaultAnalyzer55h w
)55w x
)55x y
{66 
phraseQuery77 
.77 
Add77 
(77  
new77  #
Term77$ (
(77( )
first77) .
.77. /
Name77/ 3
,773 4
term775 9
)779 :
)77: ;
;77; <
}88 
booleanQuery:: 
.:: 
Add:: 
(:: 
phraseQuery:: (
,::( )
Occur::* /
.::/ 0
MUST::0 4
)::4 5
;::5 6
var;; 
queryFilter;; 
=;; 
new;; !
QueryWrapperFilter;;" 4
(;;4 5
phraseQuery;;5 @
);;@ A
;;;A B
return== 
new== 
FilteredQuery== $
(==$ %
booleanQuery==% 1
,==1 2
queryFilter==3 >
)==> ?
;==? @
}>> 	
}?? 
}@@ –*
ôC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\PrefixFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public		 

class		  
PrefixFilterProvider		 %
:		& '(
ILuceneBooleanFilterProvider		( D
{

 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{ 	
if 
( 
type 
!= 
$str  
)  !
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
queryObj 
= 
filter !
as" $
JObject% ,
;, -
var 
first 
= 
queryObj  
.  !

Properties! +
(+ ,
), -
.- .
First. 3
(3 4
)4 5
;5 6
PrefixQuery 
prefixQuery #
;# $
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
prefixQuery   
=    !
new  " %
PrefixQuery  & 1
(  1 2
new  2 5
Term  6 :
(  : ;
first  ; @
.  @ A
Name  A E
,  E F
first  G L
.  L M
Value  M R
.  R S
ToString  S [
(  [ \
)  \ ]
)  ] ^
)  ^ _
;  _ `
break!! 
;!! 
case"" 

JTokenType"" 
.""  
Object""  &
:""& '
var## 
obj## 
=## 
(## 
JObject## &
)##& '
first##' ,
.##, -
Value##- 2
;##2 3
if%% 
(%% 
obj%% 
.%% 
TryGetValue%% '
(%%' (
$str%%( /
,%%/ 0
out%%1 4
var%%5 8
value%%9 >
)%%> ?
)%%? @
{&& 
prefixQuery'' #
=''$ %
new''& )
PrefixQuery''* 5
(''5 6
new''6 9
Term'': >
(''> ?
first''? D
.''D E
Name''E I
,''I J
value''K P
.''P Q
Value''Q V
<''V W
string''W ]
>''] ^
(''^ _
)''_ `
)''` a
)''a b
;''b c
}(( 
else)) 
if)) 
()) 
obj))  
.))  !
TryGetValue))! ,
()), -
$str))- 5
,))5 6
out))7 :
var)); >
prefix))? E
)))E F
)))F G
{** 
prefixQuery++ #
=++$ %
new++& )
PrefixQuery++* 5
(++5 6
new++6 9
Term++: >
(++> ?
first++? D
.++D E
Name++E I
,++I J
prefix++K Q
.++Q R
Value++R W
<++W X
string++X ^
>++^ _
(++_ `
)++` a
)++a b
)++b c
;++c d
},, 
else-- 
{.. 
throw// 
new// !
ArgumentException//" 3
(//3 4
$str//4 V
)//V W
;//W X
}00 
if22 
(22 
obj22 
.22 
TryGetValue22 '
(22' (
$str22( /
,22/ 0
out221 4
var225 8
boost229 >
)22> ?
)22? @
{33 
prefixQuery44 #
.44# $
Boost44$ )
=44* +
boost44, 1
.441 2
Value442 7
<447 8
float448 =
>44= >
(44> ?
)44? @
;44@ A
}55 
break77 
;77 
default88 
:88 
throw88 
new88 "
ArgumentException88# 4
(884 5
$str885 K
)88K L
;88L M
}99 
booleanQuery;; 
.;; 
Add;; 
(;; 
prefixQuery;; (
,;;( )
Occur;;* /
.;;/ 0
MUST;;0 4
);;4 5
;;;5 6
var<< 
queryFilter<< 
=<< 
new<< !
QueryWrapperFilter<<" 4
(<<4 5
prefixQuery<<5 @
)<<@ A
;<<A B
return>> 
new>> 
FilteredQuery>> $
(>>$ %
booleanQuery>>% 1
,>>1 2
queryFilter>>3 >
)>>> ?
;>>? @
}?? 	
}@@ 
}AA †I
òC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\RangeFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public 

class 
RangeFilterProvider $
:% &(
ILuceneBooleanFilterProvider' C
{		 
public

 
FilteredQuery

 
CreateFilteredQuery

 0
(

0 1
ILuceneQueryService

1 D
builder

E L
,

L M
LuceneQueryContext

N `
context

a h
,

h i
string

j p
type

q u
,

u v
JToken

w }
filter	

~ Ñ
,


Ñ Ö
Query


Ü ã
toFilter


å î
)


î ï
{ 	
if 
( 
type 
!= 
$str 
)  
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
queryObj 
= 
filter !
as" $
JObject% ,
;, -
var 
range 
= 
queryObj  
.  !

Properties! +
(+ ,
), -
.- .
First. 3
(3 4
)4 5
;5 6
Query 

rangeQuery 
; 
switch 
( 
range 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
Object  &
:& '
var 
field 
= 
range  %
.% &
Name& *
;* +
JToken   
gt   
=   
null    $
;  $ %
JToken!! 
lt!! 
=!! 
null!!  $
;!!$ %
var"" 
	tokenType"" !
=""" #

JTokenType""$ .
."". /
None""/ 3
;""3 4
float## 
?## 
boost##  
=##! "
null### '
;##' (
bool%% 
includeLower%% %
=%%& '
false%%( -
,%%- .
includeUpper%%/ ;
=%%< =
false%%> C
;%%C D
foreach'' 
('' 
var''  
element''! (
in'') +
('', -
(''- .
JObject''. 5
)''5 6
range''6 ;
.''; <
Value''< A
)''A B
.''B C

Properties''C M
(''M N
)''N O
)''O P
{(( 
switch)) 
())  
element))  '
.))' (
Name))( ,
.)), -
ToLowerInvariant))- =
())= >
)))> ?
)))? @
{** 
case++  
$str++! %
:++% &
gt,,  "
=,,# $
element,,% ,
.,,, -
Value,,- 2
;,,2 3
	tokenType--  )
=--* +
gt--, .
.--. /
Type--/ 3
;--3 4
break..  %
;..% &
case//  
$str//! &
://& '
gt00  "
=00# $
element00% ,
.00, -
Value00- 2
;002 3
	tokenType11  )
=11* +
gt11, .
.11. /
Type11/ 3
;113 4
includeLower22  ,
=22- .
true22/ 3
;223 4
break33  %
;33% &
case44  
$str44! %
:44% &
lt55  "
=55# $
element55% ,
.55, -
Value55- 2
;552 3
	tokenType66  )
=66* +
lt66, .
.66. /
Type66/ 3
;663 4
break77  %
;77% &
case88  
$str88! &
:88& '
lt99  "
=99# $
element99% ,
.99, -
Value99- 2
;992 3
	tokenType::  )
=::* +
lt::, .
.::. /
Type::/ 3
;::3 4
includeUpper;;  ,
=;;- .
true;;/ 3
;;;3 4
break<<  %
;<<% &
case==  
$str==! (
:==( )
boost>>  %
=>>& '
element>>( /
.>>/ 0
Value>>0 5
.>>5 6
Value>>6 ;
<>>; <
float>>< A
>>>A B
(>>B C
)>>C D
;>>D E
break??  %
;??% &
}@@ 
}AA 
ifCC 
(CC 
gtCC 
!=CC 
nullCC "
&&CC# %
ltCC& (
!=CC) +
nullCC, 0
&&CC1 3
gtCC4 6
.CC6 7
TypeCC7 ;
!=CC< >
ltCC? A
.CCA B
TypeCCB F
)CCF G
{DD 
throwEE 
newEE !
ArgumentExceptionEE" 3
(EE3 4
$strEE4 c
)EEc d
;EEd e
}FF 
switchHH 
(HH 
	tokenTypeHH %
)HH% &
{II 
caseJJ 

JTokenTypeJJ '
.JJ' (
IntegerJJ( /
:JJ/ 0
varKK 
minIntKK  &
=KK' (
gtKK) +
?KK+ ,
.KK, -
ValueKK- 2
<KK2 3
longKK3 7
>KK7 8
(KK8 9
)KK9 :
;KK: ;
varLL 
maxIntLL  &
=LL' (
ltLL) +
?LL+ ,
.LL, -
ValueLL- 2
<LL2 3
longLL3 7
>LL7 8
(LL8 9
)LL9 :
;LL: ;

rangeQueryMM &
=MM' (
NumericRangeQueryMM) :
.MM: ;
NewInt64RangeMM; H
(MMH I
fieldMMI N
,MMN O
minIntMMP V
,MMV W
maxIntMMX ^
,MM^ _
includeLowerMM` l
,MMl m
includeUpperMMn z
)MMz {
;MM{ |
breakNN !
;NN! "
caseOO 

JTokenTypeOO '
.OO' (
FloatOO( -
:OO- .
varPP 
minFloatPP  (
=PP) *
gtPP+ -
?PP- .
.PP. /
ValuePP/ 4
<PP4 5
doublePP5 ;
>PP; <
(PP< =
)PP= >
;PP> ?
varQQ 
maxFloatQQ  (
=QQ) *
ltQQ+ -
?QQ- .
.QQ. /
ValueQQ/ 4
<QQ4 5
doubleQQ5 ;
>QQ; <
(QQ< =
)QQ= >
;QQ> ?

rangeQueryRR &
=RR' (
NumericRangeQueryRR) :
.RR: ;
NewDoubleRangeRR; I
(RRI J
fieldRRJ O
,RRO P
minFloatRRQ Y
,RRY Z
maxFloatRR[ c
,RRc d
includeLowerRRe q
,RRq r
includeUpperRRs 
)	RR Ä
;
RRÄ Å
breakSS !
;SS! "
caseTT 

JTokenTypeTT '
.TT' (
StringTT( .
:TT. /
varUU 
	minStringUU  )
=UU* +
gtUU, .
?UU. /
.UU/ 0
ValueUU0 5
<UU5 6
stringUU6 <
>UU< =
(UU= >
)UU> ?
;UU? @
varVV 
	maxStringVV  )
=VV* +
ltVV, .
?VV. /
.VV/ 0
ValueVV0 5
<VV5 6
stringVV6 <
>VV< =
(VV= >
)VV> ?
;VV? @

rangeQueryWW &
=WW' (
TermRangeQueryWW) 7
.WW7 8
NewStringRangeWW8 F
(WWF G
fieldWWG L
,WWL M
	minStringWWN W
,WWW X
	maxStringWWY b
,WWb c
includeLowerWWd p
,WWp q
includeUpperWWr ~
)WW~ 
;	WW Ä
breakXX !
;XX! "
defaultYY 
:YY  
throwYY! &
newYY' *
ArgumentExceptionYY+ <
(YY< =
$"YY= ?
$strYY? ]
{YY] ^
typeYY^ b
}YYb c
"YYc d
)YYd e
;YYe f
}ZZ 
if\\ 
(\\ 
boost\\ 
!=\\  
null\\! %
)\\% &
{]] 

rangeQuery^^ "
.^^" #
Boost^^# (
=^^) *
boost^^+ 0
.^^0 1
Value^^1 6
;^^6 7
}__ 
breakaa 
;aa 
defaultbb 
:bb 
throwbb 
newbb "
ArgumentExceptionbb# 4
(bb4 5
$strbb5 J
)bbJ K
;bbK L
}cc 
booleanQueryee 
.ee 
Addee 
(ee 

rangeQueryee '
,ee' (
Occuree) .
.ee. /
MUSTee/ 3
)ee3 4
;ee4 5
varff 
queryFilterff 
=ff 
newff !
QueryWrapperFilterff" 4
(ff4 5

rangeQueryff5 ?
)ff? @
;ff@ A
returnhh 
newhh 
FilteredQueryhh $
(hh$ %
booleanQueryhh% 1
,hh1 2
queryFilterhh3 >
)hh> ?
;hh? @
}ii 	
}jj 
}kk ƒ#
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\TermFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public		 

class		 
TermFilterProvider		 #
:		$ %(
ILuceneBooleanFilterProvider		& B
{

 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{ 	
if 
( 
type 
!= 
$str 
) 
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
queryObj 
= 
filter !
as" $
JObject% ,
;, -
var 
first 
= 
queryObj  
.  !

Properties! +
(+ ,
), -
.- .
First. 3
(3 4
)4 5
;5 6
	TermQuery 
	termQuery 
;  
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
	termQuery   
=   
new    #
	TermQuery  $ -
(  - .
new  . 1
Term  2 6
(  6 7
first  7 <
.  < =
Name  = A
,  A B
first  C H
.  H I
Value  I N
.  N O
ToString  O W
(  W X
)  X Y
)  Y Z
)  Z [
;  [ \
break!! 
;!! 
case"" 

JTokenType"" 
.""  
Object""  &
:""& '
var## 
obj## 
=## 
(## 
JObject## &
)##& '
first##' ,
.##, -
Value##- 2
;##2 3
var$$ 
value$$ 
=$$ 
obj$$  #
.$$# $
Property$$$ ,
($$, -
$str$$- 4
)$$4 5
.$$5 6
Value$$6 ;
.$$; <
Value$$< A
<$$A B
string$$B H
>$$H I
($$I J
)$$J K
;$$K L
	termQuery%% 
=%% 
new%%  #
	TermQuery%%$ -
(%%- .
new%%. 1
Term%%2 6
(%%6 7
first%%7 <
.%%< =
Name%%= A
,%%A B
value%%C H
)%%H I
)%%I J
;%%J K
if'' 
('' 
obj'' 
.'' 
TryGetValue'' '
(''' (
$str''( /
,''/ 0
out''1 4
var''5 8
boost''9 >
)''> ?
)''? @
{(( 
	termQuery)) !
.))! "
Boost))" '
=))( )
boost))* /
.))/ 0
Value))0 5
<))5 6
float))6 ;
>)); <
())< =
)))= >
;))> ?
}** 
break++ 
;++ 
default,, 
:,, 
throw,, 
new,, "
ArgumentException,,# 4
(,,4 5
$str,,5 I
),,I J
;,,J K
}-- 
booleanQuery// 
.// 
Add// 
(// 
	termQuery// &
,//& '
Occur//( -
.//- .
MUST//. 2
)//2 3
;//3 4
var00 
queryFilter00 
=00 
new00 !
QueryWrapperFilter00" 4
(004 5
	termQuery005 >
)00> ?
;00? @
return22 
new22 
FilteredQuery22 $
(22$ %
booleanQuery22% 1
,221 2
queryFilter223 >
)22> ?
;22? @
}33 	
}44 
}55 ˆ!
òC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\TermsFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public		 

class		 
TermsFilterProvider		 $
:		% &(
ILuceneBooleanFilterProvider		' C
{

 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{ 	
if 
( 
type 
!= 
$str 
)  
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
queryObj 
= 
filter !
as" $
JObject% ,
;, -
var 
first 
= 
queryObj  
.  !

Properties! +
(+ ,
), -
.- .
First. 3
(3 4
)4 5
;5 6
var 
field 
= 
first 
. 
Name "
;" #
var 
	boolQuery 
= 
new 
BooleanQuery  ,
(, -
)- .
;. /
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
Array  %
:% &
foreach!! 
(!! 
var!!  
item!!! %
in!!& (
(!!) *
(!!* +
JArray!!+ 1
)!!1 2
first!!2 7
.!!7 8
Value!!8 =
)!!= >
)!!> ?
{"" 
if## 
(## 
item##  
.##  !
Type##! %
!=##& (

JTokenType##) 3
.##3 4
String##4 :
)##: ;
{$$ 
throw%% !
new%%" %
ArgumentException%%& 7
(%%7 8
$"%%8 :
$str%%: U
"%%U V
)%%V W
;%%W X
}&& 
	boolQuery(( !
.((! "
Add((" %
(((% &
new((& )
	TermQuery((* 3
(((3 4
new((4 7
Term((8 <
(((< =
field((= B
,((B C
item((D H
.((H I
Value((I N
<((N O
string((O U
>((U V
(((V W
)((W X
)((X Y
)((Y Z
,((Z [
Occur((\ a
.((a b
SHOULD((b h
)((h i
;((i j
})) 
break++ 
;++ 
case,, 

JTokenType,, 
.,,  
Object,,  &
:,,& '
throw-- 
new-- 
ArgumentException-- /
(--/ 0
$str--0 Y
)--Y Z
;--Z [
default.. 
:.. 
throw.. 
new.. "
ArgumentException..# 4
(..4 5
$str..5 J
)..J K
;..K L
}// 
booleanQuery11 
.11 
Add11 
(11 
	boolQuery11 &
,11& '
Occur11( -
.11- .
MUST11. 2
)112 3
;113 4
var22 
queryFilter22 
=22 
new22 !
QueryWrapperFilter22" 4
(224 5
	boolQuery225 >
)22> ?
;22? @
return44 
new44 
FilteredQuery44 $
(44$ %
booleanQuery44% 1
,441 2
queryFilter443 >
)44> ?
;44? @
}55 	
}66 
}77 ∞%
õC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\Filters\WildcardFilterProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
.2 3
Filters3 :
{ 
public		 

class		 "
WildcardFilterProvider		 '
:		( )(
ILuceneBooleanFilterProvider		* F
{

 
public 
FilteredQuery 
CreateFilteredQuery 0
(0 1
ILuceneQueryService1 D
builderE L
,L M
LuceneQueryContextN `
contexta h
,h i
stringj p
typeq u
,u v
JTokenw }
filter	~ Ñ
,
Ñ Ö
Query
Ü ã
toFilter
å î
)
î ï
{ 	
if 
( 
type 
!= 
$str "
)" #
{ 
return 
null 
; 
} 
if 
( 
! 
( 
toFilter 
is 
BooleanQuery *
booleanQuery+ 7
)7 8
)8 9
{ 
return 
null 
; 
} 
var 
queryObj 
= 
filter !
as" $
JObject% ,
;, -
var 
first 
= 
queryObj  
.  !

Properties! +
(+ ,
), -
.- .
First. 3
(3 4
)4 5
;5 6
WildcardQuery 
wildcardQuery '
;' (
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
wildcardQuery   !
=  " #
new  $ '
WildcardQuery  ( 5
(  5 6
new  6 9
Term  : >
(  > ?
first  ? D
.  D E
Name  E I
,  I J
first  K P
.  P Q
Value  Q V
.  V W
ToString  W _
(  _ `
)  ` a
)  a b
)  b c
;  c d
break!! 
;!! 
case"" 

JTokenType"" 
.""  
Object""  &
:""& '
var## 
obj## 
=## 
(## 
JObject## &
)##& '
first##' ,
.##, -
Value##- 2
;##2 3
if%% 
(%% 
!%% 
obj%% 
.%% 
TryGetValue%% (
(%%( )
$str%%) 0
,%%0 1
out%%2 5
var%%6 9
value%%: ?
)%%? @
)%%@ A
{&& 
throw'' 
new'' !
ArgumentException''" 3
(''3 4
$str''4 U
)''U V
;''V W
}(( 
wildcardQuery** !
=**" #
new**$ '
WildcardQuery**( 5
(**5 6
new**6 9
Term**: >
(**> ?
first**? D
.**D E
Name**E I
,**I J
value**K P
.**P Q
Value**Q V
<**V W
string**W ]
>**] ^
(**^ _
)**_ `
)**` a
)**a b
;**b c
if,, 
(,, 
obj,, 
.,, 
TryGetValue,, '
(,,' (
$str,,( /
,,,/ 0
out,,1 4
var,,5 8
boost,,9 >
),,> ?
),,? @
{-- 
wildcardQuery.. %
...% &
Boost..& +
=.., -
boost... 3
...3 4
Value..4 9
<..9 :
float..: ?
>..? @
(..@ A
)..A B
;..B C
}// 
break11 
;11 
default22 
:22 
throw22 
new22 "
ArgumentException22# 4
(224 5
$str225 M
)22M N
;22N O
}33 
booleanQuery55 
.55 
Add55 
(55 
wildcardQuery55 *
,55* +
Occur55, 1
.551 2
MUST552 6
)556 7
;557 8
var66 
queryFilter66 
=66 
new66 !
QueryWrapperFilter66" 4
(664 5
wildcardQuery665 B
)66B C
;66C D
return88 
new88 
FilteredQuery88 $
(88$ %
booleanQuery88% 1
,881 2
queryFilter883 >
)88> ?
;88? @
}99 	
}:: 
};; ú&
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\FuzzyQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{		 
public

 

class

 
FuzzyQueryProvider

 #
:

$ % 
ILuceneQueryProvider

& :
{ 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str 
)  
{ 
return 
null 
; 
} 
var 
first 
= 
query 
. 

Properties (
(( )
)) *
.* +
First+ 0
(0 1
)1 2
;2 3
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
return 
new 

FuzzyQuery )
() *
new* -
Term. 2
(2 3
first3 8
.8 9
Name9 =
,= >
first? D
.D E
ValueE J
.J K
ToStringK S
(S T
)T U
)U V
)V W
;W X
case 

JTokenType 
.  
Object  &
:& '
var 
obj 
= 
( 
JObject &
)& '
first' ,
., -
Value- 2
;2 3
if 
( 
! 
obj 
. 
TryGetValue (
(( )
$str) 0
,0 1
out2 5
var6 9
value: ?
)? @
)@ A
{ 
throw 
new !
ArgumentException" 3
(3 4
$str4 R
)R S
;S T
} 
obj!! 
.!! 
TryGetValue!! #
(!!# $
$str!!$ /
,!!/ 0
out!!1 4
var!!5 8
	fuzziness!!9 B
)!!B C
;!!C D
obj"" 
."" 
TryGetValue"" #
(""# $
$str""$ 3
,""3 4
out""5 8
var""9 <
prefixLength""= I
)""I J
;""J K
obj## 
.## 
TryGetValue## #
(### $
$str##$ 4
,##4 5
out##6 9
var##: =
maxExpansions##> K
)##K L
;##L M
var%% 

fuzzyQuery%% "
=%%# $
new%%% (

FuzzyQuery%%) 3
(%%3 4
new&& 
Term&&  
(&&  !
first&&! &
.&&& '
Name&&' +
,&&+ ,
value&&- 2
.&&2 3
Value&&3 8
<&&8 9
string&&9 ?
>&&? @
(&&@ A
)&&A B
)&&B C
,&&C D
	fuzziness'' !
?''! "
.''" #
Value''# (
<''( )
int'') ,
>'', -
(''- .
)''. /
??''0 2
LevenshteinAutomata''3 F
.''F G&
MAXIMUM_SUPPORTED_DISTANCE''G a
,''a b
prefixLength(( $
?(($ %
.((% &
Value((& +
<((+ ,
int((, /
>((/ 0
(((0 1
)((1 2
??((3 5
$num((6 7
,((7 8
maxExpansions)) %
?))% &
.))& '
Value))' ,
<)), -
int))- 0
>))0 1
())1 2
)))2 3
??))4 6
$num))7 9
,))9 :
true** 
)** 
;** 
if,, 
(,, 
obj,, 
.,, 
TryGetValue,, '
(,,' (
$str,,( /
,,,/ 0
out,,1 4
var,,5 8
boost,,9 >
),,> ?
),,? @
{-- 

fuzzyQuery.. "
..." #
Boost..# (
=..) *
boost..+ 0
...0 1
Value..1 6
<..6 7
float..7 <
>..< =
(..= >
)..> ?
;..? @
}// 
return11 

fuzzyQuery11 %
;11% &
default22 
:22 
throw22 
new22 "
ArgumentException22# 4
(224 5
$str225 J
)22J K
;22K L
}33 
}44 	
}55 
}66 Æ
íC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\MatchAllQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public 

class !
MatchAllQueryProvider &
:' ( 
ILuceneQueryProvider) =
{ 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{		 	
if

 
(

 
type

 
!=

 
$str

 #
)

# $
{ 
return 
null 
; 
} 
var 
matchAllQuery 
= 
new  #
MatchAllDocsQuery$ 5
(5 6
)6 7
;7 8
if 
( 
query 
. 
TryGetValue !
(! "
$str" )
,) *
out+ .
var/ 2
boost3 8
)8 9
)9 :
{ 
matchAllQuery 
. 
Boost #
=$ %
boost& +
.+ ,
Value, 1
<1 2
float2 7
>7 8
(8 9
)9 :
;: ;
} 
return 
matchAllQuery  
;  !
} 	
} 
} ˚
ïC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\MatchPhraseQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public		 

class		 $
MatchPhraseQueryProvider		 )
:		* + 
ILuceneQueryProvider		, @
{

 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str &
)& '
{ 
return 
null 
; 
} 
var 
first 
= 
query 
. 

Properties (
(( )
)) *
.* +
First+ 0
(0 1
)1 2
;2 3
var 
phraseQuery 
= 
new !
PhraseQuery" -
(- .
). /
;/ 0
JToken 
value 
; 
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
value 
= 
first !
.! "
Value" '
;' (
break 
; 
case 

JTokenType 
.  
Object  &
:& '
var 
obj 
= 
( 
JObject &
)& '
first' ,
., -
Value- 2
;2 3
if 
( 
! 
obj 
. 
TryGetValue (
(( )
$str) 0
,0 1
out2 5
value6 ;
); <
)< =
{   
throw!! 
new!! !
ArgumentException!!" 3
(!!3 4
$str!!4 Y
)!!Y Z
;!!Z [
}"" 
if&& 
(&& 
obj&& 
.&& 
TryGetValue&& '
(&&' (
$str&&( .
,&&. /
out&&0 3
var&&4 7
slop&&8 <
)&&< =
)&&= >
{'' 
phraseQuery(( #
.((# $
Slop(($ (
=(() *
slop((+ /
.((/ 0
Value((0 5
<((5 6
int((6 9
>((9 :
(((: ;
)((; <
;((< =
})) 
break++ 
;++ 
default,, 
:,, 
throw,, 
new,, "
ArgumentException,,# 4
(,,4 5
$str,,5 M
),,M N
;,,N O
}-- 
foreach// 
(// 
var// 
term// 
in//  
LuceneQueryService//! 3
.//3 4
Tokenize//4 <
(//< =
first//= B
.//B C
Name//C G
,//G H
value//I N
.//N O
Value//O T
<//T U
string//U [
>//[ \
(//\ ]
)//] ^
,//^ _
context//` g
.//g h
DefaultAnalyzer//h w
)//w x
)//x y
{00 
phraseQuery11 
.11 
Add11 
(11  
new11  #
Term11$ (
(11( )
first11) .
.11. /
Name11/ 3
,113 4
term115 9
)119 :
)11: ;
;11; <
}22 
return44 
phraseQuery44 
;44 
}55 	
}66 
}77 Ë/
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\MatchQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public		 

class		 
MatchQueryProvider		 #
:		$ % 
ILuceneQueryProvider		& :
{

 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str 
)  
{ 
return 
null 
; 
} 
var 
first 
= 
query 
. 

Properties (
(( )
)) *
.* +
First+ 0
(0 1
)1 2
;2 3
var 
	boolQuery 
= 
new 
BooleanQuery  ,
(, -
)- .
;. /
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
foreach 
( 
var  
term! %
in& (
LuceneQueryService) ;
.; <
Tokenize< D
(D E
firstE J
.J K
NameK O
,O P
firstQ V
.V W
ValueW \
.\ ]
ToString] e
(e f
)f g
,g h
contexti p
.p q
DefaultAnalyzer	q Ä
)
Ä Å
)
Å Ç
{ 
	boolQuery !
.! "
Add" %
(% &
new& )
	TermQuery* 3
(3 4
new4 7
Term8 <
(< =
first= B
.B C
NameC G
,G H
termI M
)M N
)N O
,O P
OccurQ V
.V W
SHOULDW ]
)] ^
;^ _
} 
return 
	boolQuery $
;$ %
case 

JTokenType 
.  
Object  &
:& '
var 
obj 
= 
( 
JObject &
)& '
first' ,
., -
Value- 2
;2 3
var   
value   
=   
obj    #
.  # $
Property  $ ,
(  , -
$str  - 4
)  4 5
?  5 6
.  6 7
Value  7 <
.  < =
Value  = B
<  B C
string  C I
>  I J
(  J K
)  K L
;  L M
if"" 
("" 
obj"" 
."" 
TryGetValue"" '
(""' (
$str""( /
,""/ 0
out""1 4
var""5 8
boost""9 >
)""> ?
)""? @
{## 
	boolQuery$$ !
.$$! "
Boost$$" '
=$$( )
boost$$* /
.$$/ 0
Value$$0 5
<$$5 6
float$$6 ;
>$$; <
($$< =
)$$= >
;$$> ?
}%% 
var'' 
occur'' 
='' 
Occur''  %
.''% &
SHOULD''& ,
;'', -
if(( 
((( 
obj(( 
.(( 
TryGetValue(( '
(((' (
$str((( 2
,((2 3
out((4 7
var((8 ;
op((< >
)((> ?
)((? @
{)) 
occur** 
=** 
op**  "
.**" #
ToString**# +
(**+ ,
)**, -
==**. 0
$str**1 6
?**7 8
Occur**9 >
.**> ?
MUST**? C
:**D E
Occur**F K
.**K L
SHOULD**L R
;**R S
}++ 
var-- 
terms-- 
=-- 
LuceneQueryService--  2
.--2 3
Tokenize--3 ;
(--; <
first--< A
.--A B
Name--B F
,--F G
value--H M
,--M N
context--O V
.--V W
DefaultAnalyzer--W f
)--f g
;--g h
if// 
(// 
!// 
terms// 
.// 
Any// "
(//" #
)//# $
)//$ %
{00 
if11 
(11 
obj11 
.11  
TryGetValue11  +
(11+ ,
$str11, >
,11> ?
out11@ C
var11D G
zeroTermsQuery11H V
)11V W
)11W X
{22 
if33 
(33  
zeroTermsQuery33  .
.33. /
ToString33/ 7
(337 8
)338 9
==33: <
$str33= B
)33B C
{44 
return55  &
new55' *
MatchAllDocsQuery55+ <
(55< =
)55= >
;55> ?
}66 
}77 
}88 
foreach:: 
(:: 
var::  
term::! %
in::& (
terms::) .
)::. /
{;; 
	boolQuery<< !
.<<! "
Add<<" %
(<<% &
new<<& )
	TermQuery<<* 3
(<<3 4
new<<4 7
Term<<8 <
(<<< =
first<<= B
.<<B C
Name<<C G
,<<G H
term<<I M
)<<M N
)<<N O
,<<O P
occur<<Q V
)<<V W
;<<W X
}== 
return?? 
	boolQuery?? $
;??$ %
default@@ 
:@@ 
throw@@ 
new@@ "
ArgumentException@@# 4
(@@4 5
$str@@5 D
)@@D E
;@@E F
}AA 
}BB 	
}CC 
}DD £"
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\PrefixQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public		 

class		 
PrefixQueryProvider		 $
:		% & 
ILuceneQueryProvider		' ;
{

 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str  
)  !
{ 
return 
null 
; 
} 
var 
first 
= 
query 
. 

Properties (
(( )
)) *
.* +
First+ 0
(0 1
)1 2
;2 3
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
return 
new 
PrefixQuery *
(* +
new+ .
Term/ 3
(3 4
first4 9
.9 :
Name: >
,> ?
first@ E
.E F
ValueF K
.K L
ToStringL T
(T U
)U V
)V W
)W X
;X Y
case 

JTokenType 
.  
Object  &
:& '
var 
obj 
= 
( 
JObject &
)& '
first' ,
., -
Value- 2
;2 3
PrefixQuery 
prefixQuery  +
=, -
null. 2
;2 3
if 
( 
obj 
. 
TryGetValue '
(' (
$str( /
,/ 0
out1 4
var5 8
value9 >
)> ?
)? @
{ 
prefixQuery   #
=  $ %
new  & )
PrefixQuery  * 5
(  5 6
new  6 9
Term  : >
(  > ?
first  ? D
.  D E
Name  E I
,  I J
value  K P
.  P Q
Value  Q V
<  V W
string  W ]
>  ] ^
(  ^ _
)  _ `
)  ` a
)  a b
;  b c
}!! 
else"" 
if"" 
("" 
obj""  
.""  !
TryGetValue""! ,
("", -
$str""- 5
,""5 6
out""7 :
var""; >
prefix""? E
)""E F
)""F G
{## 
prefixQuery$$ #
=$$$ %
new$$& )
PrefixQuery$$* 5
($$5 6
new$$6 9
Term$$: >
($$> ?
first$$? D
.$$D E
Name$$E I
,$$I J
prefix$$K Q
.$$Q R
Value$$R W
<$$W X
string$$X ^
>$$^ _
($$_ `
)$$` a
)$$a b
)$$b c
;$$c d
}%% 
else&& 
{'' 
throw(( 
new(( !
ArgumentException((" 3
(((3 4
$str((4 V
)((V W
;((W X
})) 
if++ 
(++ 
obj++ 
.++ 
TryGetValue++ '
(++' (
$str++( /
,++/ 0
out++1 4
var++5 8
boost++9 >
)++> ?
)++? @
{,, 
prefixQuery-- #
.--# $
Boost--$ )
=--* +
boost--, 1
.--1 2
Value--2 7
<--7 8
float--8 =
>--= >
(--> ?
)--? @
;--@ A
}.. 
return00 
prefixQuery00 &
;00& '
default11 
:11 
throw11 
new11 "
ArgumentException11# 4
(114 5
$str115 K
)11K L
;11L M
}22 
}33 	
}44 
}55 ù
ïC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\QueryStringQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public 

class $
QueryStringQueryProvider )
:* + 
ILuceneQueryProvider, @
{ 
public		 
Query		 
CreateQuery		  
(		  !
ILuceneQueryService		! 4
builder		5 <
,		< =
LuceneQueryContext		> P
context		Q X
,		X Y
string		Z `
type		a e
,		e f
JObject		g n
query		o t
)		t u
{

 	
if 
( 
type 
!= 
$str &
)& '
{ 
return 
null 
; 
} 
var 
queryString 
= 
query #
[# $
$str$ +
]+ ,
?, -
.- .
Value. 3
<3 4
string4 :
>: ;
(; <
)< =
;= >
var 
defaultField 
= 
query $
[$ %
$str% 4
]4 5
?5 6
.6 7
Value7 <
<< =
string= C
>C D
(D E
)E F
??G I
$strJ L
;L M
var 
queryParser 
= 
new !
QueryParser" -
(- .
context. 5
.5 6
DefaultVersion6 D
,D E
defaultFieldF R
,R S
contextT [
.[ \
DefaultAnalyzer\ k
)k l
;l m
return 
queryParser 
. 
Parse $
($ %
queryString% 0
)0 1
;1 2
} 	
} 
} âA
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\RangeQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public 

class 
RangeQueryProvider #
:$ % 
ILuceneQueryProvider& :
{		 
public

 
Query

 
CreateQuery

  
(

  !
ILuceneQueryService

! 4
builder

5 <
,

< =
LuceneQueryContext

> P
context

Q X
,

X Y
string

Z `
type

a e
,

e f
JObject

g n
query

o t
)

t u
{ 	
if 
( 
type 
!= 
$str 
)  
{ 
return 
null 
; 
} 
var 
range 
= 
query 
. 

Properties (
(( )
)) *
.* +
First+ 0
(0 1
)1 2
;2 3
Query 

rangeQuery 
; 
switch 
( 
range 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
Object  &
:& '
var 
field 
= 
range  %
.% &
Name& *
;* +
JToken 
gt 
= 
null  $
;$ %
JToken 
lt 
= 
null  $
;$ %
var 
	tokenType !
=" #

JTokenType$ .
.. /
None/ 3
;3 4
float 
? 
boost  
=! "
null# '
;' (
bool 
includeLower %
=& '
false( -
,- .
includeUpper/ ;
=< =
false> C
;C D
foreach   
(   
var    
element  ! (
in  ) +
(  , -
(  - .
JObject  . 5
)  5 6
range  6 ;
.  ; <
Value  < A
)  A B
.  B C

Properties  C M
(  M N
)  N O
)  O P
{!! 
switch"" 
(""  
element""  '
.""' (
Name""( ,
."", -
ToLowerInvariant""- =
(""= >
)""> ?
)""? @
{## 
case$$  
$str$$! %
:$$% &
gt%%  "
=%%# $
element%%% ,
.%%, -
Value%%- 2
;%%2 3
	tokenType&&  )
=&&* +
gt&&, .
.&&. /
Type&&/ 3
;&&3 4
break''  %
;''% &
case((  
$str((! &
:((& '
gt))  "
=))# $
element))% ,
.)), -
Value))- 2
;))2 3
	tokenType**  )
=*** +
gt**, .
.**. /
Type**/ 3
;**3 4
includeLower++  ,
=++- .
true++/ 3
;++3 4
break,,  %
;,,% &
case--  
$str--! %
:--% &
lt..  "
=..# $
element..% ,
..., -
Value..- 2
;..2 3
	tokenType//  )
=//* +
lt//, .
.//. /
Type/// 3
;//3 4
break00  %
;00% &
case11  
$str11! &
:11& '
lt22  "
=22# $
element22% ,
.22, -
Value22- 2
;222 3
	tokenType33  )
=33* +
lt33, .
.33. /
Type33/ 3
;333 4
includeUpper44  ,
=44- .
true44/ 3
;443 4
break55  %
;55% &
case66  
$str66! (
:66( )
boost77  %
=77& '
element77( /
.77/ 0
Value770 5
.775 6
Value776 ;
<77; <
float77< A
>77A B
(77B C
)77C D
;77D E
break88  %
;88% &
}99 
}:: 
if<< 
(<< 
gt<< 
!=<< 
null<< "
&&<<# %
lt<<& (
!=<<) +
null<<, 0
&&<<1 3
gt<<4 6
.<<6 7
Type<<7 ;
!=<<< >
lt<<? A
.<<A B
Type<<B F
)<<F G
{== 
throw>> 
new>> !
ArgumentException>>" 3
(>>3 4
$str>>4 c
)>>c d
;>>d e
}?? 
switchAA 
(AA 
	tokenTypeAA %
)AA% &
{BB 
caseCC 

JTokenTypeCC '
.CC' (
IntegerCC( /
:CC/ 0
varDD 
minIntDD  &
=DD' (
gtDD) +
?DD+ ,
.DD, -
ValueDD- 2
<DD2 3
longDD3 7
>DD7 8
(DD8 9
)DD9 :
;DD: ;
varEE 
maxIntEE  &
=EE' (
ltEE) +
?EE+ ,
.EE, -
ValueEE- 2
<EE2 3
longEE3 7
>EE7 8
(EE8 9
)EE9 :
;EE: ;

rangeQueryFF &
=FF' (
NumericRangeQueryFF) :
.FF: ;
NewInt64RangeFF; H
(FFH I
fieldFFI N
,FFN O
minIntFFP V
,FFV W
maxIntFFX ^
,FF^ _
includeLowerFF` l
,FFl m
includeUpperFFn z
)FFz {
;FF{ |
breakGG !
;GG! "
caseHH 

JTokenTypeHH '
.HH' (
FloatHH( -
:HH- .
varII 
minFloatII  (
=II) *
gtII+ -
?II- .
.II. /
ValueII/ 4
<II4 5
doubleII5 ;
>II; <
(II< =
)II= >
;II> ?
varJJ 
maxFloatJJ  (
=JJ) *
ltJJ+ -
?JJ- .
.JJ. /
ValueJJ/ 4
<JJ4 5
doubleJJ5 ;
>JJ; <
(JJ< =
)JJ= >
;JJ> ?

rangeQueryKK &
=KK' (
NumericRangeQueryKK) :
.KK: ;
NewDoubleRangeKK; I
(KKI J
fieldKKJ O
,KKO P
minFloatKKQ Y
,KKY Z
maxFloatKK[ c
,KKc d
includeLowerKKe q
,KKq r
includeUpperKKs 
)	KK Ä
;
KKÄ Å
breakLL !
;LL! "
caseMM 

JTokenTypeMM '
.MM' (
StringMM( .
:MM. /
varNN 
	minStringNN  )
=NN* +
gtNN, .
?NN. /
.NN/ 0
ValueNN0 5
<NN5 6
stringNN6 <
>NN< =
(NN= >
)NN> ?
;NN? @
varOO 
	maxStringOO  )
=OO* +
ltOO, .
?OO. /
.OO/ 0
ValueOO0 5
<OO5 6
stringOO6 <
>OO< =
(OO= >
)OO> ?
;OO? @

rangeQueryPP &
=PP' (
TermRangeQueryPP) 7
.PP7 8
NewStringRangePP8 F
(PPF G
fieldPPG L
,PPL M
	minStringPPN W
,PPW X
	maxStringPPY b
,PPb c
includeLowerPPd p
,PPp q
includeUpperPPr ~
)PP~ 
;	PP Ä
breakQQ !
;QQ! "
defaultRR 
:RR  
throwRR! &
newRR' *
ArgumentExceptionRR+ <
(RR< =
$"RR= ?
$strRR? ]
{RR] ^
typeRR^ b
}RRb c
"RRc d
)RRd e
;RRe f
}SS 
ifUU 
(UU 
boostUU 
!=UU  
nullUU! %
)UU% &
{VV 

rangeQueryWW "
.WW" #
BoostWW# (
=WW) *
boostWW+ 0
.WW0 1
ValueWW1 6
;WW6 7
}XX 
returnZZ 

rangeQueryZZ %
;ZZ% &
default[[ 
:[[ 
throw[[ 
new[[ "
ArgumentException[[# 4
([[4 5
$str[[5 J
)[[J K
;[[K L
}\\ 
}]] 	
}^^ 
}__ ú
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\RegexpQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public		 

class		 
RegexpQueryProvider		 $
:		% & 
ILuceneQueryProvider		' ;
{

 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str  
)  !
{ 
return 
null 
; 
} 
var 
first 
= 
query 
. 

Properties (
(( )
)) *
.* +
First+ 0
(0 1
)1 2
;2 3
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
return 
new 
RegexpQuery *
(* +
new+ .
Term/ 3
(3 4
first4 9
.9 :
Name: >
,> ?
first@ E
.E F
ValueF K
.K L
ToStringL T
(T U
)U V
)V W
)W X
;X Y
case 

JTokenType 
.  
Object  &
:& '
var 
obj 
= 
( 
JObject &
)& '
first' ,
., -
Value- 2
;2 3
if 
( 
! 
obj 
. 
TryGetValue (
(( )
$str) 0
,0 1
out2 5
var6 9
value: ?
)? @
)@ A
{ 
throw 
new !
ArgumentException" 3
(3 4
$str4 S
)S T
;T U
} 
var"" 
regexpQuery"" #
=""$ %
new""& )
RegexpQuery""* 5
(""5 6
new""6 9
Term"": >
(""> ?
first""? D
.""D E
Name""E I
,""I J
value""K P
.""P Q
Value""Q V
<""V W
string""W ]
>""] ^
(""^ _
)""_ `
)""` a
)""a b
;""b c
if$$ 
($$ 
obj$$ 
.$$ 
TryGetValue$$ '
($$' (
$str$$( /
,$$/ 0
out$$1 4
var$$5 8
boost$$9 >
)$$> ?
)$$? @
{%% 
regexpQuery&& #
.&&# $
Boost&&$ )
=&&* +
boost&&, 1
.&&1 2
Value&&2 7
<&&7 8
float&&8 =
>&&= >
(&&> ?
)&&? @
;&&@ A
}'' 
return)) 
regexpQuery)) &
;))& '
default** 
:** 
throw** 
new** "
ArgumentException**# 4
(**4 5
$str**5 K
)**K L
;**L M
}++ 
},, 	
}-- 
}.. Ã#
õC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\SimpleQueryStringQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public		 

class		 *
SimpleQueryStringQueryProvider		 /
:		0 1 
ILuceneQueryProvider		2 F
{

 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str -
)- .
{ 
return 
null 
; 
} 
var 
queryString 
= 
query #
[# $
$str$ +
]+ ,
?, -
.- .
Value. 3
<3 4
string4 :
>: ;
(; <
)< =
;= >
var 
fields 
= 
query 
[ 
$str '
]' (
?( )
.) *
Values* 0
<0 1
string1 7
>7 8
(8 9
)9 :
??; =
Array> C
.C D
EmptyD I
<I J
stringJ P
>P Q
(Q R
)R S
;S T
var 
defaultOperator 
=  !
query" '
[' (
$str( :
]: ;
?; <
.< =
Value= B
<B C
stringC I
>I J
(J K
)K L
.L M
ToLowerInvariantM ]
(] ^
)^ _
??` b
$strc g
;g h
var 
weight 
= 
$num 
; 
var 
weights 
= 
fields  
.  !
ToDictionary! -
(- .
field. 3
=>4 6
field7 <
,< =
field> C
=>D F
weightG M
)M N
;N O
foreach 
( 
var 
field 
in !
fields" (
)( )
{ 
var 
fieldWeightArray $
=% &
field' ,
., -
Split- 2
(2 3
$char3 6
,6 7
$num8 9
)9 :
;: ;
if 
( 
fieldWeightArray $
.$ %
Length% +
>, -
$num. /
&&0 2
Single3 9
.9 :
TryParse: B
(B C
fieldWeightArrayC S
[S T
$numT U
]U V
,V W
outX [
weight\ b
)b c
)c d
{ 
weights 
. 
Remove "
(" #
field# (
)( )
;) *
weights 
. 
Add 
(  
fieldWeightArray  0
[0 1
$num1 2
]2 3
,3 4
weight5 ;
); <
;< =
}   
}!! 
var## 
queryParser## 
=## 
new## !
SimpleQueryParser##" 3
(##3 4
context##4 ;
.##; <
DefaultAnalyzer##< K
,##K L
weights##M T
)##T U
;##U V
switch$$ 
($$ 
defaultOperator$$ #
)$$# $
{%% 
case&& 
$str&& 
:&& 
queryParser'' 
.''  
DefaultOperator''  /
=''0 1
Occur''2 7
.''7 8
MUST''8 <
;''< =
break(( 
;(( 
case)) 
$str)) 
:)) 
queryParser** 
.**  
DefaultOperator**  /
=**0 1
Occur**2 7
.**7 8
SHOULD**8 >
;**> ?
break++ 
;++ 
},, 
return-- 
queryParser-- 
.-- 
Parse-- $
(--$ %
queryString--% 0
)--0 1
;--1 2
}.. 	
}// 
}00 Œ
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\TermQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public		 

class		 
TermQueryProvider		 "
:		# $ 
ILuceneQueryProvider		% 9
{

 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str 
) 
{ 
return 
null 
; 
} 
var 
first 
= 
query 
. 

Properties (
(( )
)) *
.* +
First+ 0
(0 1
)1 2
;2 3
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
return 
new 
	TermQuery (
(( )
new) ,
Term- 1
(1 2
first2 7
.7 8
Name8 <
,< =
first> C
.C D
ValueD I
.I J
ToStringJ R
(R S
)S T
)T U
)U V
;V W
case 

JTokenType 
.  
Object  &
:& '
var 
obj 
= 
( 
JObject &
)& '
first' ,
., -
Value- 2
;2 3
var 
value 
= 
obj  #
.# $
Property$ ,
(, -
$str- 4
)4 5
.5 6
Value6 ;
.; <
Value< A
<A B
stringB H
>H I
(I J
)J K
;K L
var 
	termQuery !
=" #
new$ '
	TermQuery( 1
(1 2
new2 5
Term6 :
(: ;
first; @
.@ A
NameA E
,E F
valueG L
)L M
)M N
;N O
if 
( 
obj 
. 
TryGetValue '
(' (
$str( /
,/ 0
out1 4
var5 8
boost9 >
)> ?
)? @
{   
	termQuery!! !
.!!! "
Boost!!" '
=!!( )
boost!!* /
.!!/ 0
Value!!0 5
<!!5 6
float!!6 ;
>!!; <
(!!< =
)!!= >
;!!> ?
}"" 
return$$ 
	termQuery$$ $
;$$$ %
default%% 
:%% 
throw%% 
new%% "
ArgumentException%%# 4
(%%4 5
$str%%5 I
)%%I J
;%%J K
}&& 
}'' 	
}(( 
})) Ç
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\TermsQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public		 

class		 
TermsQueryProvider		 #
:		$ % 
ILuceneQueryProvider		& :
{

 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str 
)  
{ 
return 
null 
; 
} 
var 
first 
= 
query 
. 

Properties (
(( )
)) *
.* +
First+ 0
(0 1
)1 2
;2 3
var 
field 
= 
first 
. 
Name "
;" #
var 
	boolQuery 
= 
new 
BooleanQuery  ,
(, -
)- .
;. /
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
Array  %
:% &
foreach 
( 
var  
item! %
in& (
() *
(* +
JArray+ 1
)1 2
first2 7
.7 8
Value8 =
)= >
)> ?
{ 
if 
( 
item  
.  !
Type! %
!=& (

JTokenType) 3
.3 4
String4 :
): ;
{ 
throw !
new" %
ArgumentException& 7
(7 8
$"8 :
$str: U
"U V
)V W
;W X
}   
	boolQuery"" !
.""! "
Add""" %
(""% &
new""& )
	TermQuery""* 3
(""3 4
new""4 7
Term""8 <
(""< =
field""= B
,""B C
item""D H
.""H I
Value""I N
<""N O
string""O U
>""U V
(""V W
)""W X
)""X Y
)""Y Z
,""Z [
Occur""\ a
.""a b
SHOULD""b h
)""h i
;""i j
}## 
break%% 
;%% 
case&& 

JTokenType&& 
.&&  
Object&&  &
:&&& '
throw'' 
new'' 
ArgumentException'' /
(''/ 0
$str''0 Y
)''Y Z
;''Z [
default(( 
:(( 
throw(( 
new(( "
ArgumentException((# 4
(((4 5
$str((5 J
)((J K
;((K L
})) 
return++ 
	boolQuery++ 
;++ 
},, 	
}-- 
}.. ™
íC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\QueryProviders\WildcardQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
.# $
QueryProviders$ 2
{ 
public		 

class		 !
WildcardQueryProvider		 &
:		' ( 
ILuceneQueryProvider		) =
{

 
public 
Query 
CreateQuery  
(  !
ILuceneQueryService! 4
builder5 <
,< =
LuceneQueryContext> P
contextQ X
,X Y
stringZ `
typea e
,e f
JObjectg n
queryo t
)t u
{ 	
if 
( 
type 
!= 
$str "
)" #
{ 
return 
null 
; 
} 
var 
first 
= 
query 
. 

Properties (
(( )
)) *
.* +
First+ 0
(0 1
)1 2
;2 3
switch 
( 
first 
. 
Value 
.  
Type  $
)$ %
{ 
case 

JTokenType 
.  
String  &
:& '
return 
new 
WildcardQuery ,
(, -
new- 0
Term1 5
(5 6
first6 ;
.; <
Name< @
,@ A
firstB G
.G H
ValueH M
.M N
ToStringN V
(V W
)W X
)X Y
)Y Z
;Z [
case 

JTokenType 
.  
Object  &
:& '
var 
obj 
= 
( 
JObject &
)& '
first' ,
., -
Value- 2
;2 3
if 
( 
! 
obj 
. 
TryGetValue (
(( )
$str) 0
,0 1
out2 5
var6 9
value: ?
)? @
)@ A
{ 
throw 
new !
ArgumentException" 3
(3 4
$str4 U
)U V
;V W
} 
var   
wildCardQuery   %
=  & '
new  ( +
WildcardQuery  , 9
(  9 :
new  : =
Term  > B
(  B C
first  C H
.  H I
Name  I M
,  M N
value  O T
.  T U
Value  U Z
<  Z [
string  [ a
>  a b
(  b c
)  c d
)  d e
)  e f
;  f g
if"" 
("" 
obj"" 
."" 
TryGetValue"" '
(""' (
$str""( /
,""/ 0
out""1 4
var""5 8
boost""9 >
)""> ?
)""? @
{## 
wildCardQuery$$ %
.$$% &
Boost$$& +
=$$, -
boost$$. 3
.$$3 4
Value$$4 9
<$$9 :
float$$: ?
>$$? @
($$@ A
)$$A B
;$$B C
}%% 
return'' 
wildCardQuery'' (
;''( )
default(( 
:(( 
throw(( 
new(( "
ArgumentException((# 4
(((4 5
$str((5 M
)((M N
;((N O
})) 
}** 	
}++ 
},, Ω1
âC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Lucene.Core\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Lucene #
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddLuceneQueries) 9
(9 :
this: >
IServiceCollection? Q
servicesR Z
)Z [
{ 	
services 
. 
	AddScoped 
< 
ILuceneQueryService 2
,2 3
LuceneQueryService4 F
>F G
(G H
)H I
;I J
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7 
BooleanQueryProvider8 L
>L M
(M N
)N O
;O P
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7
FuzzyQueryProvider8 J
>J K
(K L
)L M
;M N
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7
MatchQueryProvider8 J
>J K
(K L
)L M
;M N
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7!
MatchAllQueryProvider8 M
>M N
(N O
)O P
;P Q
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7$
MatchPhraseQueryProvider8 P
>P Q
(Q R
)R S
;S T
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7
PrefixQueryProvider8 K
>K L
(L M
)M N
;N O
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7$
QueryStringQueryProvider8 P
>P Q
(Q R
)R S
;S T
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7
RangeQueryProvider8 J
>J K
(K L
)L M
;M N
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7
RegexpQueryProvider8 K
>K L
(L M
)M N
;N O
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7*
SimpleQueryStringQueryProvider8 V
>V W
(W X
)X Y
;Y Z
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7
TermQueryProvider8 I
>I J
(J K
)K L
;L M
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7
TermsQueryProvider8 J
>J K
(K L
)L M
;M N
services 
. 
AddSingleton !
<! " 
ILuceneQueryProvider" 6
,6 7!
WildcardQueryProvider8 M
>M N
(N O
)O P
;P Q
services 
. 
AddSingleton !
<! "(
ILuceneBooleanFilterProvider" >
,> ?
FuzzyFilterProvider@ S
>S T
(T U
)U V
;V W
services 
. 
AddSingleton !
<! "(
ILuceneBooleanFilterProvider" >
,> ?(
GeoBoundingBoxFilterProvider@ \
>\ ]
(] ^
)^ _
;_ `
services   
.   
AddSingleton   !
<  ! "(
ILuceneBooleanFilterProvider  " >
,  > ?%
GeoDistanceFilterProvider  @ Y
>  Y Z
(  Z [
)  [ \
;  \ ]
services!! 
.!! 
AddSingleton!! !
<!!! "(
ILuceneBooleanFilterProvider!!" >
,!!> ?
MatchFilterProvider!!@ S
>!!S T
(!!T U
)!!U V
;!!V W
services"" 
."" 
AddSingleton"" !
<""! "(
ILuceneBooleanFilterProvider""" >
,""> ?%
MatchPhraseFilterProvider""@ Y
>""Y Z
(""Z [
)""[ \
;""\ ]
services## 
.## 
AddSingleton## !
<##! "(
ILuceneBooleanFilterProvider##" >
,##> ?"
MatchAllFilterProvider##@ V
>##V W
(##W X
)##X Y
;##Y Z
services$$ 
.$$ 
AddSingleton$$ !
<$$! "(
ILuceneBooleanFilterProvider$$" >
,$$> ? 
PrefixFilterProvider$$@ T
>$$T U
($$U V
)$$V W
;$$W X
services%% 
.%% 
AddSingleton%% !
<%%! "(
ILuceneBooleanFilterProvider%%" >
,%%> ?
RangeFilterProvider%%@ S
>%%S T
(%%T U
)%%U V
;%%V W
services&& 
.&& 
AddSingleton&& !
<&&! "(
ILuceneBooleanFilterProvider&&" >
,&&> ?
TermFilterProvider&&@ R
>&&R S
(&&S T
)&&T U
;&&U V
services'' 
.'' 
AddSingleton'' !
<''! "(
ILuceneBooleanFilterProvider''" >
,''> ?
TermsFilterProvider''@ S
>''S T
(''T U
)''U V
;''V W
services(( 
.(( 
AddSingleton(( !
<((! "(
ILuceneBooleanFilterProvider((" >
,((> ?"
WildcardFilterProvider((@ V
>((V W
(((W X
)((X Y
;((Y Z
return** 
services** 
;** 
}++ 	
},, 
}-- 