ú)
ÜC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\CultureDictionary.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class 
CultureDictionary "
:# $
IEnumerable% 0
<0 1#
CultureDictionaryRecord1 H
>H I
{ 
public 
CultureDictionary  
(  !
string! '
cultureName( 3
,3 4%
PluralizationRuleDelegate5 N

pluralRuleO Y
)Y Z
{ 	
Translations 
= 
new 

Dictionary )
<) *&
CultureDictionaryRecordKey* D
,D E
stringF L
[L M
]M N
>N O
(O P
)P Q
;Q R
CultureName 
= 
cultureName %
;% &

PluralRule 
= 

pluralRule #
;# $
} 	
public 
string 
CultureName !
{" #
get$ '
;' (
}) *
public!! %
PluralizationRuleDelegate!! (

PluralRule!!) 3
{!!4 5
get!!6 9
;!!9 :
}!!; <
public(( 
string(( 
this(( 
[(( &
CultureDictionaryRecordKey(( 5
key((6 9
]((9 :
=>((; =
this((> B
[((B C
key((C F
,((F G
null((H L
]((L M
;((M N
public00 
string00 
this00 
[00 &
CultureDictionaryRecordKey00 5
key006 9
,009 :
int00; >
?00> ?
count00@ E
]00E F
{11 	
get22 
{33 
if44 
(44 
!44 
Translations44 !
.44! "
TryGetValue44" -
(44- .
key44. 1
,441 2
out443 6
var447 :
translations44; G
)44G H
)44H I
{55 
return66 
null66 
;66  
}77 
var99 

pluralForm99 
=99  
count99! &
.99& '
HasValue99' /
?990 1

PluralRule992 <
(99< =
count99= B
.99B C
Value99C H
)99H I
:99J K
$num99L M
;99M N
if:: 
(:: 

pluralForm:: 
>=:: !
translations::" .
.::. /
Length::/ 5
)::5 6
{;; 
throw<< 
new<< '
PluralFormNotFoundException<< 9
(<<9 :
$"<<: <
$str<<< I
{<<I J

pluralForm<<J T
}<<T U
$str<<U r
{<<r s
key<<s v
}<<v w
$str	<<w Å
{
<<Å Ç
CultureName
<<Ç ç
}
<<ç é
$str
<<é ò
"
<<ò ô
,
<<ô ö
new
<<õ û

PluralForm
<<ü ©
(
<<© ™
key
<<™ ≠
,
<<≠ Æ

pluralForm
<<Ø π
,
<<π ∫
CultureInfo
<<ª ∆
.
<<∆ «
GetCultureInfo
<<« ’
(
<<’ ÷
CultureName
<<÷ ·
)
<<· ‚
)
<<‚ „
)
<<„ ‰
;
<<‰ Â
}== 
return?? 
translations?? #
[??# $

pluralForm??$ .
]??. /
;??/ 0
}@@ 
}AA 	
publicFF 
IDictionaryFF 
<FF &
CultureDictionaryRecordKeyFF 5
,FF5 6
stringFF7 =
[FF= >
]FF> ?
>FF? @
TranslationsFFA M
{FFN O
getFFP S
;FFS T
}FFU V
publicLL 
voidLL 
MergeTranslationsLL %
(LL% &
IEnumerableLL& 1
<LL1 2#
CultureDictionaryRecordLL2 I
>LLI J
recordsLLK R
)LLR S
{MM 	
foreachNN 
(NN 
varNN 
recordNN 
inNN  "
recordsNN# *
)NN* +
{OO 
TranslationsPP 
[PP 
recordPP #
.PP# $
KeyPP$ '
]PP' (
=PP) *
recordPP+ 1
.PP1 2
TranslationsPP2 >
;PP> ?
}QQ 
}RR 	
publicTT 
IEnumeratorTT 
<TT #
CultureDictionaryRecordTT 2
>TT2 3
GetEnumeratorTT4 A
(TTA B
)TTB C
{UU 	
foreachVV 
(VV 
varVV 
itemVV 
inVV  
TranslationsVV! -
)VV- .
{WW 
yieldXX 
returnXX 
newXX  #
CultureDictionaryRecordXX! 8
(XX8 9
itemXX9 =
.XX= >
KeyXX> A
,XXA B
nullXXC G
,XXG H
itemXXI M
.XXM N
ValueXXN S
)XXS T
;XXT U
}YY 
}ZZ 	
IEnumerator\\ 
IEnumerable\\ 
.\\  
GetEnumerator\\  -
(\\- .
)\\. /
=>\\0 2
GetEnumerator\\3 @
(\\@ A
)\\A B
;\\B C
}]] 
}^^ ¥
åC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\CultureDictionaryRecord.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class #
CultureDictionaryRecord (
{		 
public #
CultureDictionaryRecord &
(& '
string' -
	messageId. 7
,7 8
params9 ?
string@ F
[F G
]G H
translationsI U
)U V
: 
this 
( 
	messageId 
, 
null "
," #
translations$ 0
)0 1
{ 	
} 	
public #
CultureDictionaryRecord &
(& '
string' -
	messageId. 7
,7 8
string9 ?
context@ G
,G H
stringI O
[O P
]P Q
translationsR ^
)^ _
{ 	
Key 
= 
GetKey 
( 
	messageId "
," #
context$ +
)+ ,
;, -
Translations 
= 
translations '
;' (
} 	
public$$ &
CultureDictionaryRecordKey$$ )
Key$$* -
{$$. /
get$$0 3
;$$3 4
}$$5 6
public)) 
string)) 
[)) 
])) 
Translations)) $
{))% &
get))' *
;))* +
})), -
public11 
static11 &
CultureDictionaryRecordKey11 0
GetKey111 7
(117 8
string118 >
	messageId11? H
,11H I
string11J P
context11Q X
)11X Y
{22 	
if33 
(33 
String33 
.33 
IsNullOrEmpty33 $
(33$ %
	messageId33% .
)33. /
)33/ 0
{44 
throw55 
new55 
ArgumentException55 +
(55+ ,
$str55, G
,55G H
nameof55I O
(55O P
	messageId55P Y
)55Y Z
)55Z [
;55[ \
}66 
return88 
new88 &
CultureDictionaryRecordKey88 1
(881 2
	messageId882 ;
,88; <
context88= D
)88D E
;88E F
}99 	
}:: 
};; º
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\CultureDictionaryRecordKey.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

struct &
CultureDictionaryRecordKey ,
:- .

IEquatable/ 9
<9 :&
CultureDictionaryRecordKey: T
>T U
{		 
private

 
readonly

 
string

 

_messageId

  *
;

* +
private 
readonly 
string 
_context  (
;( )
public &
CultureDictionaryRecordKey )
() *
string* 0
	messageId1 :
): ;
:< =
this> B
(B C
	messageIdC L
,L M
nullN R
)R S
{ 	
} 	
public &
CultureDictionaryRecordKey )
() *
string* 0
	messageId1 :
,: ;
string< B
contextC J
)J K
{ 	

_messageId 
= 
	messageId "
;" #
_context 
= 
context 
; 
} 	
public!! 
static!! 
implicit!! 
operator!! '
string!!( .
(!!. /&
CultureDictionaryRecordKey!!/ I&
cultureDictionaryRecordKey!!J d
)!!d e
=>"" &
cultureDictionaryRecordKey"" )
."") *
ToString""* 2
(""2 3
)""3 4
;""4 5
public%% 
override%% 
bool%% 
Equals%% #
(%%# $
object%%$ *
obj%%+ .
)%%. /
{&& 	
if'' 
('' 
obj'' 
is'' &
CultureDictionaryRecordKey'' 1
other''2 7
)''7 8
{(( 
return)) 
Equals)) 
()) 
other)) #
)))# $
;))$ %
}** 
return,, 
false,, 
;,, 
}-- 	
public00 
bool00 
Equals00 
(00 &
CultureDictionaryRecordKey00 5
other006 ;
)00; <
=>11 
String11 
.11 
Equals11 
(11 

_messageId11 '
,11' (
other11) .
.11. /

_messageId11/ 9
)119 :
&&11; =
String11> D
.11D E
Equals11E K
(11K L
_context11L T
,11T U
other11V [
.11[ \
_context11\ d
)11d e
;11e f
public44 
override44 
int44 
GetHashCode44 '
(44' (
)44( )
=>44* ,
HashCode44- 5
.445 6
Combine446 =
(44= >

_messageId44> H
,44H I
_context44J R
)44R S
;44S T
public66 
override66 
string66 
ToString66 '
(66' (
)66( )
=>77 
String77 
.77 
IsNullOrEmpty77 #
(77# $
_context77$ ,
)77, -
?88 

_messageId88 
:99 
_context99 
.99 
ToLowerInvariant99 +
(99+ ,
)99, -
+99. /
$str990 3
+994 5

_messageId996 @
;99@ A
}:: 
};; ˛
ïC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\Extensions\CultureInfoExtensions.cs
	namespace 	
OrchardCore
 
. 
Localization "
;" #
public 
static 
class !
CultureInfoExtensions )
{		 
public 

static 
string  
GetLanguageDirection -
(- .
this. 2
CultureInfo3 >
culture? F
)F G
=>H J
cultureK R
.R S
IsRightToLeftS `
(` a
)a b
? 	
LanguageDirection
 
. 
RTL 
: 	
LanguageDirection
 
. 
LTR 
;  
public 

static 
bool 
IsRightToLeft $
($ %
this% )
CultureInfo* 5
culture6 =
)= >
=>? A
cultureB I
.I J
TextInfoJ R
.R S
IsRightToLeftS `
;` a
} ∂
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\Extensions\HtmlLocalizerExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
." #
Localization# /
{ 
public		 

static		 
class		 #
HtmlLocalizerExtensions		 /
{

 
public 
static 
LocalizedHtmlString )
Plural* 0
(0 1
this1 5
IHtmlLocalizer6 D
	localizerE N
,N O
intP S
countT Y
,Y Z
string[ a
singularb j
,j k
stringl r
plurals y
,y z
params	{ Å
object
Ç à
[
à â
]
â ä
	arguments
ã î
)
î ï
{ 	
if 
( 
plural 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
plural7 =
)= >
,> ?
$str	@ π
)
π ∫
;
∫ ª
} 
return 
	localizer 
[ 
singular %
,% &
new' *!
PluralizationArgument+ @
{A B
CountC H
=I J
countK P
,P Q
FormsR W
=X Y
newZ ]
[] ^
]^ _
{` a
singularb j
,j k
plurall r
}s t
,t u
	Argumentsv 
=
Ä Å
	arguments
Ç ã
}
å ç
]
ç é
;
é è
} 	
public$$ 
static$$ 
LocalizedHtmlString$$ )
Plural$$* 0
($$0 1
this$$1 5
IHtmlLocalizer$$6 D
	localizer$$E N
,$$N O
int$$P S
count$$T Y
,$$Y Z
string$$[ a
[$$a b
]$$b c
pluralForms$$d o
,$$o p
params$$q w
object$$x ~
[$$~ 
]	$$ Ä
	arguments
$$Å ä
)
$$ä ã
{%% 	
if&& 
(&& 
pluralForms&& 
==&& 
null&& #
)&&# $
{'' 
throw(( 
new(( !
ArgumentNullException(( /
(((/ 0
nameof((0 6
(((6 7
pluralForms((7 B
)((B C
,((C D
$str	((E ƒ
)
((ƒ ≈
;
((≈ ∆
})) 
if++ 
(++ 
pluralForms++ 
.++ 
Length++ "
==++# %
$num++& '
)++' (
{,, 
throw-- 
new-- 
ArgumentException-- +
(--+ ,
$str	--, “
,
--“ ”
nameof
--‘ ⁄
(
--⁄ €
pluralForms
--€ Ê
)
--Ê Á
)
--Á Ë
;
--Ë È
}.. 
var00 
name00 
=00 
pluralForms00 "
[00" #
$num00# $
]00$ %
;00% &
return22 
	localizer22 
[22 
name22 !
,22! "
new22# &!
PluralizationArgument22' <
{22= >
Count22? D
=22E F
count22G L
,22L M
Forms22N S
=22T U
pluralForms22V a
,22a b
	Arguments22c l
=22m n
	arguments22o x
}22y z
]22z {
;22{ |
}33 	
}44 
}55 «
ôC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\Extensions\StringLocalizerExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
Localization +
{ 
public		 

static		 
class		 %
StringLocalizerExtensions		 1
{

 
public 
static 
LocalizedString %
Plural& ,
(, -
this- 1
IStringLocalizer2 B
	localizerC L
,L M
intN Q
countR W
,W X
stringY _
singular` h
,h i
stringj p
pluralq w
,w x
paramsy 
object
Ä Ü
[
Ü á
]
á à
	arguments
â í
)
í ì
{ 	
if 
( 
plural 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
plural7 =
)= >
,> ?
$str	@ π
)
π ∫
;
∫ ª
} 
return 
	localizer 
[ 
singular %
,% &
new' *!
PluralizationArgument+ @
{A B
CountC H
=I J
countK P
,P Q
FormsR W
=X Y
newZ ]
[] ^
]^ _
{` a
singularb j
,j k
plurall r
}s t
,t u
	Argumentsv 
=
Ä Å
	arguments
Ç ã
}
å ç
]
ç é
;
é è
} 	
public$$ 
static$$ 
LocalizedString$$ %
Plural$$& ,
($$, -
this$$- 1
IStringLocalizer$$2 B
	localizer$$C L
,$$L M
int$$N Q
count$$R W
,$$W X
string$$Y _
[$$_ `
]$$` a
pluralForms$$b m
,$$m n
params$$o u
object$$v |
[$$| }
]$$} ~
	arguments	$$ à
)
$$à â
{%% 	
if&& 
(&& 
pluralForms&& 
==&& 
null&& #
)&&# $
{'' 
throw(( 
new(( !
ArgumentNullException(( /
(((/ 0
nameof((0 6
(((6 7
pluralForms((7 B
)((B C
,((C D
$str	((E ƒ
)
((ƒ ≈
;
((≈ ∆
})) 
if++ 
(++ 
pluralForms++ 
.++ 
Length++ "
==++# %
$num++& '
)++' (
{,, 
throw-- 
new-- 
ArgumentException-- +
(--+ ,
$str	--, “
,
--“ ”
nameof
--‘ ⁄
(
--⁄ €
pluralForms
--€ Ê
)
--Ê Á
)
--Á Ë
;
--Ë È
}.. 
return00 
	localizer00 
[00 
pluralForms00 (
[00( )
$num00) *
]00* +
,00+ ,
new00- 0!
PluralizationArgument001 F
{00G H
Count00I N
=00O P
count00Q V
,00V W
Forms00X ]
=00^ _
pluralForms00` k
,00k l
	Arguments00m v
=00w x
	arguments	00y Ç
}
00É Ñ
]
00Ñ Ö
;
00Ö Ü
}11 	
}22 
}33 Í
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\Extensions\ViewLocalizerExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
." #
Localization# /
{ 
public		 

static		 
class		 #
ViewLocalizerExtensions		 /
{

 
public 
static 
LocalizedHtmlString )
Plural* 0
(0 1
this1 5
IViewLocalizer6 D
	localizerE N
,N O
intP S
countT Y
,Y Z
string[ a
singularb j
,j k
stringl r
plurals y
,y z
params	{ Å
object
Ç à
[
à â
]
â ä
	arguments
ã î
)
î ï
{ 	
if 
( 
plural 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
plural7 =
)= >
,> ?
$str	@ π
)
π ∫
;
∫ ª
} 
return 
	localizer 
[ 
singular %
,% &
new' *!
PluralizationArgument+ @
{A B
CountC H
=I J
countK P
,P Q
FormsR W
=X Y
newZ ]
[] ^
]^ _
{` a
singularb j
,j k
plurall r
}s t
,t u
	Argumentsv 
=
Ä Å
	arguments
Ç ã
}
å ç
]
ç é
;
é è
} 	
public%% 
static%% 
LocalizedHtmlString%% )
Plural%%* 0
(%%0 1
this%%1 5
IViewLocalizer%%6 D
	localizer%%E N
,%%N O
int%%P S
count%%T Y
,%%Y Z
string%%[ a
[%%a b
]%%b c
pluralForms%%d o
,%%o p
params%%q w
object%%x ~
[%%~ 
]	%% Ä
	arguments
%%Å ä
)
%%ä ã
{&& 	
if'' 
('' 
pluralForms'' 
=='' 
null'' #
)''# $
{(( 
throw)) 
new)) !
ArgumentNullException)) /
())/ 0
nameof))0 6
())6 7
pluralForms))7 B
)))B C
,))C D
$str	))E ƒ
)
))ƒ ≈
;
))≈ ∆
}** 
if,, 
(,, 
pluralForms,, 
.,, 
Length,, "
==,,# %
$num,,& '
),,' (
{-- 
throw.. 
new.. 
ArgumentException.. +
(..+ ,
$str	.., “
,
..“ ”
nameof
..‘ ⁄
(
..⁄ €
pluralForms
..€ Ê
)
..Ê Á
)
..Á Ë
;
..Ë È
}// 
return11 
	localizer11 
[11 
pluralForms11 (
[11( )
$num11) *
]11* +
,11+ ,
new11- 0!
PluralizationArgument111 F
{11G H
Count11I N
=11O P
count11Q V
,11V W
Forms11X ]
=11^ _
pluralForms11` k
,11k l
	Arguments11m v
=11w x
	arguments	11y Ç
}
11É Ñ
]
11Ñ Ö
;
11Ö Ü
}22 	
}33 
}44 ƒ
ñC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\ILocalizationFileLocationProvider.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public		 

	interface		 -
!ILocalizationFileLocationProvider		 6
{

 
IEnumerable 
< 
	IFileInfo 
> 
GetLocations +
(+ ,
string, 2
cultureName3 >
)> ?
;? @
} 
} ˝
âC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\ILocalizationManager.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface  
ILocalizationManager )
{		 
CultureDictionary 
GetDictionary '
(' (
CultureInfo( 3
culture4 ;
); <
;< =
} 
} ¶
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\IPluralRuleProvider.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface 
IPluralRuleProvider (
{		 
int 
Order 
{ 
get 
; 
} 
bool 

TryGetRule 
( 
CultureInfo #
culture$ +
,+ ,
out- 0%
PluralizationRuleDelegate1 J
ruleK O
)O P
;P Q
} 
} 
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\IPluralStringLocalizer.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface "
IPluralStringLocalizer +
:, -
IStringLocalizer. >
{		 
( 	
LocalizedString	 
, 
object  
[  !
]! "
)" #
GetTranslation$ 2
(2 3
string3 9
name: >
,> ?
params@ F
objectG M
[M N
]N O
	argumentsP Y
)Y Z
;Z [
} 
} ∏
âC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\ITranslationProvider.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface  
ITranslationProvider )
{ 
void 
LoadTranslations 
( 
string $
cultureName% 0
,0 1
CultureDictionary2 C

dictionaryD N
)N O
;O P
} 
} á
ÜC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\LanguageDirection.cs
	namespace 	
OrchardCore
 
. 
Localization "
;" #
public 
static 
class 
LanguageDirection %
{ 
public 

static 
readonly 
string !
LTR" %
=& '
$str( -
;- .
public 

static 
readonly 
string !
RTL" %
=& '
$str( -
;- .
} ∫
öC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\OrchardCoreRequestLocalizationOptions.cs
	namespace 	
OrchardCore
 
. 
Localization "
;" #
public 
class 1
%OrchardCoreRequestLocalizationOptions 2
:3 4&
RequestLocalizationOptions5 O
{ 
private 
readonly 
bool 
_useUserOverride *
;* +
public 
1
%OrchardCoreRequestLocalizationOptions 0
(0 1
)1 2
:3 4
this5 9
(9 : 
ignoreSystemSettings: N
:N O
falseP U
)U V
{ 
} 
public 
1
%OrchardCoreRequestLocalizationOptions 0
(0 1
bool1 5 
ignoreSystemSettings6 J
)J K
:L M
baseN R
(R S
)S T
{ 
_useUserOverride 
= 
!  
ignoreSystemSettings 0
;0 1
} 
public   

new   1
%OrchardCoreRequestLocalizationOptions   4 
AddSupportedCultures  5 I
(  I J
params  J P
string  Q W
[  W X
]  X Y
cultures  Z b
)  b c
{!! 
var"" 
supportedCultures"" 
="" 
new""  #
List""$ (
<""( )
CultureInfo"") 4
>""4 5
(""5 6
)""6 7
;""7 8
foreach$$ 
($$ 
var$$ 
culture$$ 
in$$ 
cultures$$  (
)$$( )
{%% 	
supportedCultures&& 
.&& 
Add&& !
(&&! "
new&&" %
CultureInfo&&& 1
(&&1 2
culture&&2 9
,&&9 :
_useUserOverride&&; K
)&&K L
)&&L M
;&&M N
}'' 	
SupportedCultures)) 
=)) 
supportedCultures)) -
;))- .
return++ 
this++ 
;++ 
},, 
public// 

new// 1
%OrchardCoreRequestLocalizationOptions// 4"
AddSupportedUICultures//5 K
(//K L
params//L R
string//S Y
[//Y Z
]//Z [

uiCultures//\ f
)//f g
{00 
var11 
supportedUICultures11 
=11  !
new11" %
List11& *
<11* +
CultureInfo11+ 6
>116 7
(117 8
)118 9
;119 :
foreach22 
(22 
var22 
culture22 
in22 

uiCultures22  *
)22* +
{33 	
supportedUICultures44 
.44  
Add44  #
(44# $
new44$ '
CultureInfo44( 3
(443 4
culture444 ;
,44; <
_useUserOverride44= M
)44M N
)44N O
;44O P
}55 	
SupportedUICultures77 
=77 
supportedUICultures77 1
;771 2
return99 
this99 
;99 
}:: 
public== 

new== 1
%OrchardCoreRequestLocalizationOptions== 4
SetDefaultCulture==5 F
(==F G
string==G M
defaultCulture==N \
)==\ ]
{>> !
DefaultRequestCulture?? 
=?? 
new??  #
RequestCulture??$ 2
(??2 3
new??3 6
CultureInfo??7 B
(??B C
defaultCulture??C Q
,??Q R
_useUserOverride??S c
)??c d
)??d e
;??e f
returnAA 
thisAA 
;AA 
}BB 
}CC Ü
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\PluralForm.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class 

PluralForm 
{		 
public 

PluralForm 
( 
string  
key! $
,$ %
int& )
form* .
). /
: 
this 
( 
key 
, 
form 
, 
CultureInfo )
.) *
CurrentUICulture* :
): ;
{ 	
} 	
public 

PluralForm 
( 
string  
key! $
,$ %
int& )
form* .
,. /
CultureInfo0 ;
culture< C
)C D
{ 	
Key 
= 
key 
; 
Form 
= 
form 
; 
Culture 
= 
culture 
; 
}   	
public%% 
CultureInfo%% 
Culture%% "
{%%# $
get%%% (
;%%( )
}%%* +
public** 
int** 
Form** 
{** 
get** 
;** 
}**  
public// 
string// 
Key// 
{// 
get// 
;//  
}//! "
}00 
}11 ◊
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\PluralFormNotFoundException.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class '
PluralFormNotFoundException ,
:- .
	Exception/ 8
{		 
public '
PluralFormNotFoundException *
(* +
)+ ,
{ 	
} 	
public '
PluralFormNotFoundException *
(* +
string+ 1
message2 9
)9 :
:; <
base= A
(A B
messageB I
)I J
{ 	
} 	
public   '
PluralFormNotFoundException   *
(  * +
string  + 1
message  2 9
,  9 :

PluralForm  ; E
form  F J
)  J K
:  L M
base  N R
(  R S
message  S Z
)  Z [
{!! 	
Form"" 
="" 
form"" 
;"" 
}## 	
public** '
PluralFormNotFoundException** *
(*** +
string**+ 1
message**2 9
,**9 :
	Exception**; D
innerException**E S
)**S T
:**U V
base**W [
(**[ \
message**\ c
,**c d
innerException**e s
)**s t
{++ 	
}-- 	
public22 

PluralForm22 
Form22 
{22  
get22! $
;22$ %
}22& '
}33 
}44 Ô
äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\PluralizationArgument.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

struct !
PluralizationArgument '
{ 
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
[ 
] 
Forms 
{ 
get  #
;# $
set% (
;( )
}* +
public 
object 
[ 
] 
	Arguments !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} µ
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Localization.Abstractions\PluralizationRuleDelegate.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

delegate 
int %
PluralizationRuleDelegate 1
(1 2
int2 5
count6 ;
); <
;< =
}		 