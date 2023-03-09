ñ
|C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Liquid.Abstractions\ILiquidFilter.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

	interface 
ILiquidFilter "
{ 
	ValueTask		 
<		 

FluidValue		 
>		 
ProcessAsync		 *
(		* +

FluidValue		+ 5
input		6 ;
,		; <
FilterArguments		= L
	arguments		M V
,		V W!
LiquidTemplateContext		X m
context		n u
)		u v
;		v w
}

 
} ùI
ÖC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Liquid.Abstractions\ILiquidTemplateManager.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{		 
public 

	interface "
ILiquidTemplateManager +
{ 
Task 
< 
string 
> 
RenderStringAsync &
(& '
string' -
template. 6
,6 7
TextEncoder8 C
encoderD K
,K L
objectM S
modelT Y
,Y Z
IEnumerable[ f
<f g
KeyValuePairg s
<s t
stringt z
,z {

FluidValue	| Ü
>
Ü á
>
á à

properties
â ì
)
ì î
;
î ï
Task 
< 
IHtmlContent 
> "
RenderHtmlContentAsync 1
(1 2
string2 8
template9 A
,A B
TextEncoderC N
encoderO V
,V W
objectX ^
model_ d
,d e
IEnumerablef q
<q r
KeyValuePairr ~
<~ 
string	 Ö
,
Ö Ü

FluidValue
á ë
>
ë í
>
í ì

properties
î û
)
û ü
;
ü †
Task 
RenderAsync 
( 
string 
template  (
,( )

TextWriter* 4
writer5 ;
,; <
TextEncoder= H
encoderI P
,P Q
objectR X
modelY ^
,^ _
IEnumerable` k
<k l
KeyValuePairl x
<x y
stringy 
,	 Ä

FluidValue
Å ã
>
ã å
>
å ç

properties
é ò
)
ò ô
;
ô ö
bool!! 
Validate!! 
(!! 
string!! 
template!! %
,!!% &
out!!' *
IEnumerable!!+ 6
<!!6 7
string!!7 =
>!!= >
errors!!? E
)!!E F
;!!F G
}"" 
public$$ 

static$$ 
class$$ +
LiquidTemplateManagerExtensions$$ 7
{%% 
public&& 
static&& 
Task&& 
<&& 
string&& !
>&&! "
RenderStringAsync&&# 4
(&&4 5
this&&5 9"
ILiquidTemplateManager&&: P
manager&&Q X
,&&X Y
string&&Z `
template&&a i
,&&i j
TextEncoder&&k v
encoder&&w ~
)&&~ 
=>'' 
manager'' 
.'' 
RenderStringAsync'' (
(''( )
template'') 1
,''1 2
encoder''3 :
,'': ;
model''< A
:''A B
null''C G
,''G H

properties''I S
:''S T
null''U Y
)''Y Z
;''Z [
public)) 
static)) 
Task)) 
RenderStringAsync)) ,
()), -
this))- 1"
ILiquidTemplateManager))2 H
manager))I P
,))P Q
string))R X
template))Y a
,))a b

TextWriter))c m
writer))n t
,))t u
TextEncoder	))v Å
encoder
))Ç â
)
))â ä
=>** 
manager** 
.** 
RenderAsync** "
(**" #
template**# +
,**+ ,
writer**- 3
,**3 4
encoder**5 <
,**< =
model**> C
:**C D
null**E I
,**I J

properties**K U
:**U V
null**W [
)**[ \
;**\ ]
public,, 
static,, 
Task,, 
<,, 
string,, !
>,,! "
RenderStringAsync,,# 4
(,,4 5
this,,5 9"
ILiquidTemplateManager,,: P
manager,,Q X
,,,X Y
string,,Z `
template,,a i
,,,i j
TextEncoder,,k v
encoder,,w ~
,,,~ 
object
,,Ä Ü
model
,,á å
)
,,å ç
=>-- 
manager-- 
.-- 
RenderStringAsync-- (
(--( )
template--) 1
,--1 2
encoder--3 :
,--: ;
model--< A
,--A B

properties--C M
:--M N
null--O S
)--S T
;--T U
public// 
static// 
Task// 
RenderStringAsync// ,
(//, -
this//- 1"
ILiquidTemplateManager//2 H
manager//I P
,//P Q
string//R X
template//Y a
,//a b

TextWriter//c m
writer//n t
,//t u
TextEncoder	//v Å
encoder
//Ç â
,
//â ä
object
//ã ë
model
//í ó
)
//ó ò
=>00 
manager00 
.00 
RenderAsync00 "
(00" #
template00# +
,00+ ,
writer00- 3
,003 4
encoder005 <
,00< =
model00> C
,00C D

properties00E O
:00O P
null00Q U
)00U V
;00V W
public22 
static22 
Task22 
<22 
string22 !
>22! "
RenderStringAsync22# 4
(224 5
this225 9"
ILiquidTemplateManager22: P
manager22Q X
,22X Y
string22Z `
template22a i
,22i j
TextEncoder22k v
encoder22w ~
,22~ 
IEnumerable
22Ä ã
<
22ã å
KeyValuePair
22å ò
<
22ò ô
string
22ô ü
,
22ü †

FluidValue
22° ´
>
22´ ¨
>
22¨ ≠

properties
22Æ ∏
)
22∏ π
=>33 
manager33 
.33 
RenderStringAsync33 (
(33( )
template33) 1
,331 2
encoder333 :
,33: ;
model33< A
:33A B
null33C G
,33G H

properties33I S
)33S T
;33T U
public55 
static55 
Task55 
RenderStringAsync55 ,
(55, -
this55- 1"
ILiquidTemplateManager552 H
manager55I P
,55P Q
string55R X
template55Y a
,55a b

TextWriter55c m
writer55n t
,55t u
TextEncoder	55v Å
encoder
55Ç â
,
55â ä
IEnumerable
55ã ñ
<
55ñ ó
KeyValuePair
55ó £
<
55£ §
string
55§ ™
,
55™ ´

FluidValue
55¨ ∂
>
55∂ ∑
>
55∑ ∏

properties
55π √
)
55√ ƒ
=>66 
manager66 
.66 
RenderAsync66 "
(66" #
template66# +
,66+ ,
writer66- 3
,663 4
encoder665 <
,66< =
model66> C
:66C D
null66E I
,66I J

properties66K U
)66U V
;66V W
public88 
static88 
Task88 
<88 
IHtmlContent88 '
>88' ("
RenderHtmlContentAsync88) ?
(88? @
this88@ D"
ILiquidTemplateManager88E [
manager88\ c
,88c d
string88e k
template88l t
,88t u
TextEncoder	88v Å
encoder
88Ç â
)
88â ä
=>99 
manager99 
.99 "
RenderHtmlContentAsync99 -
(99- .
template99. 6
,996 7
encoder998 ?
,99? @
model99A F
:99F G
null99H L
,99L M

properties99N X
:99X Y
null99Z ^
)99^ _
;99_ `
public;; 
static;; 
Task;; 
<;; 
IHtmlContent;; '
>;;' ("
RenderHtmlContentAsync;;) ?
(;;? @
this;;@ D"
ILiquidTemplateManager;;E [
manager;;\ c
,;;c d
string;;e k
template;;l t
,;;t u
TextEncoder	;;v Å
encoder
;;Ç â
,
;;â ä
object
;;ã ë
model
;;í ó
)
;;ó ò
=><< 
manager<< 
.<< "
RenderHtmlContentAsync<< -
(<<- .
template<<. 6
,<<6 7
encoder<<8 ?
,<<? @
model<<A F
,<<F G

properties<<H R
:<<R S
null<<T X
)<<X Y
;<<Y Z
public>> 
static>> 
Task>> 
<>> 
IHtmlContent>> '
>>>' ("
RenderHtmlContentAsync>>) ?
(>>? @
this>>@ D"
ILiquidTemplateManager>>E [
manager>>\ c
,>>c d
string>>e k
template>>l t
,>>t u
TextEncoder	>>v Å
encoder
>>Ç â
,
>>â ä
IEnumerable
>>ã ñ
<
>>ñ ó
KeyValuePair
>>ó £
<
>>£ §
string
>>§ ™
,
>>™ ´

FluidValue
>>¨ ∂
>
>>∂ ∑
>
>>∑ ∏

properties
>>π √
)
>>√ ƒ
=>?? 
manager?? 
.?? "
RenderHtmlContentAsync?? -
(??- .
template??. 6
,??6 7
encoder??8 ?
,??? @
model??A F
:??F G
null??H L
,??L M

properties??N X
)??X Y
;??Y Z
}@@ 
}AA ⁄
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Liquid.Abstractions\LiquidContentAccessor.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

class !
LiquidContentAccessor &
{ 
} 
}		 √
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Liquid.Abstractions\LiquidFilterDelegateResolver.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public		 

class		 (
LiquidFilterDelegateResolver		 -
<		- .
TLiquidFilter		. ;
>		; <
where		= B
TLiquidFilter		C P
:		Q R
class		S X
,		X Y
ILiquidFilter		Z g
{

 
public 
	ValueTask 
< 

FluidValue #
># $
ResolveAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
contexto v
)v w
{ 	
var 
ctx 
= 
context 
as  !
LiquidTemplateContext! 6
;6 7
if 
( 
ctx 
== 
null 
) 
{ 
throw 
new %
InvalidOperationException 3
(3 4
$str4 n
)n o
;o p
} 
var 
services 
= 
ctx 
. 
Services '
;' (
var 
filter 
= 
services !
.! "
GetRequiredService" 4
<4 5
TLiquidFilter5 B
>B C
(C D
)D E
;E F
return 
filter 
. 
ProcessAsync &
(& '
input' ,
,, -
	arguments. 7
,7 8
ctx9 <
)< =
;= >
} 	
} 
} å
ÖC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Liquid.Abstractions\LiquidPropertyAccessor.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

class "
LiquidPropertyAccessor '
{ 
private 
readonly 
Func 
< 
string $
,$ %!
LiquidTemplateContext& ;
,; <
Task= A
<A B

FluidValueB L
>L M
>M N
_getterO V
;V W
private 
readonly !
LiquidTemplateContext .
_context/ 7
;7 8
public "
LiquidPropertyAccessor %
(% &!
LiquidTemplateContext& ;
context< C
,C D
FuncE I
<I J
stringJ P
,P Q!
LiquidTemplateContextR g
,g h
Taski m
<m n

FluidValuen x
>x y
>y z
getter	{ Å
)
Å Ç
{ 	
_getter 
= 
getter 
; 
_context 
= 
context 
; 
} 	
public 
Task 
< 

FluidValue 
> 
GetValueAsync  -
(- .
string. 4

identifier5 ?
)? @
{ 	
return 
_getter 
( 

identifier %
,% &
_context' /
)/ 0
;0 1
} 	
} 
} ˝
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Liquid.Abstractions\LiquidTemplateContext.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

class !
LiquidTemplateContext &
:' (
TemplateContext) 8
{ 
public		 
const		 
int		 
MaxShapeRecursions		 +
=		, -
$num		. /
;		/ 0
public !
LiquidTemplateContext $
($ %
IServiceProvider% 5
services6 >
,> ?
TemplateOptions@ O
optionsP W
)W X
:Y Z
base[ _
(_ `
options` g
)g h
{ 	
Services 
= 
services 
;  
} 	
public 
IServiceProvider 
Services  (
{) *
get+ .
;. /
}0 1
public 
ViewContext 
ViewContext &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
IsInitialized !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
ShapeRecursions "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} –
äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Liquid.Abstractions\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Liquid 
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddLiquidFilter) 8
<8 9
TLiquidFilter9 F
>F G
(G H
thisH L
IServiceCollectionM _
services` h
,h i
stringj p
nameq u
)u v
wherew |
TLiquidFilter	} ä
:
ã å
class
ç í
,
í ì
ILiquidFilter
î °
{		 	
services

 
.

 
	Configure

 
<

 
TemplateOptions

 .
>

. /
(

/ 0
o

0 1
=>

2 4
o

5 6
.

6 7
Filters

7 >
.

> ?
	AddFilter

? H
(

H I
name

I M
,

M N
new

O R(
LiquidFilterDelegateResolver

S o
<

o p
TLiquidFilter

p }
>

} ~
(

~ 
)	

 Ä
.


Ä Å
ResolveAsync


Å ç
)


ç é
)


é è
;


è ê
services 
. 
	AddScoped 
< 
TLiquidFilter ,
>, -
(- .
). /
;/ 0
return 
services 
; 
} 	
} 
} 