µ
€C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore.Modules\OrchardCore.DataProtection.Azure\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str ,
,, -
Author 

= 
ManifestConstants 
. 
OrchardCoreTeam .
,. /
Website 
= 
ManifestConstants 
.  
OrchardCoreWebsite  2
,2 3
Version 
= 
ManifestConstants 
.  
OrchardCoreVersion  2
,2 3
Description 
= 
$str N
,N O
Category		 
=		 
$str		 
)

 
]

 ŠO
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore.Modules\OrchardCore.DataProtection.Azure\Startup.cs
	namespace 	
OrchardCore
 
. 
DataProtection $
.$ %
Azure% *
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
IShellConfiguration ,
_configuration- ;
;; <
private 
readonly 
ShellOptions %
_shellOptions& 3
;3 4
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
FluidParser $
_fluidParser% 1
=2 3
new4 7
FluidParser8 C
(C D
)D E
;E F
public 
Startup 
( 
IShellConfiguration 
configuration  -
,- .
IOptions 
< 
ShellOptions !
>! "
shellOptions# /
,/ 0
ShellSettings 
shellSettings '
,' (
ILogger 
< 
Startup 
> 
logger #
)# $
{ 	
_configuration   
=   
configuration   *
;  * +
_shellOptions!! 
=!! 
shellOptions!! (
.!!( )
Value!!) .
;!!. /
_shellSettings"" 
="" 
shellSettings"" *
;""* +
_logger## 
=## 
logger## 
;## 
}$$ 	
public&& 
override&& 
void&& 
ConfigureServices&& .
(&&. /
IServiceCollection&&/ A
services&&B J
)&&J K
{'' 	
var(( 
connectionString((  
=((! "
_configuration((# 1
.((1 2
GetValue((2 :
<((: ;
string((; A
>((A B
(((B C
$str((C v
)((v w
;((w x
if** 
(** 
!** 
string** 
.** 
IsNullOrWhiteSpace** *
(*** +
connectionString**+ ;
)**; <
)**< =
{++ 
services,, 
.,, 
AddDataProtection,, *
(,,* +
),,+ ,
.,,, -)
PersistKeysToAzureBlobStorage,,- J
(,,J K
connectionString,,K [
,,,[ \ 
GetBlobContainerName,,] q
(,,q r
connectionString	,,r ‚
)
,,‚ ƒ
,
,,ƒ „
GetBlobName
,,… 
(
,, ‘
)
,,‘ ’
)
,,’ “
;
,,“ ”
}-- 
else.. 
{// 
_logger00 
.00 
LogCritical00 #
(00# $
$str	00$ 
)
00 ‘
;
00‘ ’
}11 
}22 	
private44 
string44  
GetBlobContainerName44 +
(44+ ,
string44, 2
connectionString443 C
)44C D
{55 	
var66 
containerName66 
=66 
_configuration66  .
.66. /
GetValue66/ 7
(667 8
$str668 h
,66h i
$str66j z
)66z {
;66{ |
try99 
{:: 
var;; 
templateOptions;; #
=;;$ %
new;;& )
TemplateOptions;;* 9
(;;9 :
);;: ;
;;;; <
templateOptions<< 
.<<   
MemberAccessStrategy<<  4
.<<4 5
Register<<5 =
<<<= >
ShellSettings<<> K
><<K L
(<<L M
)<<M N
;<<N O
var== 
templateContext== #
===$ %
new==& )
TemplateContext==* 9
(==9 :
templateOptions==: I
)==I J
;==J K
templateContext>> 
.>>  
SetValue>>  (
(>>( )
$str>>) 8
,>>8 9
_shellSettings>>: H
)>>H I
;>>I J
var@@ 
template@@ 
=@@ 
_fluidParser@@ +
.@@+ ,
Parse@@, 1
(@@1 2
containerName@@2 ?
)@@? @
;@@@ A
containerNameCC 
=CC 
templateCC  (
.CC( )
RenderCC) /
(CC/ 0
templateContextCC0 ?
,CC? @
NullEncoderCCA L
.CCL M
DefaultCCM T
)CCT U
.CCU V
ToLowerCCV ]
(CC] ^
)CC^ _
;CC_ `
containerNameDD 
=DD 
containerNameDD  -
.DD- .
ReplaceDD. 5
(DD5 6
$strDD6 :
,DD: ;
StringDD< B
.DDB C
EmptyDDC H
)DDH I
.DDI J
ReplaceDDJ Q
(DDQ R
$strDDR V
,DDV W
StringDDX ^
.DD^ _
EmptyDD_ d
)DDd e
;DDe f
}EE 
catchFF 
(FF 
	ExceptionFF 
eFF 
)FF 
{GG 
_loggerHH 
.HH 
LogCriticalHH #
(HH# $
eHH$ %
,HH% &
$strHH' [
)HH[ \
;HH\ ]
throwII 
;II 
}JJ 
varLL 
createContainerLL 
=LL  !
_configurationLL" 0
.LL0 1
GetValueLL1 9
(LL9 :
$strLL: l
,LLl m
trueLLn r
)LLr s
;LLs t
ifMM 
(MM 
createContainerMM 
)MM  
{NN 
tryOO 
{PP 
_loggerQQ 
.QQ 
LogDebugQQ $
(QQ$ %
$strQQ% b
,QQb c
containerNameQQd q
)QQq r
;QQr s
varRR 
_blobContainerRR &
=RR' (
newRR) ,
BlobContainerClientRR- @
(RR@ A
connectionStringRRA Q
,RRQ R
containerNameRRS `
)RR` a
;RRa b
varSS 
responseSS  
=SS! "
_blobContainerSS# 1
.SS1 2"
CreateIfNotExistsAsyncSS2 H
(SSH I
PublicAccessTypeSSI Y
.SSY Z
NoneSSZ ^
)SS^ _
.SS_ `

GetAwaiterSS` j
(SSj k
)SSk l
.SSl m
	GetResultSSm v
(SSv w
)SSw x
;SSx y
_loggerTT 
.TT 
LogDebugTT $
(TT$ %
$strTT% Y
,TTY Z
containerNameTT[ h
)TTh i
;TTi j
}UU 
catchVV 
(VV 
	ExceptionVV  
)VV  !
{WW 
_loggerXX 
.XX 
LogCriticalXX '
(XX' (
$str	XX( •
)
XX• –
;
XX– —
throwZZ 
;ZZ 
}[[ 
}\\ 
return^^ 
containerName^^  
;^^  !
}__ 	
privateaa 
stringaa 
GetBlobNameaa "
(aa" #
)aa# $
{bb 	
varcc 
blobNamecc 
=cc 
_configurationcc )
.cc) *
GetValuecc* 2
<cc2 3
stringcc3 9
>cc9 :
(cc: ;
$strcc; f
)ccf g
;ccg h
ifee 
(ee 
Stringee 
.ee 
IsNullOrEmptyee $
(ee$ %
blobNameee% -
)ee- .
)ee. /
{ff 
blobNamegg 
=gg 
$"gg 
{gg 
_shellOptionsgg +
.gg+ ,
ShellsContainerNamegg, ?
}gg? @
$strgg@ A
{ggA B
_shellSettingsggB P
.ggP Q
NameggQ U
}ggU V
$strggV m
"ggm n
;ggn o
}hh 
elseii 
{jj 
trykk 
{ll 
varnn 
templateOptionsnn '
=nn( )
newnn* -
TemplateOptionsnn. =
(nn= >
)nn> ?
;nn? @
varoo 
templateContextoo '
=oo( )
newoo* -
TemplateContextoo. =
(oo= >
templateOptionsoo> M
)ooM N
;ooN O
templateOptionspp #
.pp# $ 
MemberAccessStrategypp$ 8
.pp8 9
Registerpp9 A
<ppA B
ShellSettingsppB O
>ppO P
(ppP Q
)ppQ R
;ppR S
templateContextqq #
.qq# $
SetValueqq$ ,
(qq, -
$strqq- <
,qq< =
_shellSettingsqq> L
)qqL M
;qqM N
varss 
templatess  
=ss! "
_fluidParserss# /
.ss/ 0
Parsess0 5
(ss5 6
blobNamess6 >
)ss> ?
;ss? @
blobNameuu 
=uu 
templateuu '
.uu' (
Renderuu( .
(uu. /
templateContextuu/ >
,uu> ?
NullEncoderuu@ K
.uuK L
DefaultuuL S
)uuS T
;uuT U
blobNamevv 
=vv 
blobNamevv '
.vv' (
Replacevv( /
(vv/ 0
$strvv0 4
,vv4 5
Stringvv6 <
.vv< =
Emptyvv= B
)vvB C
.vvC D
ReplacevvD K
(vvK L
$strvvL P
,vvP Q
StringvvR X
.vvX Y
EmptyvvY ^
)vv^ _
;vv_ `
}ww 
catchxx 
(xx 
	Exceptionxx  
exx! "
)xx" #
{yy 
_loggerzz 
.zz 
LogCriticalzz '
(zz' (
ezz( )
,zz) *
$strzz+ W
)zzW X
;zzX Y
throw{{ 
;{{ 
}|| 
}}} 
return 
blobName 
; 
}
€€ 	
public
ƒƒ 
override
ƒƒ 
int
ƒƒ 
Order
ƒƒ !
=>
ƒƒ" $
$num
ƒƒ% '
;
ƒƒ' (
}
„„ 
}…… 