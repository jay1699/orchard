ÙQ
ìC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shells.Azure\Configuration\BlobShellConfigurationSources.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Azure "
." #
Configuration# 0
{ 
public 

class )
BlobShellConfigurationSources .
:/ 0&
IShellConfigurationSources1 K
{ 
private 
readonly 
IShellsFileStore )
_shellsFileStore* :
;: ;
private 
readonly #
BlobShellStorageOptions 0
_blobOptions1 =
;= >
private 
readonly 
string 

_container  *
;* +
private 
readonly 
string 
_fileStoreContainer  3
;3 4
public )
BlobShellConfigurationSources ,
(, -
IShellsFileStore 
shellsFileStore ,
,, -#
BlobShellStorageOptions #
blobOptions$ /
,/ 0
IOptions 
< 
ShellOptions !
>! "
shellOptions# /
)/ 0
{ 	
_shellsFileStore 
= 
shellsFileStore .
;. /
_blobOptions 
= 
blobOptions &
;& '

_container 
= 
shellOptions %
.% &
Value& +
.+ ,
ShellsContainerName, ?
;? @
_fileStoreContainer"" 
=""  !
Path""" &
.""& '
Combine""' .
("". /
shellOptions""/ ;
.""; <
Value""< A
.""A B%
ShellsApplicationDataPath""B [
,""[ \
shellOptions""] i
.""i j
Value""j o
.""o p 
ShellsContainerName	""p É
)
""É Ñ
;
""Ñ Ö
}## 	
public%% 
async%% 
Task%% 
AddSourcesAsync%% )
(%%) *
string%%* 0
tenant%%1 7
,%%7 8!
IConfigurationBuilder%%9 N
builder%%O V
)%%V W
{&& 	
var'' 
appSettings'' 
=''  
IFileStoreExtensions'' 2
.''2 3
Combine''3 :
('': ;
null''; ?
,''? @

_container''A K
,''K L
tenant''M S
,''S T
$str''U g
)''g h
;''h i
var(( 
fileInfo(( 
=(( 
await((  
_shellsFileStore((! 1
.((1 2
GetFileInfoAsync((2 B
(((B C
appSettings((C N
)((N O
;((O P
if** 
(** 
fileInfo** 
==** 
null**  
&&**! #
_blobOptions**$ 0
.**0 1
MigrateFromFiles**1 A
)**A B
{++ 
if,, 
(,, 
await,, #
TryMigrateFromFileAsync,, 1
(,,1 2
tenant,,2 8
,,,8 9
appSettings,,: E
),,E F
),,F G
{-- 
fileInfo.. 
=.. 
await.. $
_shellsFileStore..% 5
...5 6
GetFileInfoAsync..6 F
(..F G
appSettings..G R
)..R S
;..S T
}// 
}00 
if11 
(11 
fileInfo11 
!=11 
null11  
)11  !
{22 
var33 
stream33 
=33 
await33 "
_shellsFileStore33# 3
.333 4
GetFileStreamAsync334 F
(33F G
appSettings33G R
)33R S
;33S T
builder44 
.44 
AddJsonStream44 %
(44% &
stream44& ,
)44, -
;44- .
}55 
}66 	
public88 
async88 
Task88 
	SaveAsync88 #
(88# $
string88$ *
tenant88+ 1
,881 2
IDictionary883 >
<88> ?
string88? E
,88E F
string88G M
>88M N
data88O S
)88S T
{99 	
var:: 
appsettings:: 
=::  
IFileStoreExtensions:: 2
.::2 3
Combine::3 :
(::: ;
null::; ?
,::? @

_container::A K
,::K L
tenant::M S
,::S T
$str::U g
)::g h
;::h i
JObject<< 
config<< 
;<< 
var== 
fileInfo== 
=== 
await==  
_shellsFileStore==! 1
.==1 2
GetFileInfoAsync==2 B
(==B C
appsettings==C N
)==N O
;==O P
if?? 
(?? 
fileInfo?? 
!=?? 
null??  
)??  !
{@@ 
usingAA 
(AA 
varAA 
streamAA !
=AA" #
awaitAA$ )
_shellsFileStoreAA* :
.AA: ;
GetFileStreamAsyncAA; M
(AAM N
appsettingsAAN Y
)AAY Z
)AAZ [
{BB 
usingCC 
(CC 
varCC 
streamReaderCC +
=CC, -
newCC. 1
StreamReaderCC2 >
(CC> ?
streamCC? E
)CCE F
)CCF G
{DD 
usingEE 
(EE 
varEE "
readerEE# )
=EE* +
newEE, /
JsonTextReaderEE0 >
(EE> ?
streamReaderEE? K
)EEK L
)EEL M
{FF 
configGG "
=GG# $
awaitGG% *
JObjectGG+ 2
.GG2 3
	LoadAsyncGG3 <
(GG< =
readerGG= C
)GGC D
;GGD E
}HH 
}II 
}JJ 
}KK 
elseLL 
{MM 
configNN 
=NN 
newNN 
JObjectNN $
(NN$ %
)NN% &
;NN& '
}OO 
foreachQQ 
(QQ 
varQQ 
keyQQ 
inQQ 
dataQQ  $
.QQ$ %
KeysQQ% )
)QQ) *
{RR 
ifSS 
(SS 
dataSS 
[SS 
keySS 
]SS 
!=SS  
nullSS! %
)SS% &
{TT 
configUU 
[UU 
keyUU 
]UU 
=UU  !
dataUU" &
[UU& '
keyUU' *
]UU* +
;UU+ ,
}VV 
elseWW 
{XX 
configYY 
.YY 
RemoveYY !
(YY! "
keyYY" %
)YY% &
;YY& '
}ZZ 
}[[ 
using]] 
(]] 
var]] 
memoryStream]] #
=]]$ %
new]]& )
MemoryStream]]* 6
(]]6 7
)]]7 8
)]]8 9
{^^ 
using__ 
(__ 
var__ 
streamWriter__ '
=__( )
new__* -
StreamWriter__. :
(__: ;
memoryStream__; G
)__G H
)__H I
{`` 
usingaa 
(aa 
varaa 

jsonWriteraa )
=aa* +
newaa, /
JsonTextWriteraa0 >
(aa> ?
streamWriteraa? K
)aaK L
{aaM N

FormattingaaO Y
=aaZ [

Formattingaa\ f
.aaf g
Indentedaag o
}aap q
)aaq r
{bb 
awaitcc 
configcc $
.cc$ %
WriteToAsynccc% 1
(cc1 2

jsonWritercc2 <
)cc< =
;cc= >
awaitdd 

jsonWriterdd (
.dd( )

FlushAsyncdd) 3
(dd3 4
)dd4 5
;dd5 6
memoryStreamee $
.ee$ %
Positionee% -
=ee. /
$numee0 1
;ee1 2
awaitff 
_shellsFileStoreff .
.ff. /%
CreateFileFromStreamAsyncff/ H
(ffH I
appsettingsffI T
,ffT U
memoryStreamffV b
)ffb c
;ffc d
}gg 
}hh 
}ii 
}jj 	
publicll 
asyncll 
Taskll 
RemoveAsyncll %
(ll% &
stringll& ,
tenantll- 3
)ll3 4
{mm 	
varnn 
appsettingsnn 
=nn  
IFileStoreExtensionsnn 2
.nn2 3
Combinenn3 :
(nn: ;
nullnn; ?
,nn? @

_containernnA K
,nnK L
tenantnnM S
,nnS T
$strnnU g
)nng h
;nnh i
varpp 
fileInfopp 
=pp 
awaitpp  
_shellsFileStorepp! 1
.pp1 2
GetFileInfoAsyncpp2 B
(ppB C
appsettingsppC N
)ppN O
;ppO P
ifqq 
(qq 
fileInfoqq 
!=qq 
nullqq  
)qq  !
{rr 
awaitss 
_shellsFileStoress &
.ss& '
RemoveFileAsyncss' 6
(ss6 7
appsettingsss7 B
)ssB C
;ssC D
}tt 
}uu 	
privateww 
asyncww 
Taskww 
<ww 
boolww 
>ww  #
TryMigrateFromFileAsyncww! 8
(ww8 9
stringww9 ?
tenantww@ F
,wwF G
stringwwH N
destFilewwO W
)wwW X
{xx 	
varyy 

tenantFileyy 
=yy 
Pathyy !
.yy! "
Combineyy" )
(yy) *
_fileStoreContaineryy* =
,yy= >
tenantyy? E
,yyE F
$stryyG Y
)yyY Z
;yyZ [
ifzz 
(zz 
!zz 
Filezz 
.zz 
Existszz 
(zz 

tenantFilezz '
)zz' (
)zz( )
{{{ 
return|| 
false|| 
;|| 
}}} 
using 
( 
var 
file 
= 
File "
." #
OpenRead# +
(+ ,

tenantFile, 6
)6 7
)7 8
{
ÄÄ 
await
ÅÅ 
_shellsFileStore
ÅÅ &
.
ÅÅ& ''
CreateFileFromStreamAsync
ÅÅ' @
(
ÅÅ@ A
destFile
ÅÅA I
,
ÅÅI J
file
ÅÅK O
)
ÅÅO P
;
ÅÅP Q
}
ÇÇ 
return
ÑÑ 
true
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
}
ÜÜ 
}áá ≠4
îC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shells.Azure\Configuration\BlobShellsConfigurationSources.cs
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
Shells

 
.

 
Azure

 "
.

" #
Configuration

# 0
{ 
public 

class *
BlobShellsConfigurationSources /
:0 1'
IShellsConfigurationSources2 M
{ 
private 
readonly 
IShellsFileStore )
_shellsFileStore* :
;: ;
private 
readonly #
BlobShellStorageOptions 0
_blobOptions1 =
;= >
private 
readonly 
string 
_environment  ,
;, -
private 
readonly 
string "
_fileSystemAppSettings  6
;6 7
public *
BlobShellsConfigurationSources -
(- .
IShellsFileStore 
shellsFileStore ,
,, -
IHostEnvironment 
hostingEnvironment /
,/ 0#
BlobShellStorageOptions #
blobOptions$ /
,/ 0
IOptions 
< 
ShellOptions !
>! "
shellOptions# /
) 
{ 	
_shellsFileStore 
= 
shellsFileStore .
;. /
_environment 
= 
hostingEnvironment -
.- .
EnvironmentName. =
;= >
_blobOptions 
= 
blobOptions &
;& '"
_fileSystemAppSettings "
=# $
Path% )
.) *
Combine* 1
(1 2
shellOptions2 >
.> ?
Value? D
.D E%
ShellsApplicationDataPathE ^
,^ _
$str` m
)m n
;n o
} 	
public!! 
async!! 
Task!! 
AddSourcesAsync!! )
(!!) *!
IConfigurationBuilder!!* ?
builder!!@ G
)!!G H
{"" 	
var## 
appSettingsFileInfo## #
=##$ %
await##& +
_shellsFileStore##, <
.##< =
GetFileInfoAsync##= M
(##M N
$str##N `
)##` a
;##a b
if%% 
(%% 
appSettingsFileInfo%% #
==%%$ &
null%%' +
&&%%, .
_blobOptions%%/ ;
.%%; <
MigrateFromFiles%%< L
)%%L M
{&& 
if'' 
('' 
await'' #
TryMigrateFromFileAsync'' 1
(''1 2
$"''2 4
{''4 5"
_fileSystemAppSettings''5 K
}''K L
$str''L Q
"''Q R
,''R S
$str''T f
)''f g
)''g h
{(( 
appSettingsFileInfo)) '
=))( )
await))* /
_shellsFileStore))0 @
.))@ A
GetFileInfoAsync))A Q
())Q R
$str))R d
)))d e
;))e f
}** 
}++ 
if-- 
(-- 
appSettingsFileInfo-- #
!=--$ &
null--' +
)--+ ,
{.. 
var// 
stream// 
=// 
await// "
_shellsFileStore//# 3
.//3 4
GetFileStreamAsync//4 F
(//F G
$str//G Y
)//Y Z
;//Z [
builder00 
.00 
AddJsonStream00 %
(00% &
stream00& ,
)00, -
;00- .
}11 
var33 *
environmentAppSettingsFileName33 .
=33/ 0
$"331 3
$str333 ?
{33? @
_environment33@ L
}33L M
$str33M R
"33R S
;33S T
var44 *
environmentAppSettingsFileInfo44 .
=44/ 0
await441 6
_shellsFileStore447 G
.44G H
GetFileInfoAsync44H X
(44X Y*
environmentAppSettingsFileName44Y w
)44w x
;44x y
if55 
(55 *
environmentAppSettingsFileInfo55 .
==55/ 1
null552 6
&&557 9
_blobOptions55: F
.55F G
MigrateFromFiles55G W
)55W X
{66 
if77 
(77 
await77 #
TryMigrateFromFileAsync77 1
(771 2
$"772 4
{774 5"
_fileSystemAppSettings775 K
}77K L
$str77L M
{77M N
_environment77N Z
}77Z [
$str77[ `
"77` a
,77a b+
environmentAppSettingsFileName	77c Å
)
77Å Ç
)
77Ç É
{88 *
environmentAppSettingsFileInfo99 2
=993 4
await995 :
_shellsFileStore99; K
.99K L
GetFileInfoAsync99L \
(99\ ]*
environmentAppSettingsFileName99] {
)99{ |
;99| }
}:: 
else;; 
{<< 
return== 
;== 
}>> 
}?? 
ifAA 
(AA *
environmentAppSettingsFileInfoAA .
!=AA/ 1
nullAA2 6
)AA6 7
{BB 
varCC 
streamCC 
=CC 
awaitCC "
_shellsFileStoreCC# 3
.CC3 4
GetFileStreamAsyncCC4 F
(CCF G*
environmentAppSettingsFileNameCCG e
)CCe f
;CCf g
builderDD 
.DD 
AddJsonStreamDD %
(DD% &
streamDD& ,
)DD, -
;DD- .
}EE 
}FF 	
privateHH 
asyncHH 
TaskHH 
<HH 
boolHH 
>HH  #
TryMigrateFromFileAsyncHH! 8
(HH8 9
stringHH9 ?
fileSystemPathHH@ N
,HHN O
stringHHP V
destPathHHW _
)HH_ `
{II 	
ifJJ 
(JJ 
!JJ 
FileJJ 
.JJ 
ExistsJJ 
(JJ 
fileSystemPathJJ +
)JJ+ ,
)JJ, -
{KK 
returnLL 
falseLL 
;LL 
}MM 
usingOO 
(OO 
varOO 
fileOO 
=OO 
FileOO "
.OO" #
OpenReadOO# +
(OO+ ,
fileSystemPathOO, :
)OO: ;
)OO; <
{PP 
awaitQQ 
_shellsFileStoreQQ &
.QQ& '%
CreateFileFromStreamAsyncQQ' @
(QQ@ A
destPathQQA I
,QQI J
fileQQK O
)QQO P
;QQP Q
}RR 
returnTT 
trueTT 
;TT 
}UU 	
}VV 
}WW ∑_
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shells.Azure\Configuration\BlobShellsSettingsSources.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Azure "
." #
Configuration# 0
{ 
public 

class %
BlobShellsSettingsSources *
:+ ,"
IShellsSettingsSources- C
{ 
private 
const 
string 
_tenantsBlobName -
=. /
$str0 >
;> ?
private 
readonly 
IShellsFileStore )
_shellsFileStore* :
;: ;
private 
readonly #
BlobShellStorageOptions 0
_blobOptions1 =
;= >
private 
readonly 
string "
_tenantsFileSystemName  6
;6 7
public %
BlobShellsSettingsSources (
(( )
IShellsFileStore) 9
shellsFileStore: I
,I J#
BlobShellStorageOptions #
blobOptions$ /
,/ 0
IOptions 
< 
ShellOptions !
>! "
shellOptions# /
)/ 0
{ 	
_shellsFileStore 
= 
shellsFileStore .
;. /
_blobOptions 
= 
blobOptions &
;& '"
_tenantsFileSystemName "
=# $
Path% )
.) *
Combine* 1
(1 2
shellOptions2 >
.> ?
Value? D
.D E%
ShellsApplicationDataPathE ^
,^ _
_tenantsBlobName` p
)p q
;q r
} 	
public   
async   
Task   
AddSourcesAsync   )
(  ) *!
IConfigurationBuilder  * ?
builder  @ G
)  G H
{!! 	
var"" 
fileInfo"" 
="" 
await""  
_shellsFileStore""! 1
.""1 2
GetFileInfoAsync""2 B
(""B C
_tenantsBlobName""C S
)""S T
;""T U
if## 
(## 
fileInfo## 
==## 
null##  
&&##! #
_blobOptions##$ 0
.##0 1
MigrateFromFiles##1 A
)##A B
{$$ 
if%% 
(%% 
await%% #
TryMigrateFromFileAsync%% 1
(%%1 2
)%%2 3
)%%3 4
{&& 
fileInfo'' 
='' 
await'' $
_shellsFileStore''% 5
.''5 6
GetFileInfoAsync''6 F
(''F G
_tenantsBlobName''G W
)''W X
;''X Y
}(( 
else)) 
{** 
return++ 
;++ 
},, 
}-- 
if// 
(// 
fileInfo// 
!=// 
null//  
)//  !
{00 
var11 
stream11 
=11 
await11 "
_shellsFileStore11# 3
.113 4
GetFileStreamAsync114 F
(11F G
_tenantsBlobName11G W
)11W X
;11X Y
builder22 
.22 
AddJsonStream22 %
(22% &
stream22& ,
)22, -
;22- .
}33 
}44 	
public66 
Task66 
AddSourcesAsync66 #
(66# $
string66$ *
tenant66+ 1
,661 2!
IConfigurationBuilder663 H
builder66I P
)66P Q
=>66R T
AddSourcesAsync66U d
(66d e
builder66e l
)66l m
;66m n
public88 
async88 
Task88 
	SaveAsync88 #
(88# $
string88$ *
tenant88+ 1
,881 2
IDictionary883 >
<88> ?
string88? E
,88E F
string88G M
>88M N
data88O S
)88S T
{99 	
JObject:: 
tenantsSettings:: #
;::# $
var<< 
fileInfo<< 
=<< 
await<<  
_shellsFileStore<<! 1
.<<1 2
GetFileInfoAsync<<2 B
(<<B C
_tenantsBlobName<<C S
)<<S T
;<<T U
if>> 
(>> 
fileInfo>> 
!=>> 
null>>  
)>>  !
{?? 
using@@ 
(@@ 
var@@ 
stream@@ !
=@@" #
await@@$ )
_shellsFileStore@@* :
.@@: ;
GetFileStreamAsync@@; M
(@@M N
_tenantsBlobName@@N ^
)@@^ _
)@@_ `
{AA 
usingBB 
(BB 
varBB 
streamReaderBB +
=BB, -
newBB. 1
StreamReaderBB2 >
(BB> ?
streamBB? E
)BBE F
)BBF G
{CC 
usingDD 
(DD 
varDD "
readerDD# )
=DD* +
newDD, /
JsonTextReaderDD0 >
(DD> ?
streamReaderDD? K
)DDK L
)DDL M
{EE 
tenantsSettingsFF +
=FF, -
awaitFF. 3
JObjectFF4 ;
.FF; <
	LoadAsyncFF< E
(FFE F
readerFFF L
)FFL M
;FFM N
}GG 
}HH 
}II 
}JJ 
elseKK 
{LL 
tenantsSettingsMM 
=MM  !
newMM" %
JObjectMM& -
(MM- .
)MM. /
;MM/ 0
}NN 
varPP 
settingsPP 
=PP 
tenantsSettingsPP *
.PP* +
GetValuePP+ 3
(PP3 4
tenantPP4 :
)PP: ;
asPP< >
JObjectPP? F
??PPG I
newPPJ M
JObjectPPN U
(PPU V
)PPV W
;PPW X
foreachRR 
(RR 
varRR 
keyRR 
inRR 
dataRR  $
.RR$ %
KeysRR% )
)RR) *
{SS 
ifTT 
(TT 
dataTT 
[TT 
keyTT 
]TT 
!=TT  
nullTT! %
)TT% &
{UU 
settingsVV 
[VV 
keyVV  
]VV  !
=VV" #
dataVV$ (
[VV( )
keyVV) ,
]VV, -
;VV- .
}WW 
elseXX 
{YY 
settingsZZ 
.ZZ 
RemoveZZ #
(ZZ# $
keyZZ$ '
)ZZ' (
;ZZ( )
}[[ 
}\\ 
tenantsSettings^^ 
[^^ 
tenant^^ "
]^^" #
=^^$ %
settings^^& .
;^^. /
using`` 
(`` 
var`` 
memoryStream`` #
=``$ %
new``& )
MemoryStream``* 6
(``6 7
)``7 8
)``8 9
{aa 
usingbb 
(bb 
varbb 
streamWriterbb '
=bb( )
newbb* -
StreamWriterbb. :
(bb: ;
memoryStreambb; G
)bbG H
)bbH I
{cc 
usingdd 
(dd 
vardd 

jsonWriterdd )
=dd* +
newdd, /
JsonTextWriterdd0 >
(dd> ?
streamWriterdd? K
)ddK L
{ddM N

FormattingddO Y
=ddZ [

Formattingdd\ f
.ddf g
Indentedddg o
}ddp q
)ddq r
{ee 
awaitff 
tenantsSettingsff -
.ff- .
WriteToAsyncff. :
(ff: ;

jsonWriterff; E
)ffE F
;ffF G
awaitgg 

jsonWritergg (
.gg( )

FlushAsyncgg) 3
(gg3 4
)gg4 5
;gg5 6
memoryStreamhh $
.hh$ %
Positionhh% -
=hh. /
$numhh0 1
;hh1 2
awaitii 
_shellsFileStoreii .
.ii. /%
CreateFileFromStreamAsyncii/ H
(iiH I
_tenantsBlobNameiiI Y
,iiY Z
memoryStreamii[ g
)iig h
;iih i
}jj 
}kk 
}ll 
}mm 	
publicoo 
asyncoo 
Taskoo 
RemoveAsyncoo %
(oo% &
stringoo& ,
tenantoo- 3
)oo3 4
{pp 	
varqq 
fileInfoqq 
=qq 
awaitqq  
_shellsFileStoreqq! 1
.qq1 2
GetFileInfoAsyncqq2 B
(qqB C
_tenantsBlobNameqqC S
)qqS T
;qqT U
ifss 
(ss 
fileInfoss 
!=ss 
nullss  
)ss  !
{tt 
JObjectuu 
tenantsSettingsuu '
;uu' (
usingvv 
(vv 
varvv 
streamvv !
=vv" #
awaitvv$ )
_shellsFileStorevv* :
.vv: ;
GetFileStreamAsyncvv; M
(vvM N
_tenantsBlobNamevvN ^
)vv^ _
)vv_ `
{ww 
usingxx 
varxx 
streamReaderxx *
=xx+ ,
newxx- 0
StreamReaderxx1 =
(xx= >
streamxx> D
)xxD E
;xxE F
usingyy 
varyy 
readeryy $
=yy% &
newyy' *
JsonTextReaderyy+ 9
(yy9 :
streamReaderyy: F
)yyF G
;yyG H
tenantsSettingszz #
=zz$ %
awaitzz& +
JObjectzz, 3
.zz3 4
	LoadAsynczz4 =
(zz= >
readerzz> D
)zzD E
;zzE F
}{{ 
tenantsSettings}} 
.}}  
Remove}}  &
(}}& '
tenant}}' -
)}}- .
;}}. /
using 
var 
memoryStream &
=' (
new) ,
MemoryStream- 9
(9 :
): ;
;; <
using
ÄÄ 
var
ÄÄ 
streamWriter
ÄÄ &
=
ÄÄ' (
new
ÄÄ) ,
StreamWriter
ÄÄ- 9
(
ÄÄ9 :
memoryStream
ÄÄ: F
)
ÄÄF G
;
ÄÄG H
using
ÅÅ 
var
ÅÅ 

jsonWriter
ÅÅ $
=
ÅÅ% &
new
ÅÅ' *
JsonTextWriter
ÅÅ+ 9
(
ÅÅ9 :
streamWriter
ÅÅ: F
)
ÅÅF G
{
ÅÅH I

Formatting
ÅÅJ T
=
ÅÅU V

Formatting
ÅÅW a
.
ÅÅa b
Indented
ÅÅb j
}
ÅÅk l
;
ÅÅl m
await
ÉÉ 
tenantsSettings
ÉÉ %
.
ÉÉ% &
WriteToAsync
ÉÉ& 2
(
ÉÉ2 3

jsonWriter
ÉÉ3 =
)
ÉÉ= >
;
ÉÉ> ?
await
ÑÑ 

jsonWriter
ÑÑ  
.
ÑÑ  !

FlushAsync
ÑÑ! +
(
ÑÑ+ ,
)
ÑÑ, -
;
ÑÑ- .
memoryStream
ÖÖ 
.
ÖÖ 
Position
ÖÖ %
=
ÖÖ& '
$num
ÖÖ( )
;
ÖÖ) *
await
ÜÜ 
_shellsFileStore
ÜÜ &
.
ÜÜ& ''
CreateFileFromStreamAsync
ÜÜ' @
(
ÜÜ@ A
_tenantsBlobName
ÜÜA Q
,
ÜÜQ R
memoryStream
ÜÜS _
)
ÜÜ_ `
;
ÜÜ` a
}
áá 
}
àà 	
private
ää 
async
ää 
Task
ää 
<
ää 
bool
ää 
>
ää  %
TryMigrateFromFileAsync
ää! 8
(
ää8 9
)
ää9 :
{
ãã 	
if
åå 
(
åå 
!
åå 
File
åå 
.
åå 
Exists
åå 
(
åå $
_tenantsFileSystemName
åå 3
)
åå3 4
)
åå4 5
{
çç 
return
éé 
false
éé 
;
éé 
}
èè 
using
ëë 
(
ëë 
var
ëë 
file
ëë 
=
ëë 
File
ëë "
.
ëë" #
OpenRead
ëë# +
(
ëë+ ,$
_tenantsFileSystemName
ëë, B
)
ëëB C
)
ëëC D
{
íí 
await
ìì 
_shellsFileStore
ìì &
.
ìì& ''
CreateFileFromStreamAsync
ìì' @
(
ìì@ A
_tenantsBlobName
ììA Q
,
ììQ R
file
ììS W
)
ììW X
;
ììX Y
}
îî 
return
ññ 
true
ññ 
;
ññ 
}
óó 	
}
òò 
}ôô Ç
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shells.Azure\Configuration\BlobShellStorageOptions.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Azure "
." #
Configuration# 0
{ 
public 

class #
BlobShellStorageOptions (
:) *
BlobStorageOptions+ =
{ 
public 
bool 
MigrateFromFiles $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
}		 √@
ôC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shells.Azure\Extensions\BlobShellsOrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class 2
&BlobShellsOrchardCoreBuilderExtensions >
{ 
public 
static 
OrchardCoreBuilder ('
AddAzureShellsConfiguration) D
(D E
thisE I
OrchardCoreBuilderJ \
builder] d
)d e
{ 	
var 
services 
= 
builder "
." #
ApplicationServices# 6
;6 7
services 
. 
TryAddSingleton $
<$ % 
IContentTypeProvider% 9
,9 :,
 FileExtensionContentTypeProvider; [
>[ \
(\ ]
)] ^
;^ _
services 
. 
AddSingleton !
<! "
IShellsFileStore" 2
>2 3
(3 4
sp4 6
=>7 9
{ 
var 
configuration !
=" #
sp$ &
.& '
GetRequiredService' 9
<9 :
IConfiguration: H
>H I
(I J
)J K
;K L
var 
blobOptions 
=  !
configuration" /
./ 0
GetSectionCompat0 @
(@ A
$strA g
)g h
.h i
Geti l
<l m$
BlobShellStorageOptions	m Ñ
>
Ñ Ö
(
Ö Ü
)
Ü á
;
á à
if 
( 
blobOptions 
==  "
null# '
)' (
{   
throw!! 
new!! !
ArgumentNullException!! 3
(!!3 4
nameof!!4 :
(!!: ;#
BlobShellStorageOptions!!; R
)!!R S
,!!S T
$str"" ^
)""^ _
;""_ `
}## 
var%% 
clock%% 
=%% 
sp%% 
.%% 
GetRequiredService%% 1
<%%1 2
IClock%%2 8
>%%8 9
(%%9 :
)%%: ;
;%%; <
var&& 
contentTypeProvider&& '
=&&( )
sp&&* ,
.&&, -
GetRequiredService&&- ?
<&&? @ 
IContentTypeProvider&&@ T
>&&T U
(&&U V
)&&V W
;&&W X
var(( 
	fileStore(( 
=(( 
new((  #
BlobFileStore(($ 1
(((1 2
blobOptions((2 =
,((= >
clock((? D
,((D E
contentTypeProvider((F Y
)((Y Z
;((Z [
return** 
new** 
BlobShellsFileStore** .
(**. /
	fileStore**/ 8
)**8 9
;**9 :
}++ 
)++ 
;++ 
services-- 
.-- 
Replace-- 
(-- 
ServiceDescriptor-- .
.--. /
	Singleton--/ 8
<--8 9"
IShellsSettingsSources--9 O
>--O P
(--P Q
sp--Q S
=>--T V
{.. 
var// 
shellsFileStore// #
=//$ %
sp//& (
.//( )
GetRequiredService//) ;
<//; <
IShellsFileStore//< L
>//L M
(//M N
)//N O
;//O P
var00 
configuration00 !
=00" #
sp00$ &
.00& '
GetRequiredService00' 9
<009 :
IConfiguration00: H
>00H I
(00I J
)00J K
;00K L
var11 
blobOptions11 
=11  !
configuration11" /
.11/ 0
GetSectionCompat110 @
(11@ A
$str11A g
)11g h
.11h i
Get11i l
<11l m$
BlobShellStorageOptions	11m Ñ
>
11Ñ Ö
(
11Ö Ü
)
11Ü á
;
11á à
var22 
shellOptions22  
=22! "
sp22# %
.22% &
GetRequiredService22& 8
<228 9
IOptions229 A
<22A B
ShellOptions22B N
>22N O
>22O P
(22P Q
)22Q R
;22R S
return44 
new44 %
BlobShellsSettingsSources44 4
(444 5
shellsFileStore445 D
,44D E
blobOptions44F Q
,44Q R
shellOptions44S _
)44_ `
;44` a
}55 
)55 
)55 
;55 
services77 
.77 
Replace77 
(77 
ServiceDescriptor77 .
.77. /
	Singleton77/ 8
<778 9&
IShellConfigurationSources779 S
>77S T
(77T U
sp77U W
=>77X Z
{88 
var99 
shellsFileStore99 #
=99$ %
sp99& (
.99( )
GetRequiredService99) ;
<99; <
IShellsFileStore99< L
>99L M
(99M N
)99N O
;99O P
var:: 
configuration:: !
=::" #
sp::$ &
.::& '
GetRequiredService::' 9
<::9 :
IConfiguration::: H
>::H I
(::I J
)::J K
;::K L
var;; 
blobOptions;; 
=;;  !
configuration;;" /
.;;/ 0
GetSectionCompat;;0 @
(;;@ A
$str;;A g
);;g h
.;;h i
Get;;i l
<;;l m$
BlobShellStorageOptions	;;m Ñ
>
;;Ñ Ö
(
;;Ö Ü
)
;;Ü á
;
;;á à
var<< 
shellOptions<<  
=<<! "
sp<<# %
.<<% &
GetRequiredService<<& 8
<<<8 9
IOptions<<9 A
<<<A B
ShellOptions<<B N
><<N O
><<O P
(<<P Q
)<<Q R
;<<R S
return>> 
new>> )
BlobShellConfigurationSources>> 8
(>>8 9
shellsFileStore>>9 H
,>>H I
blobOptions>>J U
,>>U V
shellOptions>>W c
)>>c d
;>>d e
}?? 
)?? 
)?? 
;?? 
servicesAA 
.AA 
ReplaceAA 
(AA 
ServiceDescriptorAA .
.AA. /
	SingletonAA/ 8
<AA8 9'
IShellsConfigurationSourcesAA9 T
>AAT U
(AAU V
spAAV X
=>AAY [
{BB 
varCC 
shellsFileStoreCC #
=CC$ %
spCC& (
.CC( )
GetRequiredServiceCC) ;
<CC; <
IShellsFileStoreCC< L
>CCL M
(CCM N
)CCN O
;CCO P
varDD 
environmentDD 
=DD  !
spDD" $
.DD$ %
GetRequiredServiceDD% 7
<DD7 8
IHostEnvironmentDD8 H
>DDH I
(DDI J
)DDJ K
;DDK L
varEE 
configurationEE !
=EE" #
spEE$ &
.EE& '
GetRequiredServiceEE' 9
<EE9 :
IConfigurationEE: H
>EEH I
(EEI J
)EEJ K
;EEK L
varFF 
blobOptionsFF 
=FF  !
configurationFF" /
.FF/ 0
GetSectionCompatFF0 @
(FF@ A
$strFFA g
)FFg h
.FFh i
GetFFi l
<FFl m$
BlobShellStorageOptions	FFm Ñ
>
FFÑ Ö
(
FFÖ Ü
)
FFÜ á
;
FFá à
varGG 
shellOptionsGG  
=GG! "
spGG# %
.GG% &
GetRequiredServiceGG& 8
<GG8 9
IOptionsGG9 A
<GGA B
ShellOptionsGGB N
>GGN O
>GGO P
(GGP Q
)GGQ R
;GGR S
returnII 
newII *
BlobShellsConfigurationSourcesII 9
(II9 :
shellsFileStoreII: I
,III J
environmentIIK V
,IIV W
blobOptionsIIX c
,IIc d
shellOptionsIIe q
)IIq r
;IIr s
}JJ 
)JJ 
)JJ 
;JJ 
returnLL 
builderLL 
;LL 
}MM 	
}NN 
}OO ¥
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shells.Azure\Services\BlobShellsFileStore.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Azure "
." #
Services# +
{ 
public 

class 
BlobShellsFileStore $
:% &
IShellsFileStore' 7
{ 
private		 
readonly		 

IFileStore		 #

_fileStore		$ .
;		. /
public 
BlobShellsFileStore "
(" #

IFileStore# -
	fileStore. 7
)7 8
{ 	

_fileStore 
= 
	fileStore "
;" #
} 	
public 
Task 
< 
string 
> %
CreateFileFromStreamAsync 5
(5 6
string6 <
path= A
,A B
StreamC I
inputStreamJ U
)U V
{ 	
return 

_fileStore 
. %
CreateFileFromStreamAsync 7
(7 8
path8 <
,< =
inputStream> I
,I J
trueK O
)O P
;P Q
} 	
public 
Task 
< 
IFileStoreEntry #
># $
GetFileInfoAsync% 5
(5 6
string6 <
path= A
)A B
{ 	
return 

_fileStore 
. 
GetFileInfoAsync .
(. /
path/ 3
)3 4
;4 5
} 	
public 
Task 
< 
Stream 
> 
GetFileStreamAsync .
(. /
string/ 5
path6 :
): ;
{ 	
return 

_fileStore 
. 
GetFileStreamAsync 0
(0 1
path1 5
)5 6
;6 7
} 	
public 
Task 
RemoveFileAsync #
(# $
string$ *
path+ /
)/ 0
=>1 3

_fileStore4 >
.> ?
TryDeleteFileAsync? Q
(Q R
pathR V
)V W
;W X
}   
}!! é	
ÅC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shells.Azure\Services\IShellsFileStore.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Azure "
." #
Services# +
{ 
public 

	interface 
IShellsFileStore %
{ 
Task		 
<		 
IFileStoreEntry		 
>		 
GetFileInfoAsync		 .
(		. /
string		/ 5
path		6 :
)		: ;
;		; <
Task

 
<

 
Stream

 
>

 
GetFileStreamAsync

 '
(

' (
string

( .
path

/ 3
)

3 4
;

4 5
Task 
< 
string 
> %
CreateFileFromStreamAsync .
(. /
string/ 5
path6 :
,: ;
Stream< B
inputStreamC N
)N O
;O P
Task 
RemoveFileAsync 
( 
string #
path$ (
)( )
;) *
} 
} 