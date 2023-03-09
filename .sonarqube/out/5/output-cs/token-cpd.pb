�!
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\IResourceManager.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

	interface 
IResourceManager %
{ 
ResourceManifest 
InlineManifest '
{( )
get* -
;- .
}/ 0
ResourceDefinition 
FindResource '
(' (
RequireSettings( 7
settings8 @
)@ A
;A B
void 
NotRequired 
( 
string 
resourceType  ,
,, -
string. 4
resourceName5 A
)A B
;B C
RequireSettings 
RegisterUrl #
(# $
string$ *
resourceType+ 7
,7 8
string9 ?
resourcePath@ L
,L M
stringN T
resourceDebugPathU f
)f g
;g h
RequireSettings   
RegisterResource   (
(  ( )
string  ) /
resourceType  0 <
,  < =
string  > D
resourceName  E Q
)  Q R
;  R S
void%% 
RegisterHeadScript%% 
(%%  
IHtmlContent%%  ,
script%%- 3
)%%3 4
;%%4 5
void++ 
RegisterFootScript++ 
(++  
IHtmlContent++  ,
script++- 3
)++3 4
;++4 5
void11 
RegisterStyle11 
(11 
IHtmlContent11 '
style11( -
)11- .
;11. /
void66 
RegisterLink66 
(66 
	LinkEntry66 #
link66$ (
)66( )
;66) *
void;; 
RegisterMeta;; 
(;; 
	MetaEntry;; #
meta;;$ (
);;( )
;;;) *
void@@ 

AppendMeta@@ 
(@@ 
	MetaEntry@@ !
meta@@" &
,@@& '
string@@( .
contentSeparator@@/ ?
)@@? @
;@@@ A
IEnumerableEE 
<EE #
ResourceRequiredContextEE +
>EE+ , 
GetRequiredResourcesEE- A
(EEA B
stringEEB H
resourceTypeEEI U
)EEU V
;EEV W
IEnumerableJJ 
<JJ 
	LinkEntryJJ 
>JJ 
GetRegisteredLinksJJ 1
(JJ1 2
)JJ2 3
;JJ3 4
IEnumerableOO 
<OO 
	MetaEntryOO 
>OO 
GetRegisteredMetasOO 1
(OO1 2
)OO2 3
;OO3 4
IEnumerableTT 
<TT 
IHtmlContentTT  
>TT  !$
GetRegisteredHeadScriptsTT" :
(TT: ;
)TT; <
;TT< =
IEnumerableYY 
<YY 
IHtmlContentYY  
>YY  !$
GetRegisteredFootScriptsYY" :
(YY: ;
)YY; <
;YY< =
IEnumerable^^ 
<^^ 
IHtmlContent^^  
>^^  !
GetRegisteredStyles^^" 5
(^^5 6
)^^6 7
;^^7 8
voidcc 

RenderMetacc 
(cc 

TextWritercc "
writercc# )
)cc) *
;cc* +
voidhh 
RenderHeadLinkhh 
(hh 

TextWriterhh &
writerhh' -
)hh- .
;hh. /
voidmm 
RenderStylesheetmm 
(mm 

TextWritermm (
writermm) /
)mm/ 0
;mm0 1
voidrr 
RenderHeadScriptrr 
(rr 

TextWriterrr (
writerrr) /
)rr/ 0
;rr0 1
voidww 
RenderFootScriptww 
(ww 

TextWriterww (
writerww) /
)ww/ 0
;ww0 1
void|| 
RenderLocalScript|| 
(|| 
RequireSettings|| .
settings||/ 7
,||7 8

TextWriter||9 C
writer||D J
)||J K
;||K L
void
�� 
RenderLocalStyle
�� 
(
�� 
RequireSettings
�� -
settings
��. 6
,
��6 7

TextWriter
��8 B
writer
��C I
)
��I J
;
��J K
}
�� 
}�� �+
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\LinkEntry.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class 
	LinkEntry 
{ 
private 
readonly 

TagBuilder #
_builder$ ,
=- .
new/ 2

TagBuilder3 =
(= >
$str> D
)D E
;E F
public

 
string

 
	Condition

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
	LinkEntry 
( 
) 
{ 	
_builder 
. 
TagRenderMode "
=# $
TagRenderMode% 2
.2 3
SelfClosing3 >
;> ?
} 	
public 
string 
Rel 
{ 	
get 
{ 
string 
value 
; 
_builder 
. 

Attributes #
.# $
TryGetValue$ /
(/ 0
$str0 5
,5 6
out7 :
value; @
)@ A
;A B
return 
value 
; 
} 
set 
{ 
SetAttribute 
( 
$str $
,$ %
value& +
)+ ,
;, -
}. /
} 	
public 
string 
Type 
{ 	
get 
{ 
string   
value   
;   
_builder!! 
.!! 

Attributes!! #
.!!# $
TryGetValue!!$ /
(!!/ 0
$str!!0 6
,!!6 7
out!!8 ;
value!!< A
)!!A B
;!!B C
return"" 
value"" 
;"" 
}## 
set$$ 
{$$ 
SetAttribute$$ 
($$ 
$str$$ %
,$$% &
value$$' ,
)$$, -
;$$- .
}$$/ 0
}%% 	
public'' 
string'' 
Title'' 
{(( 	
get)) 
{** 
string++ 
value++ 
;++ 
_builder,, 
.,, 

Attributes,, #
.,,# $
TryGetValue,,$ /
(,,/ 0
$str,,0 7
,,,7 8
out,,9 <
value,,= B
),,B C
;,,C D
return-- 
value-- 
;-- 
}.. 
set// 
{// 
SetAttribute// 
(// 
$str// &
,//& '
value//( -
)//- .
;//. /
}//0 1
}00 	
public22 
string22 
Href22 
{33 	
get44 
{55 
string66 
value66 
;66 
_builder77 
.77 

Attributes77 #
.77# $
TryGetValue77$ /
(77/ 0
$str770 6
,776 7
out778 ;
value77< A
)77A B
;77B C
return88 
value88 
;88 
}99 
set:: 
{:: 
SetAttribute:: 
(:: 
$str:: %
,::% &
value::' ,
)::, -
;::- .
}::/ 0
};; 	
public== 
bool== 
AppendVersion== !
{==" #
get==$ '
;==' (
set==) ,
;==, -
}==. /
public?? 
IHtmlContent?? 
GetTag?? "
(??" #
)??# $
{@@ 	
ifAA 
(AA 
!AA 
stringAA 
.AA 
IsNullOrEmptyAA %
(AA% &
	ConditionAA& /
)AA/ 0
)AA0 1
{BB 
varCC 
htmlBuilderCC 
=CC  !
newCC" %
HtmlContentBuilderCC& 8
(CC8 9
)CC9 :
;CC: ;
htmlBuilderDD 
.DD 

AppendHtmlDD &
(DD& '
$strDD' 1
+DD2 3
	ConditionDD4 =
+DD> ?
$strDD@ D
)DDD E
;DDE F
htmlBuilderEE 
.EE 

AppendHtmlEE &
(EE& '
_builderEE' /
)EE/ 0
;EE0 1
htmlBuilderFF 
.FF 

AppendHtmlFF &
(FF& '
$strFF' 5
)FF5 6
;FF6 7
returnHH 
htmlBuilderHH "
;HH" #
}II 
returnKK 
_builderKK 
;KK 
}LL 	
publicNN 
	LinkEntryNN 
AddAttributeNN %
(NN% &
stringNN& ,
nameNN- 1
,NN1 2
stringNN3 9
valueNN: ?
)NN? @
{OO 	
_builderPP 
.PP 
MergeAttributePP #
(PP# $
namePP$ (
,PP( )
valuePP* /
)PP/ 0
;PP0 1
returnQQ 
thisQQ 
;QQ 
}RR 	
publicTT 
	LinkEntryTT 
SetAttributeTT %
(TT% &
stringTT& ,
nameTT- 1
,TT1 2
stringTT3 9
valueTT: ?
)TT? @
{UU 	
_builderVV 
.VV 
MergeAttributeVV #
(VV# $
nameVV$ (
,VV( )
valueVV* /
,VV/ 0
trueVV1 5
)VV5 6
;VV6 7
returnWW 
thisWW 
;WW 
}XX 	
}YY 
}ZZ �I
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\MetaEntry.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class 
	MetaEntry 
{		 
private

 
readonly

 

TagBuilder

 #
_builder

$ ,
=

- .
new

/ 2

TagBuilder

3 =
(

= >
$str

> D
)

D E
;

E F
public 
	MetaEntry 
( 
) 
{ 	
_builder 
. 
TagRenderMode "
=# $
TagRenderMode% 2
.2 3
SelfClosing3 >
;> ?
} 	
public 
	MetaEntry 
( 
string 
name  $
=% &
null' +
,+ ,
string- 3
property4 <
== >
null? C
,C D
stringE K
contentL S
=T U
nullV Z
,Z [
string\ b
	httpEquivc l
=m n
nullo s
,s t
stringu {
charset	| �
=
� �
null
� �
)
� �
:
� �
this
� �
(
� �
)
� �
{ 	
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
name& *
)* +
)+ ,
{ 
Name 
= 
name 
; 
} 
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
property& .
). /
)/ 0
{ 
Property 
= 
property #
;# $
} 
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
content& -
)- .
). /
{ 
Content 
= 
content !
;! "
}   
if"" 
("" 
!"" 
String"" 
."" 
IsNullOrEmpty"" %
(""% &
	httpEquiv""& /
)""/ 0
)""0 1
{## 
	HttpEquiv$$ 
=$$ 
	httpEquiv$$ %
;$$% &
}%% 
if'' 
('' 
!'' 
String'' 
.'' 
IsNullOrEmpty'' %
(''% &
charset''& -
)''- .
)''. /
{(( 
Charset)) 
=)) 
charset)) !
;))! "
}** 
}++ 	
public-- 
static-- 
	MetaEntry-- 
Combine--  '
(--' (
	MetaEntry--( 1
meta1--2 7
,--7 8
	MetaEntry--9 B
meta2--C H
,--H I
string--J P
contentSeparator--Q a
)--a b
{.. 	
var// 
newMeta// 
=// 
new// 
	MetaEntry// '
(//' (
)//( )
;//) *
Merge00 
(00 
newMeta00 
.00 
_builder00 "
.00" #

Attributes00# -
,00- .
meta100/ 4
.004 5
_builder005 =
.00= >

Attributes00> H
,00H I
meta200J O
.00O P
_builder00P X
.00X Y

Attributes00Y c
)00c d
;00d e
if11 
(11 
!11 
String11 
.11 
IsNullOrEmpty11 %
(11% &
meta111& +
.11+ ,
Content11, 3
)113 4
&&115 7
!118 9
String119 ?
.11? @
IsNullOrEmpty11@ M
(11M N
meta211N S
.11S T
Content11T [
)11[ \
)11\ ]
{22 
newMeta33 
.33 
Content33 
=33  !
meta133" '
.33' (
Content33( /
+330 1
contentSeparator332 B
+33C D
meta233E J
.33J K
Content33K R
;33R S
}44 
return66 
newMeta66 
;66 
}77 	
private99 
static99 
void99 
Merge99 !
(99! "
IDictionary99" -
<99- .
string99. 4
,994 5
string996 <
>99< =
d199> @
,99@ A
params99B H
IDictionary99I T
<99T U
string99U [
,99[ \
string99] c
>99c d
[99d e
]99e f
sources99g n
)99n o
{:: 	
foreach;; 
(;; 
var;; 
d;; 
in;; 
sources;; %
);;% &
{<< 
foreach== 
(== 
var== 
pair== !
in==" $
d==% &
)==& '
{>> 
d1?? 
[?? 
pair?? 
.?? 
Key?? 
]??  
=??! "
pair??# '
.??' (
Value??( -
;??- .
}@@ 
}AA 
}BB 	
publicDD 
	MetaEntryDD 
AddAttributeDD %
(DD% &
stringDD& ,
nameDD- 1
,DD1 2
stringDD3 9
valueDD: ?
)DD? @
{EE 	
_builderFF 
.FF 
MergeAttributeFF #
(FF# $
nameFF$ (
,FF( )
valueFF* /
)FF/ 0
;FF0 1
returnGG 
thisGG 
;GG 
}HH 	
publicJJ 
	MetaEntryJJ 
SetAttributeJJ %
(JJ% &
stringJJ& ,
nameJJ- 1
,JJ1 2
stringJJ3 9
valueJJ: ?
)JJ? @
{KK 	
_builderLL 
.LL 
MergeAttributeLL #
(LL# $
nameLL$ (
,LL( )
valueLL* /
,LL/ 0
trueLL1 5
)LL5 6
;LL6 7
returnMM 
thisMM 
;MM 
}NN 	
publicPP 
stringPP 
NamePP 
{QQ 	
getRR 
{SS 
_builderTT 
.TT 

AttributesTT #
.TT# $
TryGetValueTT$ /
(TT/ 0
$strTT0 6
,TT6 7
outTT8 ;
varTT< ?
valueTT@ E
)TTE F
;TTF G
returnUU 
valueUU 
;UU 
}VV 
setWW 
{WW 
SetAttributeWW 
(WW 
$strWW %
,WW% &
valueWW' ,
)WW, -
;WW- .
}WW/ 0
}XX 	
publicZZ 
stringZZ 
PropertyZZ 
{[[ 	
get\\ 
{]] 
_builder^^ 
.^^ 

Attributes^^ #
.^^# $
TryGetValue^^$ /
(^^/ 0
$str^^0 :
,^^: ;
out^^< ?
var^^@ C
value^^D I
)^^I J
;^^J K
return__ 
value__ 
;__ 
}`` 
setaa 
{aa 
SetAttributeaa 
(aa 
$straa )
,aa) *
valueaa+ 0
)aa0 1
;aa1 2
}aa3 4
}bb 	
publicdd 
stringdd 
Contentdd 
{ee 	
getff 
{gg 
stringhh 
valuehh 
;hh 
_builderii 
.ii 

Attributesii #
.ii# $
TryGetValueii$ /
(ii/ 0
$strii0 9
,ii9 :
outii; >
valueii? D
)iiD E
;iiE F
returnjj 
valuejj 
;jj 
}kk 
setll 
{ll 
SetAttributell 
(ll 
$strll (
,ll( )
valuell* /
)ll/ 0
;ll0 1
}ll2 3
}mm 	
publicoo 
stringoo 
	HttpEquivoo 
{pp 	
getqq 
{rr 
_builderss 
.ss 

Attributesss #
.ss# $
TryGetValuess$ /
(ss/ 0
$strss0 <
,ss< =
outss> A
varssB E
valuessF K
)ssK L
;ssL M
returntt 
valuett 
;tt 
}uu 
setvv 
{vv 
SetAttributevv 
(vv 
$strvv +
,vv+ ,
valuevv- 2
)vv2 3
;vv3 4
}vv5 6
}ww 	
publicyy 
stringyy 
Charsetyy 
{zz 	
get{{ 
{|| 
_builder}} 
.}} 

Attributes}} #
.}}# $
TryGetValue}}$ /
(}}/ 0
$str}}0 9
,}}9 :
out}}; >
var}}? B
value}}C H
)}}H I
;}}I J
return~~ 
value~~ 
;~~ 
} 
set
�� 
{
�� 
SetAttribute
�� 
(
�� 
$str
�� (
,
��( )
value
��* /
)
��/ 0
;
��0 1
}
��2 3
}
�� 	
public
�� 
IHtmlContent
�� 
GetTag
�� "
(
��" #
)
��# $
{
�� 	
return
�� 
_builder
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[		 
assembly		 	
:			 

AssemblyProduct		 
(		 
$str		 H
)		H I
]		I J
[

 
assembly

 	
:

	 

AssemblyTrademark

 
(

 
$str

 
)

  
]

  !
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8˷
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\RequireSettings.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class 
RequireSettings  
{		 
private

 

Dictionary

 
<

 
string

 !
,

! "
string

# )
>

) *
_attributes

+ 6
;

6 7
public 
string 
BasePath 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Culture 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
	DebugMode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
CdnMode 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

CdnBaseUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ResourceLocation 
Location  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
	Condition 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
? 
AppendVersion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< 
string 
> 
Dependencies (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Action 
< 
ResourceDefinition (
>( )
InlineDefinition* :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
ResourcePosition 
Position  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

Dictionary 
< 
string  
,  !
string" (
>( )

Attributes* 4
{ 	
get 
=> 
_attributes 
?? !
(" #
_attributes# .
=/ 0
new1 4

Dictionary5 ?
<? @
string@ F
,F G
stringH N
>N O
(O P
)P Q
)Q R
;R S
private 
set 
{ 
_attributes %
=& '
value( -
;- .
}/ 0
} 	
public!! 
RequireSettings!! 
(!! 
)!!  
{"" 	
}## 	
public%% 
RequireSettings%% 
(%% %
ResourceManagementOptions%% 8
options%%9 @
)%%@ A
{&& 	
CdnMode'' 
='' 
options'' 
.'' 
UseCdn'' $
;''$ %
	DebugMode(( 
=(( 
options(( 
.((  
	DebugMode((  )
;(() *
Culture)) 
=)) 
options)) 
.)) 
Culture)) %
;))% &

CdnBaseUrl** 
=** 
options**  
.**  !

CdnBaseUrl**! +
;**+ ,
AppendVersion++ 
=++ 
options++ #
.++# $
AppendVersion++$ 1
;++1 2
},, 	
public.. 
bool.. 
HasAttributes.. !
{// 	
get00 
{00 
return00 
_attributes00 $
!=00% '
null00( ,
&&00- /
_attributes000 ;
.00; <
Any00< ?
(00? @
a00@ A
=>00B D
a00E F
.00F G
Value00G L
!=00M O
null00P T
)00T U
;00U V
}00W X
}11 	
[66 	

MethodImpl66	 
(66 
MethodImplOptions66 %
.66% &
AggressiveInlining66& 8
)668 9
]669 :
public77 
RequireSettings77 
AtHead77 %
(77% &
)77& '
{88 	
return99 

AtLocation99 
(99 
ResourceLocation99 .
.99. /
Head99/ 3
)993 4
;994 5
}:: 	
[@@ 	

MethodImpl@@	 
(@@ 
MethodImplOptions@@ %
.@@% &
AggressiveInlining@@& 8
)@@8 9
]@@9 :
publicAA 
RequireSettingsAA 
AtFootAA %
(AA% &
)AA& '
{BB 	
returnCC 

AtLocationCC 
(CC 
ResourceLocationCC .
.CC. /
FootCC/ 3
)CC3 4
;CC4 5
}DD 	
[JJ 	

MethodImplJJ	 
(JJ 
MethodImplOptionsJJ %
.JJ% &
AggressiveInliningJJ& 8
)JJ8 9
]JJ9 :
publicKK 
RequireSettingsKK 

AtLocationKK )
(KK) *
ResourceLocationKK* :
locationKK; C
)KKC D
{LL 	
LocationNN 
=NN 
(NN 
ResourceLocationNN (
)NN( )
MathNN) -
.NN- .
MaxNN. 1
(NN1 2
(NN2 3
intNN3 6
)NN6 7
LocationNN7 ?
,NN? @
(NNA B
intNNB E
)NNE F
locationNNF N
)NNN O
;NNO P
returnOO 
thisOO 
;OO 
}PP 	
[RR 	

MethodImplRR	 
(RR 
MethodImplOptionsRR %
.RR% &
AggressiveInliningRR& 8
)RR8 9
]RR9 :
publicSS 
RequireSettingsSS 

UseCultureSS )
(SS) *
stringSS* 0
cultureNameSS1 <
)SS< =
{TT 	
ifUU 
(UU 
!UU 
StringUU 
.UU 
IsNullOrEmptyUU %
(UU% &
cultureNameUU& 1
)UU1 2
)UU2 3
{VV 
CultureWW 
=WW 
cultureNameWW %
;WW% &
}XX 
returnYY 
thisYY 
;YY 
}ZZ 	
[\\ 	

MethodImpl\\	 
(\\ 
MethodImplOptions\\ %
.\\% &
AggressiveInlining\\& 8
)\\8 9
]\\9 :
public]] 
RequireSettings]] 
UseDebugMode]] +
(]]+ ,
)]], -
{^^ 	
return__ 
UseDebugMode__ 
(__  
true__  $
)__$ %
;__% &
}`` 	
[bb 	

MethodImplbb	 
(bb 
MethodImplOptionsbb %
.bb% &
AggressiveInliningbb& 8
)bb8 9
]bb9 :
publiccc 
RequireSettingscc 
UseDebugModecc +
(cc+ ,
boolcc, 0
	debugModecc1 :
)cc: ;
{dd 	
	DebugModeee 
|=ee 
	debugModeee "
;ee" #
returnff 
thisff 
;ff 
}gg 	
[ii 	

MethodImplii	 
(ii 
MethodImplOptionsii %
.ii% &
AggressiveInliningii& 8
)ii8 9
]ii9 :
publicjj 
RequireSettingsjj 
UseCdnjj %
(jj% &
)jj& '
{kk 	
returnll 
UseCdnll 
(ll 
truell 
)ll 
;ll  
}mm 	
[oo 	

MethodImploo	 
(oo 
MethodImplOptionsoo %
.oo% &
AggressiveInliningoo& 8
)oo8 9
]oo9 :
publicpp 
RequireSettingspp 
UseCdnpp %
(pp% &
boolpp& *
cdnpp+ .
)pp. /
{qq 	
CdnModerr 
|=rr 
cdnrr 
;rr 
returnss 
thisss 
;ss 
}tt 	
[vv 	

MethodImplvv	 
(vv 
MethodImplOptionsvv %
.vv% &
AggressiveInliningvv& 8
)vv8 9
]vv9 :
publicww 
RequireSettingsww 
UseCdnBaseUrlww ,
(ww, -
stringww- 3

cdnBaseUrlww4 >
)ww> ?
{xx 	

CdnBaseUrlyy 
=yy 

cdnBaseUrlyy #
;yy# $
returnzz 
thiszz 
;zz 
}{{ 	
[}} 	

MethodImpl}}	 
(}} 
MethodImplOptions}} %
.}}% &
AggressiveInlining}}& 8
)}}8 9
]}}9 :
public~~ 
RequireSettings~~ 
WithBasePath~~ +
(~~+ ,
string~~, 2
basePath~~3 ;
)~~; <
{ 	
BasePath
�� 
=
�� 
basePath
�� 
;
��  
return
�� 
this
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
RequireSettings
�� 
UseCondition
�� +
(
��+ ,
string
��, 2
	condition
��3 <
)
��< =
{
�� 	
	Condition
�� 
??=
�� 
	condition
�� #
;
��# $
return
�� 
this
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
RequireSettings
�� 

UseVersion
�� )
(
��) *
string
��* 0
version
��1 8
)
��8 9
{
�� 	
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
version
��& -
)
��- .
)
��. /
{
�� 
Version
�� 
=
�� 
version
�� !
;
��! "
}
�� 
return
�� 
this
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
RequireSettings
�� !
ShouldAppendVersion
�� 2
(
��2 3
bool
��3 7
?
��7 8
appendVersion
��9 F
)
��F G
{
�� 	
AppendVersion
�� 
=
�� 
appendVersion
�� )
;
��) *
return
�� 
this
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
RequireSettings
�� 
SetDependencies
�� .
(
��. /
params
��/ 5
string
��6 <
[
��< =
]
��= >
dependencies
��? K
)
��K L
{
�� 	
if
�� 
(
�� 
Dependencies
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
Dependencies
�� 
=
�� 
new
�� "
List
��# '
<
��' (
string
��( .
>
��. /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
Dependencies
�� 
.
�� 
AddRange
�� !
(
��! "
dependencies
��" .
)
��. /
;
��/ 0
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
RequireSettings
�� 
Define
�� %
(
��% &
Action
��& ,
<
��, - 
ResourceDefinition
��- ?
>
��? @ 
resourceDefinition
��A S
)
��S T
{
�� 	
if
�� 
(
��  
resourceDefinition
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
var
�� 
previous
�� 
=
�� 
InlineDefinition
�� /
;
��/ 0
if
�� 
(
�� 
previous
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
InlineDefinition
�� $
=
��% &
r
��' (
=>
��) +
{
�� 
previous
��  
(
��  !
r
��! "
)
��" #
;
��# $ 
resourceDefinition
�� *
(
��* +
r
��+ ,
)
��, -
;
��- .
}
�� 
;
�� 
}
�� 
else
�� 
{
�� 
InlineDefinition
�� $
=
��% & 
resourceDefinition
��' 9
;
��9 :
}
�� 
}
�� 
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
RequireSettings
�� 
SetAttribute
�� +
(
��+ ,
string
��, 2
name
��3 7
,
��7 8
string
��9 ?
value
��@ E
)
��E F
{
�� 	
if
�� 
(
�� 
_attributes
�� 
==
�� 
null
�� #
)
��# $
{
�� 
_attributes
�� 
=
�� 
new
�� !

Dictionary
��" ,
<
��, -
string
��- 3
,
��3 4
string
��5 ;
>
��; <
(
��< =
)
��= >
;
��> ?
}
�� 
_attributes
�� 
[
�� 
name
�� 
]
�� 
=
�� 
value
��  %
;
��% &
return
�� 
this
�� 
;
�� 
}
�� 	
private
�� 

Dictionary
�� 
<
�� 
string
�� !
,
��! "
string
��# )
>
��) *
MergeAttributes
��+ :
(
��: ;
RequireSettings
��; J
other
��K P
)
��P Q
{
�� 	
if
�� 
(
�� 
_attributes
�� 
==
�� 
null
�� #
)
��# $
{
�� 
return
�� 
other
�� 
.
�� 
_attributes
�� (
==
��) +
null
��, 0
?
��1 2
null
��3 7
:
��8 9
new
��: =

Dictionary
��> H
<
��H I
string
��I O
,
��O P
string
��Q W
>
��W X
(
��X Y
other
��Y ^
.
��^ _
_attributes
��_ j
)
��j k
;
��k l
}
�� 
if
�� 
(
�� 
other
�� 
.
�� 
_attributes
�� !
==
��" $
null
��% )
)
��) *
{
�� 
return
�� 
new
�� 

Dictionary
�� %
<
��% &
string
��& ,
,
��, -
string
��. 4
>
��4 5
(
��5 6
_attributes
��6 A
)
��A B
;
��B C
}
�� 
var
�� 
mergedAttributes
��  
=
��! "
new
��# &

Dictionary
��' 1
<
��1 2
string
��2 8
,
��8 9
string
��: @
>
��@ A
(
��A B
_attributes
��B M
)
��M N
;
��N O
foreach
�� 
(
�� 
var
�� 
pair
�� 
in
��  
other
��! &
.
��& '
_attributes
��' 2
)
��2 3
{
�� 
mergedAttributes
��  
[
��  !
pair
��! %
.
��% &
Key
��& )
]
��) *
=
��+ ,
pair
��- 1
.
��1 2
Value
��2 7
;
��7 8
}
�� 
return
�� 
mergedAttributes
�� #
;
��# $
}
�� 	
public
�� 
RequireSettings
�� )
UpdatePositionFromDependent
�� :
(
��: ;
RequireSettings
��; J
	dependent
��K T
)
��T U
{
�� 	
if
�� 
(
�� 
	dependent
�� 
.
�� 
Position
�� "
==
��# %
ResourcePosition
��& 6
.
��6 7
First
��7 <
&&
��= ?
Position
��@ H
==
��I K
ResourcePosition
��L \
.
��\ ]
Last
��] a
)
��a b
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
��4 6
$str
��6 [
{
��[ \
	dependent
��\ e
.
��e f
Type
��f j
}
��j k
$str
��k {
{
��{ |
	dependent��| �
.��� �
Name��� �
}��� �
$str��� �
{��� �
	dependent��� �
.��� �
Position��� �
}��� �
$str��� �
{��� �
Name��� �
}��� �
$str��� �
{��� �
Position��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
	dependent
�� 
.
�� 
Position
�� "
==
��# %
ResourcePosition
��& 6
.
��6 7
First
��7 <
&&
��= ?
Position
��@ H
==
��I K
ResourcePosition
��L \
.
��\ ]
ByDependency
��] i
)
��i j
{
�� 
Position
�� 
=
�� 
ResourcePosition
�� +
.
��+ ,
First
��, 1
;
��1 2
}
�� 
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
RequireSettings
�� *
UpdatePositionFromDependency
�� ;
(
��; <
RequireSettings
��< K

dependency
��L V
)
��V W
{
�� 	
if
�� 
(
�� 
Position
�� 
==
�� 
ResourcePosition
�� ,
.
��, -
ByDependency
��- 9
&&
��: <

dependency
��= G
.
��G H
Position
��H P
==
��Q S
ResourcePosition
��T d
.
��d e
Last
��e i
)
��i j
{
�� 
Position
�� 
=
�� 
ResourcePosition
�� +
.
��+ ,
Last
��, 0
;
��0 1
}
�� 
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
RequireSettings
�� 
CombinePosition
�� .
(
��. /
RequireSettings
��/ >
	dependent
��? H
)
��H I
{
�� 	)
UpdatePositionFromDependent
�� '
(
��' (
	dependent
��( 1
)
��1 2
;
��2 3
	dependent
�� 
.
�� *
UpdatePositionFromDependency
�� 2
(
��2 3
this
��3 7
)
��7 8
;
��8 9
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
RequireSettings
�� 
NewAndCombine
�� ,
(
��, -
RequireSettings
��- <
other
��= B
)
��B C
{
�� 	
return
�� 
new
�� 
RequireSettings
�� &
{
�� 
Name
�� 
=
�� 
Name
�� 
,
�� 
Type
�� 
=
�� 
Type
�� 
,
�� 
Location
�� 
=
�� 
Location
�� #
,
��# $
Position
�� 
=
�� 
Position
�� #
}
�� 
.
�� 
Combine
�� 
(
�� 
other
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
RequireSettings
�� 
Combine
�� &
(
��& '
RequireSettings
��' 6
other
��7 <
)
��< =
{
�� 	

AtLocation
�� 
(
�� 
Location
�� 
)
��  
.
��  !

AtLocation
��! +
(
��+ ,
other
��, 1
.
��1 2
Location
��2 :
)
��: ;
.
�� 
WithBasePath
�� 
(
�� 
BasePath
�� "
)
��" #
.
��# $
WithBasePath
��$ 0
(
��0 1
other
��1 6
.
��6 7
BasePath
��7 ?
)
��? @
.
�� 
UseCdn
�� 
(
�� 
CdnMode
�� 
)
�� 
.
�� 
UseCdn
�� #
(
��# $
other
��$ )
.
��) *
CdnMode
��* 1
)
��1 2
.
�� 
UseCdnBaseUrl
�� 
(
�� 

CdnBaseUrl
�� %
)
��% &
.
��& '
UseCdnBaseUrl
��' 4
(
��4 5
other
��5 :
.
��: ;

CdnBaseUrl
��; E
)
��E F
.
�� 
UseDebugMode
�� 
(
�� 
	DebugMode
�� #
)
��# $
.
��$ %
UseDebugMode
��% 1
(
��1 2
other
��2 7
.
��7 8
	DebugMode
��8 A
)
��A B
.
�� 

UseCulture
�� 
(
�� 
Culture
�� 
)
��  
.
��  !

UseCulture
��! +
(
��+ ,
other
��, 1
.
��1 2
Culture
��2 9
)
��9 :
.
�� 
UseCondition
�� 
(
�� 
	Condition
�� #
)
��# $
.
��$ %
UseCondition
��% 1
(
��1 2
other
��2 7
.
��7 8
	Condition
��8 A
)
��A B
.
�� 

UseVersion
�� 
(
�� 
Version
�� 
)
��  
.
��  !

UseVersion
��! +
(
��+ ,
other
��, 1
.
��1 2
Version
��2 9
)
��9 :
.
�� !
ShouldAppendVersion
��  
(
��  !
AppendVersion
��! .
)
��. /
.
��/ 0!
ShouldAppendVersion
��0 C
(
��C D
other
��D I
.
��I J
AppendVersion
��J W
)
��W X
.
�� 
Define
�� 
(
�� 
InlineDefinition
�� $
)
��$ %
.
��% &
Define
��& ,
(
��, -
other
��- 2
.
��2 3
InlineDefinition
��3 C
)
��C D
;
�� 
_attributes
�� 
=
�� 
MergeAttributes
�� )
(
��) *
other
��* /
)
��/ 0
;
��0 1
return
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceDebugMode.cs
	namespace 	
OrchardCore
 
. 
Settings 
{ 
public 

enum 
ResourceDebugMode !
{ 
FromConfiguration 
, 
Enabled 
, 
Disabled 
} 
}		 ��
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceDefinition.cs
	namespace		 	
OrchardCore		
 
.		 
ResourceManagement		 (
{

 
public 

class 
ResourceDefinition #
{ 
private 
string 
	_basePath  
;  !
public 
ResourceDefinition !
(! "
ResourceManifest" 2
manifest3 ;
,; <
string= C
typeD H
,H I
stringJ P
nameQ U
)U V
{ 	
Manifest 
= 
manifest 
;  
Type 
= 
type 
; 
Name 
= 
name 
; 
} 	
private 
static 
string 
Coalesce &
(& '
params' -
string. 4
[4 5
]5 6
strings7 >
)> ?
{ 	
foreach 
( 
var 
str 
in 
strings  '
)' (
{ 
if 
( 
! 
String 
. 
IsNullOrEmpty )
() *
str* -
)- .
). /
{ 
return 
str 
; 
} 
} 
return 
null 
; 
}   	
public"" 
ResourceManifest"" 
Manifest""  (
{"") *
get""+ .
;"". /
private""0 7
set""8 ;
;""; <
}""= >
public$$ 
string$$ 
Name$$ 
{$$ 
get$$  
;$$  !
private$$" )
set$$* -
;$$- .
}$$/ 0
public%% 
string%% 
Type%% 
{%% 
get%%  
;%%  !
private%%" )
set%%* -
;%%- .
}%%/ 0
public&& 
string&& 
Version&& 
{&& 
get&&  #
;&&# $
private&&% ,
set&&- 0
;&&0 1
}&&2 3
public'' 
bool'' 
?'' 
AppendVersion'' "
{''# $
get''% (
;''( )
private''* 1
set''2 5
;''5 6
}''7 8
public(( 
string(( 
Url(( 
{(( 
get(( 
;((  
private((! (
set(() ,
;((, -
}((. /
public)) 
string)) 
UrlDebug)) 
{))  
get))! $
;))$ %
private))& -
set)). 1
;))1 2
}))3 4
public** 
string** 
UrlCdn** 
{** 
get** "
;**" #
private**$ +
set**, /
;**/ 0
}**1 2
public++ 
string++ 
UrlCdnDebug++ !
{++" #
get++$ '
;++' (
private++) 0
set++1 4
;++4 5
}++6 7
public,, 
string,, 
CdnDebugIntegrity,, '
{,,( )
get,,* -
;,,- .
private,,/ 6
set,,7 :
;,,: ;
},,< =
public-- 
string-- 
CdnIntegrity-- "
{--# $
get--% (
;--( )
private--* 1
set--2 5
;--5 6
}--7 8
public.. 
string.. 
[.. 
].. 
Cultures..  
{..! "
get..# &
;..& '
private..( /
set..0 3
;..3 4
}..5 6
public// 
bool// 
CdnSupportsSsl// "
{//# $
get//% (
;//( )
private//* 1
set//2 5
;//5 6
}//7 8
public00 
List00 
<00 
string00 
>00 
Dependencies00 (
{00) *
get00+ .
;00. /
private000 7
set008 ;
;00; <
}00= >
public11 
AttributeDictionary11 "

Attributes11# -
{11. /
get110 3
;113 4
private115 <
set11= @
;11@ A
}11B C
public22 
string22 
InnerContent22 "
{22# $
get22% (
;22( )
private22* 1
set222 5
;225 6
}227 8
public33 
ResourcePosition33 
Position33  (
{33) *
get33+ .
;33. /
private330 7
set338 ;
;33; <
}33= >
public55 
ResourceDefinition55 !
SetAttribute55" .
(55. /
string55/ 5
name556 :
,55: ;
string55< B
value55C H
)55H I
{66 	
if77 
(77 

Attributes77 
==77 
null77 "
)77" #
{88 

Attributes99 
=99 
new99  
AttributeDictionary99! 4
(994 5
)995 6
;996 7
}:: 

Attributes<< 
[<< 
name<< 
]<< 
=<< 
value<< $
;<<$ %
return== 
this== 
;== 
}>> 	
public@@ 
ResourceDefinition@@ !
SetBasePath@@" -
(@@- .
string@@. 4
basePath@@5 =
)@@= >
{AA 	
	_basePathBB 
=BB 
basePathBB  
;BB  !
returnCC 
thisCC 
;CC 
}DD 	
publicFF 
ResourceDefinitionFF !
SetUrlFF" (
(FF( )
stringFF) /
urlFF0 3
)FF3 4
{GG 	
returnHH 
SetUrlHH 
(HH 
urlHH 
,HH 
nullHH #
)HH# $
;HH$ %
}II 	
publicKK 
ResourceDefinitionKK !
SetUrlKK" (
(KK( )
stringKK) /
urlKK0 3
,KK3 4
stringKK5 ;
urlDebugKK< D
)KKD E
{LL 	
ifMM 
(MM 
StringMM 
.MM 
IsNullOrEmptyMM $
(MM$ %
urlMM% (
)MM( )
)MM) *
{NN &
ThrowArgumentNullExceptionOO *
(OO* +
nameofOO+ 1
(OO1 2
urlOO2 5
)OO5 6
)OO6 7
;OO7 8
}PP 
UrlQQ 
=QQ 
urlQQ 
;QQ 
ifRR 
(RR 
urlDebugRR 
!=RR 
nullRR  
)RR  !
{SS 
UrlDebugTT 
=TT 
urlDebugTT #
;TT# $
}UU 
returnVV 
thisVV 
;VV 
}WW 	
publicYY 
ResourceDefinitionYY !
SetCdnYY" (
(YY( )
stringYY) /
cdnUrlYY0 6
)YY6 7
{ZZ 	
return[[ 
SetCdn[[ 
([[ 
cdnUrl[[  
,[[  !
null[[" &
,[[& '
null[[( ,
)[[, -
;[[- .
}\\ 	
public^^ 
ResourceDefinition^^ !
SetCdn^^" (
(^^( )
string^^) /
cdnUrl^^0 6
,^^6 7
string^^8 >
cdnUrlDebug^^? J
)^^J K
{__ 	
return`` 
SetCdn`` 
(`` 
cdnUrl``  
,``  !
cdnUrlDebug``" -
,``- .
null``/ 3
)``3 4
;``4 5
}aa 	
publiccc 
ResourceDefinitioncc !
SetCdnIntegritycc" 1
(cc1 2
stringcc2 8
cdnIntegritycc9 E
)ccE F
{dd 	
returnee 
SetCdnIntegrityee "
(ee" #
cdnIntegrityee# /
,ee/ 0
nullee1 5
)ee5 6
;ee6 7
}ff 	
publichh 
ResourceDefinitionhh !
SetCdnIntegrityhh" 1
(hh1 2
stringhh2 8
cdnIntegrityhh9 E
,hhE F
stringhhG M
cdnDebugIntegrityhhN _
)hh_ `
{ii 	
ifjj 
(jj 
Stringjj 
.jj 
IsNullOrEmptyjj $
(jj$ %
cdnIntegrityjj% 1
)jj1 2
)jj2 3
{kk &
ThrowArgumentNullExceptionll *
(ll* +
nameofll+ 1
(ll1 2
cdnIntegrityll2 >
)ll> ?
)ll? @
;ll@ A
}mm 
CdnIntegritynn 
=nn 
cdnIntegritynn '
;nn' (
ifoo 
(oo 
cdnDebugIntegrityoo !
!=oo" $
nulloo% )
)oo) *
{pp 
CdnDebugIntegrityqq !
=qq" #
cdnDebugIntegrityqq$ 5
;qq5 6
}rr 
returnss 
thisss 
;ss 
}tt 	
publicvv 
ResourceDefinitionvv !
SetCdnvv" (
(vv( )
stringvv) /
cdnUrlvv0 6
,vv6 7
stringvv8 >
cdnUrlDebugvv? J
,vvJ K
boolvvL P
?vvP Q
cdnSupportsSslvvR `
)vv` a
{ww 	
ifxx 
(xx 
Stringxx 
.xx 
IsNullOrEmptyxx $
(xx$ %
cdnUrlxx% +
)xx+ ,
)xx, -
{yy &
ThrowArgumentNullExceptionzz *
(zz* +
nameofzz+ 1
(zz1 2
cdnUrlzz2 8
)zz8 9
)zz9 :
;zz: ;
}{{ 
UrlCdn|| 
=|| 
cdnUrl|| 
;|| 
if}} 
(}} 
cdnUrlDebug}} 
!=}} 
null}} #
)}}# $
{~~ 
UrlCdnDebug 
= 
cdnUrlDebug )
;) *
}
�� 
if
�� 
(
�� 
cdnSupportsSsl
�� 
.
�� 
HasValue
�� '
)
��' (
{
�� 
CdnSupportsSsl
�� 
=
��  
cdnSupportsSsl
��! /
.
��/ 0
Value
��0 5
;
��5 6
}
�� 
return
�� 
this
�� 
;
�� 
}
�� 	
public
��  
ResourceDefinition
�� !

SetVersion
��" ,
(
��, -
string
��- 3
version
��4 ;
)
��; <
{
�� 	
if
�� 
(
�� 
!
�� 
System
�� 
.
�� 
Version
�� 
.
��  
TryParse
��  (
(
��( )
version
��) 0
,
��0 1
out
��2 5
_
��6 7
)
��7 8
)
��8 9
{
�� 
throw
�� 
new
�� 
FormatException
�� )
(
��) *
$str
��* y
)
��y z
;
��z {
}
�� 
Version
�� 
=
�� 
version
�� 
;
�� 
return
�� 
this
�� 
;
�� 
}
�� 	
public
��  
ResourceDefinition
�� !!
ShouldAppendVersion
��" 5
(
��5 6
bool
��6 :
?
��: ;
appendVersion
��< I
)
��I J
{
�� 	
AppendVersion
�� 
=
�� 
appendVersion
�� )
;
��) *
return
�� 
this
�� 
;
�� 
}
�� 	
public
��  
ResourceDefinition
�� !
SetCultures
��" -
(
��- .
params
��. 4
string
��5 ;
[
��; <
]
��< =
cultures
��> F
)
��F G
{
�� 	
Cultures
�� 
=
�� 
cultures
�� 
;
��  
return
�� 
this
�� 
;
�� 
}
�� 	
public
��  
ResourceDefinition
�� !
SetDependencies
��" 1
(
��1 2
params
��2 8
string
��9 ?
[
��? @
]
��@ A
dependencies
��B N
)
��N O
{
�� 	
if
�� 
(
�� 
Dependencies
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
Dependencies
�� 
=
�� 
new
�� "
List
��# '
<
��' (
string
��( .
>
��. /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
Dependencies
�� 
.
�� 
AddRange
�� !
(
��! "
dependencies
��" .
)
��. /
;
��/ 0
return
�� 
this
�� 
;
�� 
}
�� 	
public
��  
ResourceDefinition
�� !
SetInnerContent
��" 1
(
��1 2
string
��2 8
innerContent
��9 E
)
��E F
{
�� 	
InnerContent
�� 
=
�� 
innerContent
�� '
;
��' (
return
�� 
this
�� 
;
�� 
}
�� 	
public
��  
ResourceDefinition
�� !
SetPosition
��" -
(
��- .
ResourcePosition
��. >
position
��? G
)
��G H
{
�� 	
Position
�� 
=
�� 
position
�� 
;
��  
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 

TagBuilder
�� 
GetTagBuilder
�� '
(
��' (
RequireSettings
��( 7
settings
��8 @
,
��@ A
string
�� 
applicationPath
�� "
,
��" #"
IFileVersionProvider
��  !
fileVersionProvider
��! 4
)
��4 5
{
�� 	
string
�� 
url
�� 
,
�� #
filePathAttributeName
�� -
=
��. /
null
��0 4
;
��4 5
if
�� 
(
�� 
settings
�� 
.
�� 
	DebugMode
�� "
)
��" #
{
�� 
url
�� 
=
�� 
settings
�� 
.
�� 
CdnMode
�� &
?
�� 
Coalesce
�� 
(
�� 
UrlCdnDebug
�� *
,
��* +
UrlDebug
��, 4
,
��4 5
UrlCdn
��6 <
,
��< =
Url
��> A
)
��A B
:
�� 
Coalesce
�� 
(
�� 
UrlDebug
�� '
,
��' (
Url
��) ,
,
��, -
UrlCdnDebug
��. 9
,
��9 :
UrlCdn
��; A
)
��A B
;
��B C
}
�� 
else
�� 
{
�� 
url
�� 
=
�� 
settings
�� 
.
�� 
CdnMode
�� &
?
�� 
Coalesce
�� 
(
�� 
UrlCdn
�� %
,
��% &
Url
��' *
,
��* +
UrlCdnDebug
��, 7
,
��7 8
UrlDebug
��9 A
)
��A B
:
�� 
Coalesce
�� 
(
�� 
Url
�� "
,
��" #
UrlDebug
��$ ,
,
��, -
UrlCdn
��. 4
,
��4 5
UrlCdnDebug
��6 A
)
��A B
;
��B C
}
�� 
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
url
��% (
)
��( )
)
��) *
{
�� 
url
�� 
=
�� 
null
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
settings
��& .
.
��. /
Culture
��/ 6
)
��6 7
)
��7 8
{
�� 
var
�� 
nearestCulture
�� "
=
��# $ 
FindNearestCulture
��% 7
(
��7 8
settings
��8 @
.
��@ A
Culture
��A H
)
��H I
;
��I J
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
nearestCulture
��* 8
)
��8 9
)
��9 :
{
�� 
url
�� 
=
�� 
Path
�� 
.
�� 
ChangeExtension
�� .
(
��. /
url
��/ 2
,
��2 3
nearestCulture
��4 B
+
��C D
Path
��E I
.
��I J
GetExtension
��J V
(
��V W
url
��W Z
)
��Z [
)
��[ \
;
��\ ]
}
�� 
}
�� 
if
�� 
(
�� 
url
�� 
!=
�� 
null
�� 
&&
�� 
url
�� "
.
��" #

StartsWith
��# -
(
��- .
$str
��. 2
,
��2 3
StringComparison
��4 D
.
��D E
Ordinal
��E L
)
��L M
)
��M N
{
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	_basePath
��* 3
)
��3 4
)
��4 5
{
�� 
url
�� 
=
�� 
	_basePath
�� #
+
��$ %
url
��& )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� 
url
�� 
=
�� 
applicationPath
�� )
+
��* +
url
��, /
.
��/ 0
	Substring
��0 9
(
��9 :
$num
��: ;
)
��; <
;
��< =
}
�� 
}
�� 
if
�� 
(
�� 
url
�� 
!=
�� 
null
�� 
&&
�� 
(
��  
(
��  !
settings
��! )
.
��) *
AppendVersion
��* 7
.
��7 8
HasValue
��8 @
&&
��A C
settings
��D L
.
��L M
AppendVersion
��M Z
==
��[ ]
true
��^ b
)
��b c
||
��d f
(
�� 
!
�� 
settings
�� 
.
�� 
AppendVersion
�� (
.
��( )
HasValue
��) 1
&&
��2 4
AppendVersion
��5 B
==
��C E
true
��F J
)
��J K
)
��K L
)
��L M
{
�� 
url
�� 
=
�� !
fileVersionProvider
�� )
.
��) *"
AddFileVersionToPath
��* >
(
��> ?
applicationPath
��? N
,
��N O
url
��P S
)
��S T
;
��T U
}
�� 
if
�� 
(
�� 
url
�� 
!=
�� 
null
�� 
&&
�� 
!
��  
settings
��  (
.
��( )
	DebugMode
��) 2
&&
��3 5
!
��6 7
String
��7 =
.
��= >
IsNullOrEmpty
��> K
(
��K L
settings
��L T
.
��T U

CdnBaseUrl
��U _
)
��_ `
&&
��a c
!
�� 
url
�� 
.
�� 

StartsWith
�� 
(
��  
$str
��  *
,
��* +
StringComparison
��, <
.
��< =
OrdinalIgnoreCase
��= N
)
��N O
&&
��P R
!
�� 
url
�� 
.
�� 

StartsWith
�� 
(
��  
$str
��  )
,
��) *
StringComparison
��+ ;
.
��; <
OrdinalIgnoreCase
��< M
)
��M N
&&
��O Q
!
�� 
url
�� 
.
�� 

StartsWith
�� 
(
��  
$str
��  $
,
��$ %
StringComparison
��& 6
.
��6 7
OrdinalIgnoreCase
��7 H
)
��H I
&&
��J L
!
�� 
url
�� 
.
�� 

StartsWith
�� 
(
��  
$str
��  )
,
��) *
StringComparison
��+ ;
.
��; <
OrdinalIgnoreCase
��< M
)
��M N
)
��N O
{
�� 
url
�� 
=
�� 
settings
�� 
.
�� 

CdnBaseUrl
�� )
+
��* +
url
��, /
;
��/ 0
}
�� 

TagBuilder
�� 

tagBuilder
�� !
;
��! "
switch
�� 
(
�� 
Type
�� 
)
�� 
{
�� 
case
�� 
$str
�� 
:
�� 

tagBuilder
�� 
=
��  
new
��! $

TagBuilder
��% /
(
��/ 0
$str
��0 8
)
��8 9
;
��9 :
if
�� 
(
�� 
settings
��  
.
��  !

Attributes
��! +
.
��+ ,
Count
��, 1
>
��2 3
$num
��4 5
)
��5 6
{
�� 
foreach
�� 
(
��  !
var
��! $
kv
��% '
in
��( *
settings
��+ 3
.
��3 4

Attributes
��4 >
)
��> ?
{
�� 

tagBuilder
�� &
.
��& '

Attributes
��' 1
.
��1 2
Add
��2 5
(
��5 6
kv
��6 8
)
��8 9
;
��9 :
}
�� 
}
�� #
filePathAttributeName
�� )
=
��* +
$str
��, 1
;
��1 2
break
�� 
;
�� 
case
�� 
$str
�� !
:
��! "
if
�� 
(
�� 
url
�� 
==
�� 
null
�� #
&&
��$ &
InnerContent
��' 3
!=
��4 6
null
��7 ;
)
��; <
{
�� 

tagBuilder
�� "
=
��# $
new
��% (

TagBuilder
��) 3
(
��3 4
$str
��4 ;
)
��; <
{
�� 

Attributes
�� &
=
��' (
{
��) *
{
��  !
$str
��" (
,
��( )
$str
��* 4
}
��5 6
}
�� 
}
�� 
;
�� 
}
�� 
else
�� 
{
�� 

tagBuilder
�� "
=
��# $
new
��% (

TagBuilder
��) 3
(
��3 4
$str
��4 :
)
��: ;
{
�� 
TagRenderMode
�� )
=
��* +
TagRenderMode
��, 9
.
��9 :
SelfClosing
��: E
,
��E F

Attributes
�� &
=
��' (
{
��) *
{
��  !
$str
��" (
,
��( )
$str
��* 4
}
��5 6
,
��6 7
{
��  !
$str
��" '
,
��' (
$str
��) 5
}
��6 7
}
�� 
}
�� 
;
�� #
filePathAttributeName
�� -
=
��. /
$str
��0 6
;
��6 7
}
�� 
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 

tagBuilder
�� 
=
��  
new
��! $

TagBuilder
��% /
(
��/ 0
$str
��0 6
)
��6 7
{
��8 9
TagRenderMode
��: G
=
��H I
TagRenderMode
��J W
.
��W X
SelfClosing
��X c
}
��d e
;
��e f#
filePathAttributeName
�� )
=
��* +
$str
��, 2
;
��2 3
break
�� 
;
�� 
default
�� 
:
�� 

tagBuilder
�� 
=
��  
new
��! $

TagBuilder
��% /
(
��/ 0
$str
��0 6
)
��6 7
{
��8 9
TagRenderMode
��: G
=
��H I
TagRenderMode
��J W
.
��W X
SelfClosing
��X c
}
��d e
;
��e f
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
CdnIntegrity
��& 2
)
��2 3
&&
��4 6
url
��7 :
!=
��; =
null
��> B
&&
��C E
url
��F I
==
��J L
UrlCdn
��M S
)
��S T
{
�� 

tagBuilder
�� 
.
�� 

Attributes
�� %
[
��% &
$str
��& 1
]
��1 2
=
��3 4
CdnIntegrity
��5 A
;
��A B

tagBuilder
�� 
.
�� 

Attributes
�� %
[
��% &
$str
��& 3
]
��3 4
=
��5 6
$str
��7 B
;
��B C
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� *
(
��* +
CdnDebugIntegrity
��+ <
)
��< =
&&
��> @
url
��A D
!=
��E G
null
��H L
&&
��M O
url
��P S
==
��T V
UrlCdnDebug
��W b
)
��b c
{
�� 

tagBuilder
�� 
.
�� 

Attributes
�� %
[
��% &
$str
��& 1
]
��1 2
=
��3 4
CdnDebugIntegrity
��5 F
;
��F G

tagBuilder
�� 
.
�� 

Attributes
�� %
[
��% &
$str
��& 3
]
��3 4
=
��5 6
$str
��7 B
;
��B C
}
�� 
if
�� 
(
�� 

Attributes
�� 
!=
�� 
null
�� "
)
��" #
{
�� 

tagBuilder
�� 
.
�� 
MergeAttributes
�� *
(
��* +

Attributes
��+ 5
)
��5 6
;
��6 7
}
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
HasAttributes
�� &
)
��& '
{
�� 

tagBuilder
�� 
.
�� 
MergeAttributes
�� *
(
��* +
settings
��+ 3
.
��3 4

Attributes
��4 >
)
��> ?
;
��? @
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
url
��& )
)
��) *
&&
��+ -#
filePathAttributeName
��. C
!=
��D F
null
��G K
)
��K L
{
�� 

tagBuilder
�� 
.
�� 
MergeAttribute
�� )
(
��) *#
filePathAttributeName
��* ?
,
��? @
url
��A D
,
��D E
true
��F J
)
��J K
;
��K L
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� *
(
��* +
InnerContent
��+ 7
)
��7 8
)
��8 9
{
�� 

tagBuilder
�� 
.
�� 
	InnerHtml
�� $
.
��$ %

AppendHtml
��% /
(
��/ 0
InnerContent
��0 <
)
��< =
;
��= >
}
�� 
return
�� 

tagBuilder
�� 
;
�� 
}
�� 	
public
�� 
string
��  
FindNearestCulture
�� (
(
��( )
string
��) /
culture
��0 7
)
��7 8
{
�� 	
if
�� 
(
�� 
Cultures
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
var
�� 
selectedIndex
�� 
=
�� 
Array
��  %
.
��% &
IndexOf
��& -
(
��- .
Cultures
��. 6
,
��6 7
culture
��8 ?
)
��? @
;
��@ A
if
�� 
(
�� 
selectedIndex
�� 
!=
��  
-
��! "
$num
��" #
)
��# $
{
�� 
return
�� 
Cultures
�� 
[
��  
selectedIndex
��  -
]
��- .
;
��. /
}
�� 
var
�� 
cultureInfo
�� 
=
�� 
new
�� !
CultureInfo
��" -
(
��- .
culture
��. 5
)
��5 6
;
��6 7
if
�� 
(
�� 
cultureInfo
�� 
.
�� 
Parent
�� "
.
��" #
Name
��# '
!=
��( *
culture
��+ 2
)
��2 3
{
�� 
var
�� 
selectedCulture
�� #
=
��$ % 
FindNearestCulture
��& 8
(
��8 9
cultureInfo
��9 D
.
��D E
Parent
��E K
.
��K L
Name
��L P
)
��P Q
;
��Q R
if
�� 
(
�� 
selectedCulture
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
selectedCulture
�� *
;
��* +
}
�� 
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
bool
�� 
Equals
�� #
(
��# $
object
��$ *
obj
��+ .
)
��. /
{
�� 	
if
�� 
(
�� 
obj
�� 
==
�� 
null
�� 
||
�� 
obj
�� "
.
��" #
GetType
��# *
(
��* +
)
��+ ,
!=
��- /
GetType
��0 7
(
��7 8
)
��8 9
)
��9 :
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
var
�� 
that
�� 
=
�� 
(
��  
ResourceDefinition
�� *
)
��* +
obj
��+ .
;
��. /
return
�� 
String
�� 
.
�� 
Equals
��  
(
��  !
that
��! %
.
��% &
Name
��& *
,
��* +
Name
��, 0
)
��0 1
&&
��2 4
String
�� 
.
�� 
Equals
�� 
(
�� 
that
�� "
.
��" #
Type
��# '
,
��' (
Type
��) -
)
��- .
&&
��/ 1
String
�� 
.
�� 
Equals
�� 
(
�� 
that
�� "
.
��" #
Version
��# *
,
��* +
Version
��, 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
override
�� 
int
�� 
GetHashCode
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
HashCode
�� 
.
�� 
Combine
�� #
(
��# $
Name
��$ (
,
��( )
Type
��* .
)
��. /
;
��/ 0
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% &

NoInlining
��& 0
)
��0 1
]
��1 2
private
�� 
static
�� 
void
�� (
ThrowArgumentNullException
�� 6
(
��6 7
string
��7 =
	paramName
��> G
)
��G H
{
�� 	
throw
�� 
new
�� #
ArgumentNullException
�� +
(
��+ ,
	paramName
��, 5
)
��5 6
;
��6 7
}
�� 	
}
�� 
}�� �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceLocation.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

enum 
ResourceLocation  
{ 
Unspecified 
, 
Foot 
, 
Head 
, 
Inline 
}		 
}

 �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceManagementOptions.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class %
ResourceManagementOptions *
{ 
public 
bool 
UseCdn 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 

CdnBaseUrl

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
bool 
	DebugMode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Culture 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
AppendVersion !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
true2 6
;6 7
public 
string 
ContentBasePath %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
String6 <
.< =
Empty= B
;B C
public 
HashSet 
< 
ResourceManifest '
>' (
ResourceManifests) :
{; <
get= @
;@ A
}B C
=D E
newF I
HashSetJ Q
<Q R
ResourceManifestR b
>b c
(c d
)d e
;e f
} 
} �"
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceManifest.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class 
ResourceManifest !
{ 
private 
readonly 

Dictionary #
<# $
string$ *
,* +
IDictionary, 7
<7 8
string8 >
,> ?
IList@ E
<E F
ResourceDefinitionF X
>X Y
>Y Z
>Z [

_resources\ f
=g h
newi l

Dictionarym w
<w x
stringx ~
,~ 
IDictionary
� �
<
� �
string
� �
,
� �
IList
� �
<
� � 
ResourceDefinition
� �
>
� �
>
� �
>
� �
(
� �
StringComparer
� �
.
� �
OrdinalIgnoreCase
� �
)
� �
;
� �
public

 
virtual

 
ResourceDefinition

 )
DefineResource

* 8
(

8 9
string

9 ?
resourceType

@ L
,

L M
string

N T
resourceName

U a
)

a b
{ 	
var 

definition 
= 
new  
ResourceDefinition! 3
(3 4
this4 8
,8 9
resourceType: F
,F G
resourceNameH T
)T U
;U V
var 
	resources 
= 
GetResources (
(( )
resourceType) 5
)5 6
;6 7
if 
( 
! 
	resources 
. 
ContainsKey &
(& '
resourceName' 3
)3 4
)4 5
{ 
	resources 
[ 
resourceName &
]& '
=( )
new* -
List. 2
<2 3
ResourceDefinition3 E
>E F
(F G
)G H
;H I
} 
	resources 
[ 
resourceName "
]" #
.# $
Add$ '
(' (

definition( 2
)2 3
;3 4
return 

definition 
; 
} 	
public 
ResourceDefinition !
DefineScript" .
(. /
string/ 5
name6 :
): ;
{ 	
return 
DefineResource !
(! "
$str" *
,* +
name, 0
)0 1
;1 2
} 	
public 
ResourceDefinition !
DefineStyle" -
(- .
string. 4
name5 9
)9 :
{ 	
return 
DefineResource !
(! "
$str" .
,. /
name0 4
)4 5
;5 6
} 	
public!! 
virtual!! 
IDictionary!! "
<!!" #
string!!# )
,!!) *
IList!!+ 0
<!!0 1
ResourceDefinition!!1 C
>!!C D
>!!D E
GetResources!!F R
(!!R S
string!!S Y
resourceType!!Z f
)!!f g
{"" 	
if## 
(## 
!## 

_resources## 
.## 
TryGetValue## '
(##' (
resourceType##( 4
,##4 5
out##6 9
var##: =
	resources##> G
)##G H
)##H I
{$$ 

_resources%% 
[%% 
resourceType%% '
]%%' (
=%%) *
	resources%%+ 4
=%%5 6
new%%7 :

Dictionary%%; E
<%%E F
string%%F L
,%%L M
IList%%N S
<%%S T
ResourceDefinition%%T f
>%%f g
>%%g h
(%%h i
StringComparer%%i w
.%%w x
OrdinalIgnoreCase	%%x �
)
%%� �
;
%%� �
}&& 
return(( 
	resources(( 
;(( 
})) 	
public++ 
string++ 
BasePath++ 
{++  
get++! $
;++$ %
}++& '
=++( )
$str++* ,
;++, -
},, 
}-- �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceOptions.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
;( )
public 
class 
ResourceOptions 
{ 
public 

ResourceDebugMode 
ResourceDebugMode .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 

bool 
UseCdn 
{ 
get 
; 
set !
;! "
}# $
public		 

string		 

CdnBaseUrl		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 

bool

 
AppendVersion

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
=

, -
true

. 2
;

2 3
} �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourcePosition.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

enum 
ResourcePosition  
{ 
ByDependency 
, 
First 
, 
Last 
} 
}		 �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceRequiredContext.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class #
ResourceRequiredContext (
{		 
private

 
const

 
string

 
NotIE

 "
=

# $
$str

% *
;

* +
public 
ResourceDefinition !
Resource" *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
RequireSettings 
Settings '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public  
IFileVersionProvider #
FileVersionProvider$ 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
void 
WriteTo 
( 

TextWriter &
writer' -
,- .
string/ 5
appPath6 =
)= >
{ 	
var 

tagBuilder 
= 
Resource %
.% &
GetTagBuilder& 3
(3 4
Settings4 <
,< =
appPath> E
,E F
FileVersionProviderG Z
)Z [
;[ \
if 
( 
String 
. 
IsNullOrEmpty $
($ %
Settings% -
.- .
	Condition. 7
)7 8
)8 9
{ 

tagBuilder 
. 
WriteTo "
(" #
writer# )
,) *
NullHtmlEncoder+ :
.: ;
Default; B
)B C
;C D
return 
; 
} 
if 
( 
Settings 
. 
	Condition "
==# %
NotIE& +
)+ ,
{ 
writer 
. 
Write 
( 
$str '
+( )
Settings* 2
.2 3
	Condition3 <
+= >
$str? F
)F G
;G H
} 
else 
{ 
writer   
.   
Write   
(   
$str   '
+  ( )
Settings  * 2
.  2 3
	Condition  3 <
+  = >
$str  ? C
)  C D
;  D E
}!! 

tagBuilder## 
.## 
WriteTo## 
(## 
writer## %
,##% &
NullHtmlEncoder##' 6
.##6 7
Default##7 >
)##> ?
;##? @
if%% 
(%% 
!%% 
string%% 
.%% 
IsNullOrEmpty%% %
(%%% &
Settings%%& .
.%%. /
	Condition%%/ 8
)%%8 9
)%%9 :
{&& 
if'' 
('' 
Settings'' 
.'' 
	Condition'' &
==''' )
NotIE''* /
)''/ 0
{(( 
writer)) 
.)) 
Write))  
())  !
$str))! 3
)))3 4
;))4 5
}** 
else++ 
{,, 
writer-- 
.-- 
Write--  
(--  !
$str--! /
)--/ 0
;--0 1
}.. 
}// 
}00 	
}11 
}22 