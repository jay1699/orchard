�5
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ApplicationViewFileProvider.cs
	namespace

 	
OrchardCore


 
.

 
Mvc

 
{ 
public 

class '
ApplicationViewFileProvider ,
:- .
IFileProvider/ <
{ 
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public '
ApplicationViewFileProvider *
(* +
IApplicationContext+ >
applicationContext? Q
)Q R
{ 	
_applicationContext 
=  !
applicationContext" 4
;4 5
} 	
private 
Application 
Application '
=>( *
_applicationContext+ >
.> ?
Application? J
;J K
public 
IDirectoryContents ! 
GetDirectoryContents" 6
(6 7
string7 =
subpath> E
)E F
{ 	
if&& 
(&& 
subpath&& 
==&& 
null&& 
)&&  
{'' 
return(( %
NotFoundDirectoryContents(( 0
.((0 1
	Singleton((1 :
;((: ;
})) 
var++ 
folder++ 
=++ 
NormalizePath++ &
(++& '
subpath++' .
)++. /
;++/ 0
if.. 
(.. 
folder.. 
==.. 
Application.. %
...% &

ModulePath..& 0
)..0 1
{// 
return11 
new11 %
PhysicalDirectoryContents11 4
(114 5
Application115 @
.11@ A
Path11A E
)11E F
;11F G
}22 
else44 
if44 
(44 
folder44 
.44 

StartsWith44 &
(44& '
Application44' 2
.442 3

ModuleRoot443 =
,44= >
StringComparison44? O
.44O P
Ordinal44P W
)44W X
)44X Y
{55 
var77 
	tokenizer77 
=77 
new77  #
StringTokenizer77$ 3
(773 4
folder774 :
,77: ;
new77< ?
char77@ D
[77D E
]77E F
{77G H
$char77I L
}77M N
)77N O
;77O P
if88 
(88 
	tokenizer88 
.88 
Any88 !
(88! "
s88" #
=>88$ &
s88' (
==88) +
$str88, 3
||884 6
s887 8
==889 ;
$str88< C
)88C D
)88D E
{99 
var;; 
folderSubPath;; %
=;;& '
folder;;( .
.;;. /
	Substring;;/ 8
(;;8 9
Application;;9 D
.;;D E

ModuleRoot;;E O
.;;O P
Length;;P V
);;V W
;;;W X
return>> 
new>> %
PhysicalDirectoryContents>> 8
(>>8 9
Application>>9 D
.>>D E
Root>>E I
+>>J K
folderSubPath>>L Y
)>>Y Z
;>>Z [
}?? 
}@@ 
returnBB %
NotFoundDirectoryContentsBB ,
.BB, -
	SingletonBB- 6
;BB6 7
}CC 	
publicEE 
	IFileInfoEE 
GetFileInfoEE $
(EE$ %
stringEE% +
subpathEE, 3
)EE3 4
{FF 	
ifGG 
(GG 
subpathGG 
==GG 
nullGG 
)GG  
{HH 
returnII 
newII 
NotFoundFileInfoII +
(II+ ,
subpathII, 3
)II3 4
;II4 5
}JJ 
varLL 
pathLL 
=LL 
NormalizePathLL $
(LL$ %
subpathLL% ,
)LL, -
;LL- .
ifOO 
(OO 
pathOO 
.OO 

StartsWithOO 
(OO  
ApplicationOO  +
.OO+ ,

ModuleRootOO, 6
,OO6 7
StringComparisonOO8 H
.OOH I
OrdinalOOI P
)OOP Q
)OOQ R
{PP 
varRR 
fileSubPathRR 
=RR  !
pathRR" &
.RR& '
	SubstringRR' 0
(RR0 1
ApplicationRR1 <
.RR< =

ModuleRootRR= G
.RRG H
LengthRRH N
)RRN O
;RRO P
returnUU 
newUU 
PhysicalFileInfoUU +
(UU+ ,
newUU, /
FileInfoUU0 8
(UU8 9
ApplicationUU9 D
.UUD E
RootUUE I
+UUJ K
fileSubPathUUL W
)UUW X
)UUX Y
;UUY Z
}VV 
returnXX 
newXX 
NotFoundFileInfoXX '
(XX' (
subpathXX( /
)XX/ 0
;XX0 1
}YY 	
public[[ 
IChangeToken[[ 
Watch[[ !
([[! "
string[[" (
filter[[) /
)[[/ 0
{\\ 	
if]] 
(]] 
filter]] 
==]] 
null]] 
)]] 
{^^ 
return__ 
NullChangeToken__ &
.__& '
	Singleton__' 0
;__0 1
}`` 
varbb 
pathbb 
=bb 
NormalizePathbb $
(bb$ %
filterbb% +
)bb+ ,
;bb, -
ifee 
(ee 
pathee 
.ee 

StartsWithee 
(ee  
Applicationee  +
.ee+ ,

ModuleRootee, 6
,ee6 7
StringComparisonee8 H
.eeH I
OrdinaleeI P
)eeP Q
)eeQ R
{ff 
varhh 
fileSubPathhh 
=hh  !
pathhh" &
.hh& '
	Substringhh' 0
(hh0 1
Applicationhh1 <
.hh< =

ModuleRoothh= G
.hhG H
LengthhhH N
)hhN O
;hhO P
returnkk 
newkk "
PollingFileChangeTokenkk 1
(kk1 2
newkk2 5
FileInfokk6 >
(kk> ?
Applicationkk? J
.kkJ K
RootkkK O
+kkP Q
fileSubPathkkR ]
)kk] ^
)kk^ _
;kk_ `
}ll 
returnnn 
NullChangeTokennn "
.nn" #
	Singletonnn# ,
;nn, -
}oo 	
privateqq 
stringqq 
NormalizePathqq $
(qq$ %
stringqq% +
pathqq, 0
)qq0 1
{rr 	
returnss 
pathss 
.ss 
Replacess 
(ss  
$charss  $
,ss$ %
$charss& )
)ss) *
.ss* +
Trimss+ /
(ss/ 0
$charss0 3
)ss3 4
;ss4 5
}tt 	
}uu 
}vv �
{C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\DevelopmentViewsFeature.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class #
DevelopmentViewsFeature (
:) *
ViewsFeature+ 7
{ 
} 
} � 
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Extensions\ControllerExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
{ 
public 

static 
class  
ControllerExtensions ,
{ 
public 
static 
ActionResult "
ChallengeOrForbid# 4
(4 5
this5 9

Controller: D

controllerE O
)O P
=> 

controller 
. 
User 
? 
.  
Identity  (
?( )
.) *
IsAuthenticated* 9
??: <
false= B
?C D
(E F
ActionResultF R
)R S

controllerS ]
.] ^
Forbid^ d
(d e
)e f
:g h

controlleri s
.s t
	Challenget }
(} ~
)~ 
;	 �
public 
static 
ActionResult "
ChallengeOrForbid# 4
(4 5
this5 9

Controller: D

controllerE O
,O P
paramsQ W
stringX ^
[^ _
]_ `!
authenticationSchemesa v
)v w
=> 

controller 
. 
User 
? 
.  
Identity  (
?( )
.) *
IsAuthenticated* 9
??: <
false= B
?C D
(E F
ActionResultF R
)R S

controllerS ]
.] ^
Forbid^ d
(d e!
authenticationSchemese z
)z {
:| }

controller	~ �
.
� �
	Challenge
� �
(
� �#
authenticationSchemes
� �
)
� �
;
� �
public$$ 
static$$ 
ActionResult$$ "
InternalServerError$$# 6
($$6 7
this$$7 ;

Controller$$< F

controller$$G Q
,$$Q R
object$$S Y
value$$Z _
=$$` a
null$$b f
)$$f g
=>%% 

controller%% 
.%% 

StatusCode%% $
(%%$ %
(%%% &
int%%& )
)%%) *
HttpStatusCode%%* 8
.%%8 9
InternalServerError%%9 L
,%%L M
value%%N S
)%%S T
;%%T U
public-- 
static-- 
ActionResult-- "
LocalRedirect--# 0
(--0 1
this--1 5

Controller--6 @

controller--A K
,--K L
string--M S
localUrl--T \
,--\ ]
bool--^ b
	escapeUrl--c l
)--l m
{.. 	
if// 
(// 
!// 
	escapeUrl// 
)// 
{00 
return11 

controller11 !
.11! "
LocalRedirect11" /
(11/ 0
localUrl110 8
)118 9
;119 :
}22 
return44 

controller44 
.44 
LocalRedirect44 +
(44+ ,
localUrl44, 4
.444 5
ToUriComponents445 D
(44D E
)44E F
)44F G
;44G H
}55 	
public>> 
static>> 
ActionResult>> "
Redirect>># +
(>>+ ,
this>>, 0

Controller>>1 ;

controller>>< F
,>>F G
string>>H N
url>>O R
,>>R S
bool>>T X
	escapeUrl>>Y b
)>>b c
{?? 	
if@@ 
(@@ 
!@@ 
	escapeUrl@@ 
)@@ 
{AA 
returnBB 

controllerBB !
.BB! "
RedirectBB" *
(BB* +
urlBB+ .
)BB. /
;BB/ 0
}CC 
returnEE 

controllerEE 
.EE 
RedirectEE &
(EE& '
urlEE' *
.EE* +
ToUriComponentsEE+ :
(EE: ;
)EE; <
)EE< =
;EE= >
}FF 	
}GG 
}HH �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Extensions\ModelStateDictionaryExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
ModelBinding &
{ 
public 

static 
class *
ModelStateDictionaryExtensions 6
{		 
public

 
static

 
void

 
AddModelError

 (
(

( )
this

) - 
ModelStateDictionary

. B

modelState

C M
,

M N

ModelError

O Y
error

Z _
)

_ `
{ 	
if 
( 

modelState 
is 
null "
)" #
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7

modelState7 A
)A B
)B C
;C D
} 
if 
( 
error 
is 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
error7 <
)< =
)= >
;> ?
} 

modelState 
. 
AddModelError $
($ %
error% *
.* +
Key+ .
,. /
error0 5
.5 6
Message6 =
)= >
;> ?
} 	
public 
static 
void 
AddModelErrors )
() *
this* . 
ModelStateDictionary/ C

modelStateD N
,N O
IEnumerableP [
<[ \

ModelError\ f
>f g
errorsh n
)n o
{ 	
if 
( 

modelState 
is 
null "
)" #
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7

modelState7 A
)A B
)B C
;C D
} 
if   
(   
errors   
is   
null   
)   
{!! 
throw"" 
new"" !
ArgumentNullException"" /
(""/ 0
nameof""0 6
(""6 7
errors""7 =
)""= >
)""> ?
;""? @
}## 
if%% 
(%% 
errors%% 
.%% 
Any%% 
(%% 
)%% 
)%% 
{&& 
foreach'' 
('' 
var'' 
error'' "
in''# %
errors''& ,
)'', -
{(( 

modelState)) 
.)) 
AddModelError)) ,
()), -
error))- 2
)))2 3
;))3 4
}** 
}++ 
},, 	
}-- 
}.. �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Extensions\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class (
OrchardCoreBuilderExtensions 4
{ 
public 
static 
OrchardCoreBuilder (
AddMvc) /
(/ 0
this0 4
OrchardCoreBuilder5 G
builderH O
)O P
{ 	
builder 
. 
ConfigureServices %
(% &

collection& 0
=>1 3
{ 

collection 
. 
AddSingleton '
<' ("
IEndpointAddressScheme( >
<> ?
RouteValuesAddress? Q
>Q R
,R S)
ShellRouteValuesAddressSchemeT q
>q r
(r s
)s t
;t u
} 
, 
order 
: 
int 
. 
MaxValue 
-  !
$num" %
)% &
;& '
return 
builder 
. 
RegisterStartup *
<* +
Startup+ 2
>2 3
(3 4
)4 5
;5 6
} 	
} 
} �$
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\FileProviders\FileProviderExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
FileProviders '
{ 
public		 

static		 
class		 "
FileProviderExtensions		 .
{

 
public 
static 
IEnumerable !
<! "
string" (
>( )
GetViewFilePaths* :
(: ;
this; ?
IFileProvider@ M
fileProviderN Z
,Z [
string 
subPath 
, 
string 
[ 
] 

extensions 
,  
string 
viewsFolder 
=  
null! %
,% &
bool 
inViewsFolder 
=  
false! &
,& '
bool 
inDepth 
= 
true 
)  
{ 	
var 
contents 
= 
fileProvider '
.' ( 
GetDirectoryContents( <
(< =
subPath= D
)D E
;E F
if 
( 
contents 
== 
null  
)  !
{ 
yield 
break 
; 
} 
if 
( 
! 
inViewsFolder 
&& !
viewsFolder" -
!=. 0
null1 5
&&6 8
inDepth9 @
)@ A
{ 
var 
viewsFolderInfo #
=$ %
contents& .
.. /
FirstOrDefault/ =
(= >
c> ?
=>@ B
cC D
.D E
NameE I
==J L
viewsFolderM X
&&Y [
c\ ]
.] ^
IsDirectory^ i
)i j
;j k
if 
( 
viewsFolderInfo #
!=$ &
null' +
)+ ,
{ 
foreach 
( 
var  
filePath! )
in* ,
GetViewFilePaths- =
(= >
fileProvider> J
,J K
$"L N
{N O
subPathO V
}V W
$strW X
{X Y
viewsFolderInfoY h
.h i
Namei m
}m n
"n o
,o p

extensionsq {
,{ |
viewsFolder	} �
,
� �
inViewsFolder
� �
:
� �
true
� �
)
� �
)
� �
{   
yield!! 
return!! $
filePath!!% -
;!!- .
}"" 
yield$$ 
break$$ 
;$$  
}%% 
}&& 
foreach(( 
((( 
var(( 
content((  
in((! #
contents(($ ,
)((, -
{)) 
if** 
(** 
content** 
.** 
IsDirectory** '
&&**( *
inDepth**+ 2
)**2 3
{++ 
foreach,, 
(,, 
var,,  
filePath,,! )
in,,* ,
GetViewFilePaths,,- =
(,,= >
fileProvider,,> J
,,,J K
$",,L N
{,,N O
subPath,,O V
},,V W
$str,,W X
{,,X Y
content,,Y `
.,,` a
Name,,a e
},,e f
",,f g
,,,g h

extensions,,i s
,,,s t
viewsFolder	,,u �
,
,,� �
inViewsFolder
,,� �
)
,,� �
)
,,� �
{-- 
yield.. 
return.. $
filePath..% -
;..- .
}// 
}00 
else11 
if11 
(11 
inViewsFolder11 &
)11& '
{22 
if33 
(33 
Array33 
.33 
IndexOf33 %
(33% &

extensions33& 0
,330 1
Path332 6
.336 7
GetExtension337 C
(33C D
content33D K
.33K L
Name33L P
)33P Q
)33Q R
!=33S U
-33V W
$num33W X
)33X Y
{44 
yield55 
return55 $
$"55% '
{55' (
subPath55( /
}55/ 0
$str550 1
{551 2
content552 9
.559 :
Name55: >
}55> ?
"55? @
;55@ A
}66 
}77 
}88 
}99 	
}:: 
};; �Z
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\LocationExpander\ComponentViewLocationExpanderProvider.cs
	namespace

 	
OrchardCore


 
.

 
Mvc

 
.

 
LocationExpander

 *
{ 
public 

class 1
%ComponentViewLocationExpanderProvider 6
:7 8)
IViewLocationExpanderProvider9 V
{ 
private 
static 
readonly 
string  &
SharedViewsPath' 6
=7 8
$str9 L
+M N
RazorViewEngineO ^
.^ _
ViewExtension_ l
;l m
private 
static 
readonly 
string  &
SharedPagesPath' 6
=7 8
$str9 L
+M N
RazorViewEngineO ^
.^ _
ViewExtension_ l
;l m
private 
static 
readonly 
string  &
[& '
]' (
RazorExtensions) 8
=9 :
new; >
[> ?
]? @
{A B
RazorViewEngineC R
.R S
ViewExtensionS `
}a b
;b c
private 
const 
string 
CacheKey %
=& '
$str( F
;F G
private 
static 
List 
< 
IExtensionInfo *
>* +&
_modulesWithComponentViews, F
;F G
private 
static 
List 
< 
IExtensionInfo *
>* ++
_modulesWithPagesComponentViews, K
;K L
private 
static 
object 
_synLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
private 
static 
bool 
_initialized (
;( )
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
ShellDescriptor (
_shellDescriptor) 9
;9 :
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
public 1
%ComponentViewLocationExpanderProvider 4
(4 50
$RazorCompilationFileProviderAccessor 0 
fileProviderAccessor1 E
,E F
IExtensionManager 
extensionManager .
,. /
ShellDescriptor 
shellDescriptor +
,+ ,
IMemoryCache 
memoryCache $
)$ %
{   	
_extensionManager!! 
=!! 
extensionManager!!  0
;!!0 1
_shellDescriptor"" 
="" 
shellDescriptor"" .
;"". /
_memoryCache## 
=## 
memoryCache## &
;##& '
if%% 
(%% 
_initialized%% 
)%% 
{&& 
return'' 
;'' 
}(( 
lock** 
(** 
_synLock** 
)** 
{++ 
if,, 
(,, 
!,, 
_initialized,, !
),,! "
{-- 
var.. %
modulesWithComponentViews.. 1
=..2 3
new..4 7
List..8 <
<..< =
IExtensionInfo..= K
>..K L
(..L M
)..M N
;..N O
var// *
modulesWithPagesComponentViews// 6
=//7 8
new//9 <
List//= A
<//A B
IExtensionInfo//B P
>//P Q
(//Q R
)//R S
;//S T
var11 
orderedModules11 &
=11' (
_extensionManager11) :
.11: ;
GetExtensions11; H
(11H I
)11I J
.22 
Where22 
(22 
e22  
=>22! #
e22$ %
.22% &
Manifest22& .
.22. /
Type22/ 3
.223 4
Equals224 :
(22: ;
$str22; C
,22C D
StringComparison22E U
.22U V
OrdinalIgnoreCase22V g
)22g h
)22h i
.33 
Reverse33  
(33  !
)33! "
;33" #
foreach55 
(55 
var55  
module55! '
in55( *
orderedModules55+ 9
)559 :
{66 
var77 )
moduleComponentsViewFilePaths77 9
=77: ; 
fileProviderAccessor77< P
.77P Q
FileProvider77Q ]
.77] ^
GetViewFilePaths77^ n
(77n o
module88 "
.88" #
SubPath88# *
+88+ ,
$str88- G
,88G H
RazorExtensions88I X
,88X Y
viewsFolder99 '
:99' (
null99) -
,99- .
inViewsFolder99/ <
:99< =
true99> B
,99B C
inDepth99D K
:99K L
true99M Q
)99Q R
;99R S
if;; 
(;; )
moduleComponentsViewFilePaths;; 9
.;;9 :
Any;;: =
(;;= >
);;> ?
);;? @
{<< %
modulesWithComponentViews== 5
.==5 6
Add==6 9
(==9 :
module==: @
)==@ A
;==A B
}>> 
var@@ .
"modulePagesComponentsViewFilePaths@@ >
=@@? @ 
fileProviderAccessor@@A U
.@@U V
FileProvider@@V b
.@@b c
GetViewFilePaths@@c s
(@@s t
moduleAA "
.AA" #
SubPathAA# *
+AA+ ,
$strAA- G
,AAG H
RazorExtensionsAAI X
,AAX Y
viewsFolderBB '
:BB' (
nullBB) -
,BB- .
inViewsFolderBB/ <
:BB< =
trueBB> B
,BBB C
inDepthBBD K
:BBK L
trueBBM Q
)BBQ R
;BBR S
ifDD 
(DD .
"modulePagesComponentsViewFilePathsDD >
.DD> ?
AnyDD? B
(DDB C
)DDC D
)DDD E
{EE *
modulesWithPagesComponentViewsFF :
.FF: ;
AddFF; >
(FF> ?
moduleFF? E
)FFE F
;FFF G
}GG 
}HH &
_modulesWithComponentViewsJJ .
=JJ/ 0%
modulesWithComponentViewsJJ1 J
;JJJ K+
_modulesWithPagesComponentViewsKK 3
=KK4 5*
modulesWithPagesComponentViewsKK6 T
;KKT U
_initializedMM  
=MM! "
trueMM# '
;MM' (
}NN 
}OO 
}PP 	
publicRR 
intRR 
PriorityRR 
=>RR 
$numRR  
;RR  !
publicUU 
voidUU 
PopulateValuesUU "
(UU" #'
ViewLocationExpanderContextUU# >
contextUU? F
)UUF G
{VV 	
}WW 	
publicZZ 
virtualZZ 
IEnumerableZZ "
<ZZ" #
stringZZ# )
>ZZ) *
ExpandViewLocationsZZ+ >
(ZZ> ?'
ViewLocationExpanderContextZZ? Z
contextZZ[ b
,ZZb c
IEnumerable[[? J
<[[J K
string[[K Q
>[[Q R
viewLocations[[S `
)[[` a
{\\ 	
if]] 
(]] 
context]] 
.]] 
AreaName]]  
==]]! #
null]]$ (
)]]( )
{^^ 
return__ 
viewLocations__ $
;__$ %
}`` 
varbb 
resultbb 
=bb 
newbb 
Listbb !
<bb! "
stringbb" (
>bb( )
(bb) *
)bb* +
;bb+ ,
ifdd 
(dd 
contextdd 
.dd 
ViewNamedd  
.dd  !

StartsWithdd! +
(dd+ ,
$strdd, 9
,dd9 :
StringComparisondd; K
.ddK L
OrdinalddL S
)ddS T
)ddT U
{ee 
ifff 
(ff 
!ff 
_memoryCacheff !
.ff! "
TryGetValueff" -
(ff- .
CacheKeyff. 6
,ff6 7
outff8 ;
stringff< B
[ffB C
]ffC D(
moduleComponentViewLocationsffE a
)ffa b
)ffb c
{gg 
varhh 

enabledIdshh "
=hh# $
_extensionManagerhh% 6
.hh6 7
GetFeatureshh7 B
(hhB C
)hhC D
.hhD E
WherehhE J
(hhJ K
fhhK L
=>hhM O
_shellDescriptorhhP `
.ii 
Featuresii !
.ii! "
Anyii" %
(ii% &
sfii& (
=>ii) +
sfii, .
.ii. /
Idii/ 1
==ii2 4
fii5 6
.ii6 7
Idii7 9
)ii9 :
)ii: ;
.ii; <
Selectii< B
(iiB C
fiiC D
=>iiE G
fiiH I
.iiI J
	ExtensioniiJ S
.iiS T
IdiiT V
)iiV W
.iiW X
	ToHashSetiiX a
(iia b
)iib c
;iic d
varkk 
enabledExtensionIdskk +
=kk, -
_extensionManagerkk. ?
.ll 
GetExtensionsll &
(ll& '
)ll' (
.mm 
Wheremm 
(mm 
emm  
=>mm! #

enabledIdsmm$ .
.mm. /
Containsmm/ 7
(mm7 8
emm8 9
.mm9 :
Idmm: <
)mm< =
)mm= >
.nn 
Selectnn 
(nn  
xnn  !
=>nn" $
xnn% &
.nn& '
Idnn' )
)nn) *
.oo 
	ToHashSetoo "
(oo" #
)oo# $
;oo$ %(
moduleComponentViewLocationsqq 0
=qq1 2&
_modulesWithComponentViewsqq3 M
.rr 
Whererr 
(rr 
mrr  
=>rr! #
enabledExtensionIdsrr$ 7
.rr7 8
Containsrr8 @
(rr@ A
mrrA B
.rrB C
IdrrC E
)rrE F
)rrF G
.ss 
Selectss 
(ss  
mss  !
=>ss" $
$charss% (
+ss) *
mss+ ,
.ss, -
SubPathss- 4
+ss5 6
SharedViewsPathss7 F
)ssF G
.tt 
Concattt 
(tt  +
_modulesWithPagesComponentViewstt  ?
.uu 
Whereuu 
(uu 
muu  
=>uu! #
enabledExtensionIdsuu$ 7
.uu7 8
Containsuu8 @
(uu@ A
muuA B
.uuB C
IduuC E
)uuE F
)uuF G
.vv 
Selectvv 
(vv  
mvv  !
=>vv" $
$charvv% (
+vv) *
mvv+ ,
.vv, -
SubPathvv- 4
+vv5 6
SharedPagesPathvv7 F
)vvF G
)vvG H
.ww 
ToArrayww  
(ww  !
)ww! "
;ww" #
_memoryCacheyy  
.yy  !
Setyy! $
(yy$ %
CacheKeyyy% -
,yy- .(
moduleComponentViewLocationsyy/ K
)yyK L
;yyL M
}zz 
result|| 
.|| 
AddRange|| 
(||  (
moduleComponentViewLocations||  <
)||< =
;||= >
}}} 
result 
. 
AddRange 
( 
viewLocations )
)) *
;* +
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\LocationExpander\CompositeViewLocationExpanderProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
LocationExpander *
{ 
internal		 
class		 1
%CompositeViewLocationExpanderProvider		 8
:		9 :)
IViewLocationExpanderProvider		; X
{

 
public 
int 
Priority 
{ 	
get 
{ 
throw 
new !
NotSupportedException 1
(1 2
)2 3
;3 4
}5 6
} 	
public 
IEnumerable 
< 
string !
>! "
ExpandViewLocations# 6
(6 7'
ViewLocationExpanderContext7 R
contextS Z
,Z [
IEnumerable\ g
<g h
stringh n
>n o
viewLocationsp }
)} ~
{ 	
var 
expanderProviders !
=" #
DiscoverProviders$ 5
(5 6
context6 =
)= >
;> ?
foreach 
( 
var 
provider !
in" $
expanderProviders% 6
.6 7
OrderBy7 >
(> ?
x? @
=>A C
xD E
.E F
PriorityF N
)N O
)O P
{ 
viewLocations 
= 
provider  (
.( )
ExpandViewLocations) <
(< =
context= D
,D E
viewLocationsF S
)S T
;T U
} 
return 
viewLocations  
;  !
} 	
public 
void 
PopulateValues "
(" #'
ViewLocationExpanderContext# >
context? F
)F G
{ 	
var 
expanderProviders !
=" #
DiscoverProviders$ 5
(5 6
context6 =
)= >
;> ?
foreach   
(   
var   
provider   !
in  " $
expanderProviders  % 6
.  6 7
OrderBy  7 >
(  > ?
x  ? @
=>  A C
x  D E
.  E F
Priority  F N
)  N O
)  O P
{!! 
provider"" 
."" 
PopulateValues"" '
(""' (
context""( /
)""/ 0
;""0 1
}## 
}$$ 	
private&& 
IEnumerable&& 
<&& )
IViewLocationExpanderProvider&& 9
>&&9 :
DiscoverProviders&&; L
(&&L M'
ViewLocationExpanderContext&&M h
context&&i p
)&&p q
{'' 	
return(( 
context(( 
.)) 
ActionContext)) 
.** 
HttpContext** 
.++ 
RequestServices++  
.,, 
GetServices,, 
<,, )
IViewLocationExpanderProvider,, :
>,,: ;
(,,; <
),,< =
;,,= >
}-- 	
}.. 
}// �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\LocationExpander\IViewLocationExpanderProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
LocationExpander *
{ 
public 

	interface )
IViewLocationExpanderProvider 2
:3 4!
IViewLocationExpander5 J
{ 
int 
Priority 
{ 
get 
; 
} 
} 
}		 �e
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\LocationExpander\SharedViewLocationExpanderProvider.cs
	namespace

 	
OrchardCore


 
.

 
Mvc

 
.

 
LocationExpander

 *
{ 
public 

class .
"SharedViewLocationExpanderProvider 3
:4 5)
IViewLocationExpanderProvider6 S
{ 
private 
static 
readonly 
string  &
PageSharedViewsPath' :
=; <
$str= P
+Q R
RazorViewEngineS b
.b c
ViewExtensionc p
;p q
private 
static 
readonly 
string  &
SharedViewsPath' 6
=7 8
$str9 L
+M N
RazorViewEngineO ^
.^ _
ViewExtension_ l
;l m
private 
static 
readonly 
string  &
[& '
]' (
RazorExtensions) 8
=9 :
new; >
[> ?
]? @
{A B
RazorViewEngineC R
.R S
ViewExtensionS `
}a b
;b c
private 
const 
string 
CacheKey %
=& '
$str( C
;C D
private 
const 
string 
PageCacheKey )
=* +
$str, K
;K L
private 
static 
List 
< 
IExtensionInfo *
>* +'
_modulesWithPageSharedViews, G
;G H
private 
static 
List 
< 
IExtensionInfo *
>* +#
_modulesWithSharedViews, C
;C D
private 
static 
object 
_synLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
ShellDescriptor (
_shellDescriptor) 9
;9 :
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
public .
"SharedViewLocationExpanderProvider 1
(1 20
$RazorCompilationFileProviderAccessor 0 
fileProviderAccessor1 E
,E F
IExtensionManager 
extensionManager .
,. /
ShellDescriptor 
shellDescriptor +
,+ ,
IMemoryCache   
memoryCache   $
)  $ %
{!! 	
_extensionManager"" 
="" 
extensionManager""  0
;""0 1
_shellDescriptor## 
=## 
shellDescriptor## .
;##. /
_memoryCache$$ 
=$$ 
memoryCache$$ &
;$$& '
if&& 
(&& #
_modulesWithSharedViews&& '
!=&&( *
null&&+ /
)&&/ 0
{'' 
return(( 
;(( 
})) 
lock++ 
(++ 
_synLock++ 
)++ 
{,, 
if-- 
(-- #
_modulesWithSharedViews-- +
==--, .
null--/ 3
)--3 4
{.. 
var// 
orderedModules// &
=//' (
_extensionManager//) :
.//: ;
GetExtensions//; H
(//H I
)//I J
.00 
Where00 
(00 
e00  
=>00! #
e00$ %
.00% &
Manifest00& .
.00. /
Type00/ 3
.003 4
Equals004 :
(00: ;
$str00; C
,00C D
StringComparison00E U
.00U V
OrdinalIgnoreCase00V g
)00g h
)00h i
.11 
Reverse11  
(11  !
)11! "
;11" #
var33 &
modulesWithPageSharedViews33 2
=333 4
new335 8
List339 =
<33= >
IExtensionInfo33> L
>33L M
(33M N
)33N O
;33O P
var44 "
modulesWithSharedViews44 .
=44/ 0
new441 4
List445 9
<449 :
IExtensionInfo44: H
>44H I
(44I J
)44J K
;44K L
foreach66 
(66 
var66  
module66! '
in66( *
orderedModules66+ 9
)669 :
{77 
var88 )
modulePageSharedViewFilePaths88 9
=88: ; 
fileProviderAccessor88< P
.88P Q
FileProvider88Q ]
.88] ^
GetViewFilePaths88^ n
(88n o
module99 "
.99" #
SubPath99# *
+99+ ,
$str99- <
,99< =
RazorExtensions99> M
,99M N
viewsFolder:: '
:::' (
null::) -
,::- .
inViewsFolder::/ <
:::< =
true::> B
,::B C
inDepth::D K
:::K L
true::M Q
)::Q R
;::R S
if<< 
(<< )
modulePageSharedViewFilePaths<< 9
.<<9 :
Any<<: =
(<<= >
)<<> ?
)<<? @
{== &
modulesWithPageSharedViews>> 6
.>>6 7
Add>>7 :
(>>: ;
module>>; A
)>>A B
;>>B C
}?? 
varAA %
moduleSharedViewFilePathsAA 5
=AA6 7 
fileProviderAccessorAA8 L
.AAL M
FileProviderAAM Y
.AAY Z
GetViewFilePathsAAZ j
(AAj k
moduleBB "
.BB" #
SubPathBB# *
+BB+ ,
$strBB- <
,BB< =
RazorExtensionsBB> M
,BBM N
viewsFolderCC '
:CC' (
nullCC) -
,CC- .
inViewsFolderCC/ <
:CC< =
trueCC> B
,CCB C
inDepthCCD K
:CCK L
trueCCM Q
)CCQ R
;CCR S
ifEE 
(EE %
moduleSharedViewFilePathsEE 5
.EE5 6
AnyEE6 9
(EE9 :
)EE: ;
)EE; <
{FF "
modulesWithSharedViewsGG 2
.GG2 3
AddGG3 6
(GG6 7
moduleGG7 =
)GG= >
;GG> ?
}HH 
}II '
_modulesWithPageSharedViewsKK /
=KK0 1&
modulesWithPageSharedViewsKK2 L
;KKL M#
_modulesWithSharedViewsLL +
=LL, -"
modulesWithSharedViewsLL. D
;LLD E
}MM 
}NN 
}OO 	
publicQQ 
intQQ 
PriorityQQ 
=>QQ 
$numQQ  
;QQ  !
publicTT 
voidTT 
PopulateValuesTT "
(TT" #'
ViewLocationExpanderContextTT# >
contextTT? F
)TTF G
{UU 	
}VV 	
publicYY 
virtualYY 
IEnumerableYY "
<YY" #
stringYY# )
>YY) *
ExpandViewLocationsYY+ >
(YY> ?'
ViewLocationExpanderContextYY? Z
contextYY[ b
,YYb c
IEnumerableZZ? J
<ZZJ K
stringZZK Q
>ZZQ R
viewLocationsZZS `
)ZZ` a
{[[ 	
if\\ 
(\\ 
context\\ 
.\\ 
AreaName\\  
==\\! #
null\\$ (
)\\( )
{]] 
return^^ 
viewLocations^^ $
;^^$ %
}__ 
HashSetaa 
<aa 
stringaa 
>aa 
enabledExtensionIdsaa /
=aa0 1
nullaa2 6
;aa6 7
varcc 
resultcc 
=cc 
newcc 
Listcc !
<cc! "
stringcc" (
>cc( )
(cc) *
)cc* +
;cc+ ,
ifee 
(ee 
contextee 
.ee 
PageNameee  
!=ee! #
nullee$ (
)ee( )
{ff 
ifgg 
(gg 
!gg 
_memoryCachegg !
.gg! "
TryGetValuegg" -
(gg- .
PageCacheKeygg. :
,gg: ;
outgg< ?
IEnumerablegg@ K
<ggK L
stringggL R
>ggR S)
modulePageSharedViewLocationsggT q
)ggq r
)ggr s
{hh )
modulePageSharedViewLocationsii 1
=ii2 3'
_modulesWithPageSharedViewsii4 O
.jj 
Wherejj 
(jj 
mjj  
=>jj! #"
GetEnabledExtensionIdsjj$ :
(jj: ;
)jj; <
.jj< =
Containsjj= E
(jjE F
mjjF G
.jjG H
IdjjH J
)jjJ K
)jjK L
.kk 
Selectkk 
(kk  
mkk  !
=>kk" $
$charkk% (
+kk) *
mkk+ ,
.kk, -
SubPathkk- 4
+kk5 6
PageSharedViewsPathkk7 J
)kkJ K
;kkK L
_memoryCachemm  
.mm  !
Setmm! $
(mm$ %
PageCacheKeymm% 1
,mm1 2)
modulePageSharedViewLocationsmm3 P
)mmP Q
;mmQ R
}nn 
resultpp 
.pp 
AddRangepp 
(pp  )
modulePageSharedViewLocationspp  =
)pp= >
;pp> ?
}qq 
ifss 
(ss 
!ss 
_memoryCachess 
.ss 
TryGetValuess )
(ss) *
CacheKeyss* 2
,ss2 3
outss4 7
IEnumerabless8 C
<ssC D
stringssD J
>ssJ K%
moduleSharedViewLocationsssL e
)sse f
)ssf g
{tt %
moduleSharedViewLocationsuu )
=uu* +#
_modulesWithSharedViewsuu, C
.vv 
Wherevv 
(vv 
mvv 
=>vv "
GetEnabledExtensionIdsvv  6
(vv6 7
)vv7 8
.vv8 9
Containsvv9 A
(vvA B
mvvB C
.vvC D
IdvvD F
)vvF G
)vvG H
.ww 
Selectww 
(ww 
mww 
=>ww  
$charww! $
+ww% &
mww' (
.ww( )
SubPathww) 0
+ww1 2
SharedViewsPathww3 B
)wwB C
;wwC D
_memoryCacheyy 
.yy 
Setyy  
(yy  !
CacheKeyyy! )
,yy) *%
moduleSharedViewLocationsyy+ D
)yyD E
;yyE F
}zz 
result|| 
.|| 
AddRange|| 
(|| %
moduleSharedViewLocations|| 5
)||5 6
;||6 7
result}} 
.}} 
AddRange}} 
(}} 
viewLocations}} )
)}}) *
;}}* +
return 
result 
; 
HashSet
�� 
<
�� 
string
�� 
>
�� $
GetEnabledExtensionIds
�� 2
(
��2 3
)
��3 4
{
�� 
if
�� 
(
�� !
enabledExtensionIds
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
return
�� !
enabledExtensionIds
�� .
;
��. /
}
�� 
var
�� 

enabledIds
�� 
=
��  
_extensionManager
��! 2
.
��2 3
GetFeatures
��3 >
(
��> ?
)
��? @
.
��@ A
Where
��A F
(
��F G
f
��G H
=>
��I K
_shellDescriptor
��L \
.
�� 
Features
�� !
.
��! "
Any
��" %
(
��% &
sf
��& (
=>
��) +
sf
��, .
.
��. /
Id
��/ 1
==
��2 4
f
��5 6
.
��6 7
Id
��7 9
)
��9 :
)
��: ;
.
��; <
Select
��< B
(
��B C
f
��C D
=>
��E G
f
��H I
.
��I J
	Extension
��J S
.
��S T
Id
��T V
)
��V W
.
��W X
	ToHashSet
��X a
(
��a b
)
��b c
;
��c d
return
�� !
enabledExtensionIds
�� *
=
��+ ,
_extensionManager
��- >
.
��> ?
GetExtensions
��? L
(
��L M
)
��M N
.
�� 
Where
�� 
(
�� 
e
�� 
=>
�� 

enabledIds
��  *
.
��* +
Contains
��+ 3
(
��3 4
e
��4 5
.
��5 6
Id
��6 8
)
��8 9
)
��9 :
.
��: ;
Select
��; A
(
��A B
x
��B C
=>
��D F
x
��G H
.
��H I
Id
��I K
)
��K L
.
��L M
	ToHashSet
��M V
(
��V W
)
��W X
;
��X Y
}
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ModelBinding\CheckMarkModelBinder.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
ModelBinding &
{ 
public 

class  
CheckMarkModelBinder %
:& '
IModelBinder( 4
{ 
public		 
Task		 
BindModelAsync		 "
(		" #
ModelBindingContext		# 6
bindingContext		7 E
)		E F
{

 	
if 
( 
bindingContext 
== !
null" &
)& '
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
bindingContext7 E
)E F
)F G
;G H
} 
if 
( 
bindingContext 
. 
	ModelType (
==) +
typeof, 2
(2 3
bool3 7
)7 8
)8 9
{ 
var 
valueProviderResult '
=( )
bindingContext* 8
.8 9
ValueProvider9 F
.F G
GetValueG O
(O P
bindingContextP ^
.^ _
	ModelName_ h
)h i
;i j
if 
( 
valueProviderResult '
==( *
ValueProviderResult+ >
.> ?
None? C
)C D
{ 
return 
Task 
.  
CompletedTask  -
;- .
} 
bindingContext 
. 

ModelState )
.) *
SetModelValue* 7
(7 8
bindingContext8 F
.F G
	ModelNameG P
,P Q
valueProviderResultR e
)e f
;f g
if 
( 
valueProviderResult '
.' (
Values( .
==/ 1
$str2 5
)5 6
{ 
bindingContext "
." #
Result# )
=* +
ModelBindingResult, >
.> ?
Success? F
(F G
bindingContextG U
.U V
	ModelNameV _
)_ `
;` a
} 
else 
if 
( 
valueProviderResult ,
., -
Values- 3
==4 6
$str7 :
): ;
{ 
bindingContext   "
.  " #
Result  # )
=  * +
ModelBindingResult  , >
.  > ?
Failed  ? E
(  E F
)  F G
;  G H
}!! 
}"" 
return$$ 
Task$$ 
.$$ 
CompletedTask$$ %
;$$% &
}%% 	
}&& 
}'' �

�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ModelBinding\CheckMarkModelBinderProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
ModelBinding &
{ 
public		 

class		 (
CheckMarkModelBinderProvider		 -
:		. / 
IModelBinderProvider		0 D
{

 
public 
IModelBinder 
	GetBinder %
(% &&
ModelBinderProviderContext& @
contextA H
)H I
{ 	
if 
( 
context 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
context7 >
)> ?
)? @
;@ A
} 
if 
( 
context 
. 
Metadata  
.  !
	ModelType! *
==+ -
typeof. 4
(4 5 
CheckMarkModelBinder5 I
)I J
)J K
{ 
return 
new  
CheckMarkModelBinder /
(/ 0
)0 1
;1 2
} 
return 
null 
; 
} 	
} 
} �
{C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ModelBinding\ModelError.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
ModelBinding &
{ 
public 

class 

ModelError 
{ 
public 

ModelError 
( 
string  
key! $
,$ %
string& ,
message- 4
)4 5
{ 	
Key 
= 
key 
; 
Message 
= 
message 
; 
}		 	
public 
string 
Key 
{ 
get 
;  
}! "
public 
string 
Message 
{ 
get  #
;# $
}% &
} 
} �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ModularApplicationModelProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class +
ModularApplicationModelProvider 0
:1 2%
IApplicationModelProvider3 L
{ 
private 
readonly  
ITypeFeatureProvider - 
_typeFeatureProvider. B
;B C
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
public +
ModularApplicationModelProvider .
(. / 
ITypeFeatureProvider  
typeFeatureProvider! 4
,4 5
IHostEnvironment 
hostingEnvironment /
,/ 0
ShellSettings 
shellSettings '
)' (
{ 	 
_typeFeatureProvider  
=! "
typeFeatureProvider# 6
;6 7
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5
_shellSettings 
= 
shellSettings *
;* +
} 	
public 
int 
Order 
{ 	
get 
{   
return!! 
$num!! 
;!! 
}"" 
}## 	
public%% 
void%% 
OnProvidersExecuted%% '
(%%' (+
ApplicationModelProviderContext%%( G
context%%H O
)%%O P
{&& 	
foreach++ 
(++ 
var++ 

controller++ #
in++$ &
context++' .
.++. /
Result++/ 5
.++5 6
Controllers++6 A
)++A B
{,, 
var-- 
controllerType-- "
=--# $

controller--% /
.--/ 0
ControllerType--0 >
.--> ?
AsType--? E
(--E F
)--F G
;--G H
var.. 
	blueprint.. 
=..  
_typeFeatureProvider..  4
...4 5#
GetFeatureForDependency..5 L
(..L M
controllerType..M [
)..[ \
;..\ ]
if00 
(00 
	blueprint00 
!=00  
null00! %
)00% &
{11 
if22 
(22 
	blueprint22 !
.22! "
	Extension22" +
.22+ ,
Id22, .
==22/ 1
_hostingEnvironment222 E
.22E F
ApplicationName22F U
&&22V X
_shellSettings33 &
.33& '
State33' ,
!=33- /
TenantState330 ;
.33; <
Running33< C
)33C D
{44 
foreach66 
(66  !
var66! $
action66% +
in66, .

controller66/ 9
.669 :
Actions66: A
)66A B
{77 
action88 "
.88" #
	Selectors88# ,
.88, -
Clear88- 2
(882 3
)883 4
;884 5
}99 

controller;; "
.;;" #
	Selectors;;# ,
.;;, -
Clear;;- 2
(;;2 3
);;3 4
;;;4 5
}<< 
else== 
{>> 

controller@@ "
.@@" #
RouteValues@@# .
.@@. /
Add@@/ 2
(@@2 3
$str@@3 9
,@@9 :
	blueprint@@; D
.@@D E
	Extension@@E N
.@@N O
Id@@O Q
)@@Q R
;@@R S
}AA 
}BB 
}CC 
}DD 	
publicFF 
voidFF  
OnProvidersExecutingFF (
(FF( )+
ApplicationModelProviderContextFF) H
contextFFI P
)FFP Q
{GG 	
}HH 	
}II 
}JJ �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ModularRazorViewEngineOptionsSetup.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class .
"ModularRazorViewEngineOptionsSetup 3
:4 5
IConfigureOptions6 G
<G H"
RazorViewEngineOptionsH ^
>^ _
{ 
public		 .
"ModularRazorViewEngineOptionsSetup		 1
(		1 2
)		2 3
{

 	
} 	
public 
void 
	Configure 
( "
RazorViewEngineOptions 4
options5 <
)< =
{ 	
options 
. !
ViewLocationExpanders )
.) *
Add* -
(- .
new. 11
%CompositeViewLocationExpanderProvider2 W
(W X
)X Y
)Y Z
;Z [
} 	
} 
} �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ModuleProjectRazorFileProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class *
ModuleProjectRazorFileProvider /
:0 1
IFileProvider2 ?
{ 
private 
static 
IList 
< 
IFileProvider *
>* +
_pageFileProviders, >
;> ?
private 
static 

Dictionary !
<! "
string" (
,( )
string* 0
>0 1
_roots2 8
;8 9
private 
static 
object 
_synLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
public *
ModuleProjectRazorFileProvider -
(- .
IApplicationContext. A
applicationContextB T
)T U
{ 	
if 
( 
_roots 
!= 
null 
) 
{ 
return 
; 
} 
lock 
( 
_synLock 
) 
{ 
if   
(   
_roots   
==   
null   "
)  " #
{!! 
var"" 
application"" #
=""$ %
applicationContext""& 8
.""8 9
Application""9 D
;""D E
_pageFileProviders$$ &
=$$' (
new$$) ,
List$$- 1
<$$1 2
IFileProvider$$2 ?
>$$? @
($$@ A
)$$A B
;$$B C
var%% 
roots%% 
=%% 
new%%  #

Dictionary%%$ .
<%%. /
string%%/ 5
,%%5 6
string%%7 =
>%%= >
(%%> ?
)%%? @
;%%@ A
foreach(( 
((( 
var((  
module((! '
in((( *
application((+ 6
.((6 7
Modules((7 >
)((> ?
{)) 
if,, 
(,, 
module,, "
.,," #
Assembly,,# +
==,,, .
null,,/ 3
||,,4 6
Path,,7 ;
.,,; <
GetDirectoryName,,< L
(,,L M
module,,M S
.,,S T
Assembly,,T \
.,,\ ]
Location,,] e
),,e f
!=-- 
Path-- #
.--# $
GetDirectoryName--$ 4
(--4 5
application--5 @
.--@ A
Assembly--A I
.--I J
Location--J R
)--R S
)--S T
{.. 
continue// $
;//$ %
}00 
var33 
assets33 "
=33# $
module33% +
.33+ ,
Assets33, 2
.332 3
Where333 8
(338 9
a339 :
=>33; =
a33> ?
.33? @
ModuleAssetPath33@ O
.44 
EndsWith44 %
(44% &
$str44& /
,44/ 0
StringComparison441 A
.44A B
Ordinal44B I
)44I J
)44J K
;44K L
if66 
(66 
assets66 "
.66" #
Any66# &
(66& '
)66' (
)66( )
{77 
var88 
asset88  %
=88& '
assets88( .
.88. /
First88/ 4
(884 5
)885 6
;886 7
var99 
index99  %
=99& '
asset99( -
.99- .
ModuleAssetPath99. =
.99= >
IndexOf99> E
(99E F
module99F L
.99L M
Root99M Q
,99Q R
StringComparison99S c
.99c d
Ordinal99d k
)99k l
;99l m
var<< 
filePath<<  (
=<<) *
asset<<+ 0
.<<0 1
ModuleAssetPath<<1 @
.<<@ A
	Substring<<A J
(<<J K
index<<K P
+<<Q R
module<<S Y
.<<Y Z
Root<<Z ^
.<<^ _
Length<<_ e
)<<e f
;<<f g
var== 
root==  $
===% &
asset==' ,
.==, -
ProjectAssetPath==- =
.=== >
	Substring==> G
(==G H
$num==H I
,==I J
asset==K P
.==P Q
ProjectAssetPath==Q a
.==a b
Length==b h
-==i j
filePath==k s
.==s t
Length==t z
)==z {
;=={ |
var@@ 
page@@  $
=@@% &
assets@@' -
.@@- .
FirstOrDefault@@. <
(@@< =
a@@= >
=>@@? A
a@@B C
.@@C D
ProjectAssetPath@@D T
.@@T U
Contains@@U ]
(@@] ^
$str@@^ g
)@@g h
)@@h i
;@@i j
ifCC 
(CC  
pageCC  $
!=CC% '
nullCC( ,
&&CC- /
	DirectoryCC0 9
.CC9 :
ExistsCC: @
(CC@ A
rootCCA E
)CCE F
)CCF G
{DD 
_pageFileProvidersGG  2
.GG2 3
AddGG3 6
(GG6 7
newGG7 : 
PhysicalFileProviderGG; O
(GGO P
rootGGP T
)GGT U
)GGU V
;GGV W
}HH 
rootsKK !
[KK! "
moduleKK" (
.KK( )
NameKK) -
]KK- .
=KK/ 0
rootKK1 5
;KK5 6
}LL 
}MM 
_rootsOO 
=OO 
rootsOO "
;OO" #
}PP 
}QQ 
}RR 	
publicTT 
IDirectoryContentsTT ! 
GetDirectoryContentsTT" 6
(TT6 7
stringTT7 =
subpathTT> E
)TTE F
{UU 	
if__ 
(__ 
subpath__ 
==__ 
null__ 
)__  
{`` 
returnaa %
NotFoundDirectoryContentsaa 0
.aa0 1
	Singletonaa1 :
;aa: ;
}bb 
vardd 
folderdd 
=dd 
NormalizePathdd &
(dd& '
subpathdd' .
)dd. /
;dd/ 0
ifgg 
(gg 
foldergg 
.gg 

StartsWithgg !
(gg! "
Applicationgg" -
.gg- .
ModulesRootgg. 9
,gg9 :
StringComparisongg; K
.ggK L
OrdinalggL S
)ggS T
)ggT U
{hh 
folderjj 
=jj 
folderjj 
.jj  
	Substringjj  )
(jj) *
Applicationjj* 5
.jj5 6
ModulesRootjj6 A
.jjA B
LengthjjB H
)jjH I
;jjI J
varkk 
indexkk 
=kk 
folderkk "
.kk" #
IndexOfkk# *
(kk* +
$charkk+ .
)kk. /
;kk/ 0
ifnn 
(nn 
indexnn 
!=nn 
-nn 
$numnn 
)nn  
{oo 
varqq 
moduleqq 
=qq  
folderqq! '
.qq' (
	Substringqq( 1
(qq1 2
$numqq2 3
,qq3 4
indexqq5 :
)qq: ;
;qq; <
iftt 
(tt 
_rootstt 
.tt 
TryGetValuett *
(tt* +
modulett+ 1
,tt1 2
outtt3 6
vartt7 :
roottt; ?
)tt? @
&&ttA C
(vv 
foldervv 
.vv  
EndsWithvv  (
(vv( )
$strvv) 1
,vv1 2
StringComparisonvv3 C
.vvC D
OrdinalvvD K
)vvK L
||vvM O
foldervvP V
.vvV W
ContainsvvW _
(vv_ `
$strvv` i
)vvi j
)vvj k
)vvk l
{ww 
folderyy 
=yy  
rootyy! %
+yy& '
folderyy( .
.yy. /
	Substringyy/ 8
(yy8 9
moduleyy9 ?
.yy? @
Lengthyy@ F
+yyG H
$numyyI J
)yyJ K
;yyK L
if{{ 
({{ 
	Directory{{ %
.{{% &
Exists{{& ,
({{, -
folder{{- 3
){{3 4
){{4 5
{|| 
return~~ "
new~~# &%
PhysicalDirectoryContents~~' @
(~~@ A
folder~~A G
)~~G H
;~~H I
} 
}
�� 
}
�� 
}
�� 
return
�� '
NotFoundDirectoryContents
�� ,
.
��, -
	Singleton
��- 6
;
��6 7
}
�� 	
public
�� 
	IFileInfo
�� 
GetFileInfo
�� $
(
��$ %
string
��% +
subpath
��, 3
)
��3 4
{
�� 	
if
�� 
(
�� 
subpath
�� 
==
�� 
null
�� 
)
��  
{
�� 
return
�� 
new
�� 
NotFoundFileInfo
�� +
(
��+ ,
subpath
��, 3
)
��3 4
;
��4 5
}
�� 
var
�� 
path
�� 
=
�� 
NormalizePath
�� $
(
��$ %
subpath
��% ,
)
��, -
;
��- .
if
�� 
(
�� 
path
�� 
.
�� 

StartsWith
�� 
(
��  
Application
��  +
.
��+ ,
ModulesRoot
��, 7
,
��7 8
StringComparison
��9 I
.
��I J
Ordinal
��J Q
)
��Q R
)
��R S
{
�� 
path
�� 
=
�� 
path
�� 
.
�� 
	Substring
�� %
(
��% &
Application
��& 1
.
��1 2
ModulesRoot
��2 =
.
��= >
Length
��> D
)
��D E
;
��E F
var
�� 
index
�� 
=
�� 
path
��  
.
��  !
IndexOf
��! (
(
��( )
$char
��) ,
)
��, -
;
��- .
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� 
var
�� 
module
�� 
=
��  
path
��! %
.
��% &
	Substring
��& /
(
��/ 0
$num
��0 1
,
��1 2
index
��3 8
)
��8 9
;
��9 :
if
�� 
(
�� 
_roots
�� 
.
�� 
TryGetValue
�� *
(
��* +
module
��+ 1
,
��1 2
out
��3 6
var
��7 :
root
��; ?
)
��? @
)
��@ A
{
�� 
var
�� 
filePath
�� $
=
��% &
root
��' +
+
��, -
path
��. 2
.
��2 3
	Substring
��3 <
(
��< =
module
��= C
.
��C D
Length
��D J
+
��K L
$num
��M N
)
��N O
;
��O P
if
�� 
(
�� 
File
��  
.
��  !
Exists
��! '
(
��' (
filePath
��( 0
)
��0 1
)
��1 2
{
�� 
return
�� "
new
��# &
PhysicalFileInfo
��' 7
(
��7 8
new
��8 ;
FileInfo
��< D
(
��D E
filePath
��E M
)
��M N
)
��N O
;
��O P
}
�� 
}
�� 
}
�� 
}
�� 
return
�� 
new
�� 
NotFoundFileInfo
�� '
(
��' (
subpath
��( /
)
��/ 0
;
��0 1
}
�� 	
public
�� 
IChangeToken
�� 
Watch
�� !
(
��! "
string
��" (
filter
��) /
)
��/ 0
{
�� 	
if
�� 
(
�� 
filter
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
NullChangeToken
�� &
.
��& '
	Singleton
��' 0
;
��0 1
}
�� 
var
�� 
path
�� 
=
�� 
NormalizePath
�� $
(
��$ %
filter
��% +
)
��+ ,
;
��, -
if
�� 
(
�� 
path
�� 
.
�� 

StartsWith
�� 
(
��  
Application
��  +
.
��+ ,
ModulesRoot
��, 7
,
��7 8
StringComparison
��9 I
.
��I J
Ordinal
��J Q
)
��Q R
&&
��S U
!
��V W
path
��W [
.
��[ \
Contains
��\ d
(
��d e
$char
��e h
)
��h i
)
��i j
{
�� 
path
�� 
=
�� 
path
�� 
.
�� 
	Substring
�� %
(
��% &
Application
��& 1
.
��1 2
ModulesRoot
��2 =
.
��= >
Length
��> D
)
��D E
;
��E F
var
�� 
index
�� 
=
�� 
path
��  
.
��  !
IndexOf
��! (
(
��( )
$char
��) ,
)
��, -
;
��- .
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� 
var
�� 
module
�� 
=
��  
path
��! %
.
��% &
	Substring
��& /
(
��/ 0
$num
��0 1
,
��1 2
index
��3 8
)
��8 9
;
��9 :
if
�� 
(
�� 
_roots
�� 
.
�� 
TryGetValue
�� *
(
��* +
module
��+ 1
,
��1 2
out
��3 6
var
��7 :
root
��; ?
)
��? @
)
��@ A
{
�� 
var
�� 
filePath
�� $
=
��% &
root
��' +
+
��, -
path
��. 2
.
��2 3
	Substring
��3 <
(
��< =
module
��= C
.
��C D
Length
��D J
+
��K L
$num
��M N
)
��N O
;
��O P
var
�� 
	directory
�� %
=
��& '
Path
��( ,
.
��, -
GetDirectoryName
��- =
(
��= >
filePath
��> F
)
��F G
;
��G H
var
�� 
fileName
�� $
=
��% &
Path
��' +
.
��+ ,)
GetFileNameWithoutExtension
��, G
(
��G H
filePath
��H P
)
��P Q
;
��Q R
if
�� 
(
�� 
	Directory
�� %
.
��% &
Exists
��& ,
(
��, -
	directory
��- 6
)
��6 7
)
��7 8
{
�� 
return
�� "
new
��# &(
PollingWildCardChangeToken
��' A
(
��A B
	directory
��B K
,
��K L
fileName
��M U
+
��V W
$str
��X \
)
��\ ]
;
��] ^
}
�� 
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
path
�� 
.
�� 
Equals
��  
(
��  !
$str
��! 4
)
��4 5
)
��5 6
{
�� 
var
�� 
changeTokens
��  
=
��! "
new
��# &
List
��' +
<
��+ ,
IChangeToken
��, 8
>
��8 9
(
��9 :
)
��: ;
;
��; <
foreach
�� 
(
�� 
var
�� 
provider
�� %
in
��& ( 
_pageFileProviders
��) ;
)
��; <
{
�� 
var
�� 
changeToken
�� #
=
��$ %
provider
��& .
.
��. /
Watch
��/ 4
(
��4 5
$str
��5 H
)
��H I
;
��I J
if
�� 
(
�� 
changeToken
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
changeTokens
�� $
.
��$ %
Add
��% (
(
��( )
changeToken
��) 4
)
��4 5
;
��5 6
}
�� 
}
�� 
if
�� 
(
�� 
changeTokens
��  
.
��  !
Count
��! &
==
��' )
$num
��* +
)
��+ ,
{
�� 
return
�� 
changeTokens
�� '
.
��' (
First
��( -
(
��- .
)
��. /
;
��/ 0
}
�� 
if
�� 
(
�� 
changeTokens
��  
.
��  !
Count
��! &
>
��' (
$num
��) *
)
��* +
{
�� 
return
�� 
new
�� "
CompositeChangeToken
�� 3
(
��3 4
changeTokens
��4 @
)
��@ A
;
��A B
}
�� 
}
�� 
return
�� 
NullChangeToken
�� "
.
��" #
	Singleton
��# ,
;
��, -
}
�� 	
private
�� 
string
�� 
NormalizePath
�� $
(
��$ %
string
��% +
path
��, 0
)
��0 1
{
�� 	
return
�� 
path
�� 
.
�� 
Replace
�� 
(
��  
$char
��  $
,
��$ %
$char
��& )
)
��) *
.
��* +
Trim
��+ /
(
��/ 0
$char
��0 3
)
��3 4
;
��4 5
}
�� 	
}
�� 
}�� �
{C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Properties\AssemblyInfo.cs
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
$str		 1
)		1 2
]		2 3
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
]7 8�
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\RazorCompilationFileProviderAccessor.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class 0
$RazorCompilationFileProviderAccessor 5
{		 
private

 
readonly

 -
!MvcRazorRuntimeCompilationOptions

 :
_options

; C
;

C D
private 
IFileProvider "
_compositeFileProvider 4
;4 5
public 0
$RazorCompilationFileProviderAccessor 3
(3 4
IOptions4 <
<< =-
!MvcRazorRuntimeCompilationOptions= ^
>^ _
options` g
)g h
{ 	
if 
( 
options 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
options7 >
)> ?
)? @
;@ A
} 
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
IFileProvider 
FileProvider )
{ 	
get 
{ 
if 
( "
_compositeFileProvider *
==+ -
null. 2
)2 3
{ "
_compositeFileProvider *
=+ ,$
GetCompositeFileProvider- E
(E F
_optionsF N
)N O
;O P
} 
return   "
_compositeFileProvider   -
;  - .
}!! 
}"" 	
private$$ 
static$$ 
IFileProvider$$ $$
GetCompositeFileProvider$$% =
($$= >-
!MvcRazorRuntimeCompilationOptions$$> _
options$$` g
)$$g h
{%% 	
var&& 
fileProviders&& 
=&& 
options&&  '
.&&' (
FileProviders&&( 5
;&&5 6
if(( 
((( 
fileProviders(( 
.(( 
Count(( #
==(($ &
$num((' (
)((( )
{)) 
return** 
fileProviders** $
[**$ %
$num**% &
]**& '
;**' (
}++ 
return-- 
new-- !
CompositeFileProvider-- ,
(--, -
fileProviders--- :
)--: ;
;--; <
}.. 	
}// 
}00 �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\RazorCompilationOptionsSetup.cs
	namespace		 	
OrchardCore		
 
.		 
Mvc		 
{

 
public 

class (
RazorCompilationOptionsSetup -
:. /
IConfigureOptions0 A
<A B-
!MvcRazorRuntimeCompilationOptionsB c
>c d
{ 
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public (
RazorCompilationOptionsSetup +
(+ ,
IHostEnvironment, <
hostingEnvironment= O
,O P
IApplicationContextQ d
applicationContexte w
)w x
{ 	
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5
_applicationContext 
=  !
applicationContext" 4
;4 5
} 	
public 
void 
	Configure 
( -
!MvcRazorRuntimeCompilationOptions ?
options@ G
)G H
{ 	
var 
refsFolderExists  
=! "
	Directory# ,
., -
Exists- 3
(3 4
Path4 8
.8 9
Combine9 @
(@ A
	AppDomainA J
.J K
CurrentDomainK X
.X Y
BaseDirectoryY f
,f g
$strh n
)n o
)o p
;p q
if 
( 
! 
_hostingEnvironment $
.$ %
IsDevelopment% 2
(2 3
)3 4
||5 7
!8 9
refsFolderExists9 I
)I J
{ 
options 
. 
FileProviders %
.% &
Insert& ,
(, -
$num- .
,. /
_hostingEnvironment0 C
.C D#
ContentRootFileProviderD [
)[ \
;\ ]
}   
options$$ 
.$$ 
FileProviders$$ !
.$$! "
Insert$$" (
($$( )
$num$$) *
,$$* +
new$$, /'
ApplicationViewFileProvider$$0 K
($$K L
_applicationContext$$L _
)$$_ `
)$$` a
;$$a b
if&& 
(&& 
_hostingEnvironment&& #
.&&# $
IsDevelopment&&$ 1
(&&1 2
)&&2 3
)&&3 4
{'' 
options)) 
.)) 
FileProviders)) %
.))% &
Insert))& ,
()), -
$num))- .
,)). /
new))0 3*
ModuleProjectRazorFileProvider))4 R
())R S
_applicationContext))S f
)))f g
)))g h
;))h i
}** 
}++ 	
},, 
}-- �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\ModularPageApplicationModelProvider.cs
	namespace		 	
OrchardCore		
 
.		 
Mvc		 
.		 

RazorPages		 $
{

 
public 

class /
#ModularPageApplicationModelProvider 4
:5 6)
IPageApplicationModelProvider7 T
{ 
private 
readonly 
ILookup  
<  !
string! '
,' (
string) /
>/ 0
_featureIdsByArea1 B
;B C
public /
#ModularPageApplicationModelProvider 2
(2 3
IExtensionManager 
extensionManager .
,. /
ShellDescriptor 
shellDescriptor +
)+ ,
{ 	
_featureIdsByArea 
= 
extensionManager  0
.0 1
GetFeatures1 <
(< =
)= >
. 
Where 
( 
f 
=> 
shellDescriptor +
.+ ,
Features, 4
.4 5
Any5 8
(8 9
sf9 ;
=>< >
sf? A
.A B
IdB D
==E G
fH I
.I J
IdJ L
)L M
)M N
. 
ToLookup 
( 
f 
=> 
f  
.  !
	Extension! *
.* +
Id+ -
,- .
f/ 0
=>1 3
f4 5
.5 6
Id6 8
)8 9
;9 :
} 	
public 
int 
Order 
=> 
- 
$num !
+" #
$num$ &
;& '
public 
void  
OnProvidersExecuting (
(( )/
#PageApplicationModelProviderContext) L
contextM T
)T U
{ 	
} 	
public   
void   
OnProvidersExecuted   '
(  ' (/
#PageApplicationModelProviderContext  ( K
context  L S
)  S T
{!! 	
var## 
found## 
=## 
false## 
;## 
var%% 
area%% 
=%% 
context%% 
.%%  
PageApplicationModel%% 3
.%%3 4
AreaName%%4 <
;%%< =
if&& 
(&& 
_featureIdsByArea&& !
.&&! "
Contains&&" *
(&&* +
area&&+ /
)&&/ 0
)&&0 1
{'' 
found(( 
=(( 
true(( 
;(( 
var** 
pageModelType** !
=**" #
context**$ +
.**+ , 
PageApplicationModel**, @
.**@ A
	ModelType**A J
.**J K
AsType**K Q
(**Q R
)**R S
;**S T
var++ 
	attribute++ 
=++ 
pageModelType++  -
.++- .
GetCustomAttributes++. A
<++A B
FeatureAttribute++B R
>++R S
(++S T
false++T Y
)++Y Z
.++Z [
FirstOrDefault++[ i
(++i j
)++j k
;++k l
if,, 
(,, 
	attribute,, 
!=,,  
null,,! %
),,% &
{-- 
found.. 
=.. 
_featureIdsByArea.. -
[..- .
area... 2
]..2 3
...3 4
Contains..4 <
(..< =
	attribute..= F
...F G
FeatureName..G R
)..R S
;..S T
}// 
}00 
context22 
.22  
PageApplicationModel22 (
.22( )
Filters22) 0
.220 1
Add221 4
(224 5
new225 8+
ModularPageViewEnginePathFilter229 X
(22X Y
found22Y ^
)22^ _
)22_ `
;22` a
}33 	
}44 
}55 �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\ModularPageMvcCoreBuilderExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

RazorPages $
{		 
public

 

static

 
class

 /
#ModularPageMvcCoreBuilderExtensions

 ;
{ 
public 
static 
IMvcCoreBuilder % 
AddModularRazorPages& :
(: ;
this; ?
IMvcCoreBuilder@ O
builderP W
)W X
{ 	
builder 
. 
AddRazorPages !
(! "
)" #
;# $
builder 
. 
Services 
.  
AddModularRazorPages 1
(1 2
)2 3
;3 4
return 
builder 
; 
} 	
internal 
static 
IServiceCollection * 
AddModularRazorPages+ ?
(? @
this@ D
IServiceCollectionE W
servicesX `
)` a
{ 	
services 
. 
TryAddEnumerable %
(% &
ServiceDescriptor& 7
.7 8
	Singleton8 A
<A B
MatcherPolicyB O
,O P&
PageEndpointComparerPolicyQ k
>k l
(l m
)m n
)n o
;o p
services 
. 
TryAddEnumerable %
(% &
ServiceDescriptor !
.! "
	Transient" +
<+ ,
IConfigureOptions, =
<= >
RazorPagesOptions> O
>O P
,P Q-
!ModularPageRazorPagesOptionsSetupR s
>s t
(t u
)u v
)v w
;w x
services 
. 
TryAddEnumerable %
(% &
ServiceDescriptor !
.! "
	Singleton" +
<+ ,)
IPageApplicationModelProvider, I
,I J/
#ModularPageApplicationModelProviderK n
>n o
(o p
)p q
)q r
;r s
return 
services 
; 
} 	
} 
}   �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\ModularPageRazorPagesOptionsSetup.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

RazorPages $
{		 
public

 

class

 -
!ModularPageRazorPagesOptionsSetup

 2
:

3 4
IConfigureOptions

5 F
<

F G
RazorPagesOptions

G X
>

X Y
{ 
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
public -
!ModularPageRazorPagesOptionsSetup 0
(0 1
IApplicationContext1 D
applicationContextE W
,W X
ShellSettingsY f
shellSettingsg t
)t u
{ 	
_applicationContext 
=  !
applicationContext" 4
;4 5
_shellSettings 
= 
shellSettings *
;* +
} 	
public 
void 
	Configure 
( 
RazorPagesOptions /
options0 7
)7 8
{ 	
options 
. 
Conventions 
.  )
AddFolderRouteModelConvention  =
(= >
$str> A
,A B
modelC H
=>I K
modelL Q
.Q R
	SelectorsR [
.[ \
Clear\ a
(a b
)b c
)c d
;d e
if 
( 
_shellSettings 
. 
State $
!=% '
TenantState( 3
.3 4
Running4 ;
); <
{ 
options 
. 
Conventions #
.# $-
!AddAreaFolderRouteModelConvention$ E
(E F
_applicationContextF Y
.Y Z
ApplicationZ e
.e f
Namef j
,j k
$strl o
,o p
model 
=> 
model "
." #
	Selectors# ,
., -
Clear- 2
(2 3
)3 4
)4 5
;5 6
} 
else   
{!! 
options## 
.## 
Conventions## #
.### $
AddAreaFolderRoute##$ 6
(##6 7
_applicationContext##7 J
.##J K
Application##K V
.##V W
Name##W [
,##[ \
$str##] `
,##` a
$str##b d
)##d e
;##e f
}$$ 
}%% 	
}&& 
}'' �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\ModularPageViewEnginePathFilter.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

RazorPages $
{ 
public 

class +
ModularPageViewEnginePathFilter 0
:1 2
IAsyncPageFilter3 C
{ 
private		 
readonly		 
bool		 
_found		 $
;		$ %
public +
ModularPageViewEnginePathFilter .
(. /
bool/ 3
found4 9
)9 :
{ 	
_found 
= 
found 
; 
} 	
public 
async 
Task '
OnPageHandlerExecutionAsync 5
(5 6'
PageHandlerExecutingContext6 Q
contextR Y
,Y Z(
PageHandlerExecutionDelegate[ w
nextx |
)| }
{ 	
if 
( 
! 
_found 
) 
{ 
context 
. 
Result 
=  
new! $
NotFoundResult% 3
(3 4
)4 5
;5 6
return 
; 
} 
await 
next 
( 
) 
; 
} 	
public 
Task '
OnPageHandlerSelectionAsync /
(/ 0&
PageHandlerSelectedContext0 J
contextK R
)R S
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
}   �-
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\PageConventionCollectionExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
." #
ApplicationModels# 4
{ 
public 

static 
class .
"PageConventionCollectionExtensions :
{ 
public 
static $
PageConventionCollection .
AddAreaFolderRoute/ A
(A B
thisB F$
PageConventionCollectionG _
conventions` k
,k l
string 
areaName 
, 
string #

folderPath$ .
,. /
string0 6
folderRoute7 B
)B C
{ 	
return 
conventions 
. &
AddAreaFolderRouteInternal 9
(9 :
areaName: B
,B C

folderPathD N
,N O
folderRouteP [
,[ \
isAdmin] d
:d e
falsef k
)k l
;l m
} 	
public 
static $
PageConventionCollection .#
AddAdminAreaFolderRoute/ F
(F G
thisG K$
PageConventionCollectionL d
conventionse p
,p q
string 
areaName 
, 
string #

folderPath$ .
,. /
string0 6
folderRoute7 B
)B C
{ 	
return 
conventions 
. &
AddAreaFolderRouteInternal 9
(9 :
areaName: B
,B C

folderPathD N
,N O
folderRouteP [
,[ \
isAdmin] d
:d e
truef j
)j k
;k l
}   	
internal"" 
static"" $
PageConventionCollection"" 0&
AddAreaFolderRouteInternal""1 K
(""K L
this""L P$
PageConventionCollection""Q i
conventions""j u
,""u v
string## 
areaName## 
,## 
string## #

folderPath##$ .
,##. /
string##0 6
folderRoute##7 B
,##B C
bool##D H
isAdmin##I P
)##P Q
{$$ 	
conventions%% 
.%% -
!AddAreaFolderRouteModelConvention%% 9
(%%9 :
areaName%%: B
,%%B C

folderPath%%D N
,%%N O
model%%P U
=>%%V X
{&& 
if'' 
('' 
isAdmin'' 
!='' 
(''  
model''  %
.''% &
ViewEnginePath''& 4
.''4 5
Contains''5 =
(''= >
$str''> G
)''G H
||''I K
model''L Q
.''Q R

Properties''R \
.''\ ]
ContainsKey''] h
(''h i
$str''i p
)''p q
)''q r
)''r s
{(( 
return)) 
;)) 
}** 
var,, 

areaFolder,, 
=,,  
areaName,,! )
+,,* +

folderPath,,, 6
;,,6 7
foreach.. 
(.. 
var.. 
selector.. %
in..& (
model..) .
.... /
	Selectors../ 8
...8 9
ToArray..9 @
(..@ A
)..A B
)..B C
{// 
var00 
route00 
=00 
selector00  (
.00( )
AttributeRouteModel00) <
;00< =
if22 
(22 
route22 
.22 
Template22 &
.22& '

StartsWith22' 1
(221 2

areaFolder222 <
,22< =
StringComparison22> N
.22N O
Ordinal22O V
)22V W
||22X Z
(22[ \
route22\ a
.22a b
Template22b j
==22k m
areaName22n v
&&22w y

folderPath	22z �
==
22� �
$str
22� �
)
22� �
)
22� �
{33 
route44 
.44 "
SuppressLinkGeneration44 4
=445 6
true447 ;
;44; <
string66 
template66 '
;66' (
if88 
(88 
route88 !
.88! "
Template88" *
==88+ -
areaName88. 6
&&887 9

folderPath88: D
==88E G
$str88H K
)88K L
{99 
template:: $
=::% &
folderRoute::' 2
;::2 3
};; 
else<< 
{== 
var>> 
cleanSubTemplate>>  0
=>>1 2
route>>3 8
.>>8 9
Template>>9 A
.>>A B
	Substring>>B K
(>>K L

areaFolder>>L V
.>>V W
Length>>W ]
)>>] ^
.>>^ _
	TrimStart>>_ h
(>>h i
$char>>i l
)>>l m
;>>m n
template?? $
=??% &
AttributeRouteModel??' :
.??: ;
CombineTemplates??; K
(??K L
folderRoute??L W
,??W X
cleanSubTemplate??Y i
)??i j
;??j k
}@@ 
modelBB 
.BB 
	SelectorsBB '
.BB' (
AddBB( +
(BB+ ,
newBB, /
SelectorModelBB0 =
{CC 
AttributeRouteModelDD /
=DD0 1
newDD2 5
AttributeRouteModelDD6 I
{EE 
TemplateFF  (
=FF) *
templateFF+ 3
}GG 
}HH 
)HH 
;HH 
}II 
}JJ 
}KK 
)KK 
;KK 
returnMM 
conventionsMM 
;MM 
}NN 	
}OO 
}PP �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\RazorPages\PageEndpointComparerPolicy.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 

RazorPages $
{ 
public		 

sealed		 
class		 &
PageEndpointComparerPolicy		 2
:		3 4
MatcherPolicy		5 B
,		B C#
IEndpointComparerPolicy		D [
{

 
public 
override 
int 
Order !
=>" $
-% &
$num& *
;* +
public 
	IComparer 
< 
Endpoint !
>! "
Comparer# +
=>, .
new/ 2 
PageEndpointComparer3 G
(G H
)H I
;I J
private 
class  
PageEndpointComparer *
:+ ,$
EndpointMetadataComparer- E
<E F 
PageActionDescriptorF Z
>Z [
{ 	
	protected 
override 
int "
CompareMetadata# 2
(2 3 
PageActionDescriptor3 G
xH I
,I J 
PageActionDescriptorK _
y` a
)a b
{ 
return 
base 
. 
CompareMetadata +
(+ ,
x, -
,- .
y/ 0
)0 1
;1 2
} 
} 	
} 
} �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Routing\DefaultAreaControllerRouteMapper.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Routing !
{ 
public 

class ,
 DefaultAreaControllerRouteMapper 1
:2 3&
IAreaControllerRouteMapper4 N
{ 
private		 
const		 
string		 
_defaultAreaPattern		 0
=		1 2
$str		3 X
;		X Y
public 
int 
Order 
=> 
$num  
;  !
public 
bool %
TryMapAreaControllerRoute -
(- .!
IEndpointRouteBuilder. C
routesD J
,J K&
ControllerActionDescriptorL f

descriptorg q
)q r
{ 	
routes 
. "
MapAreaControllerRoute )
() *
name 
: 

descriptor 
.  
DisplayName  +
,+ ,
areaName 
: 

descriptor #
.# $
RouteValues$ /
[/ 0
$str0 6
]6 7
,7 8
pattern 
: 
_defaultAreaPattern +
.+ ,
Replace, 3
(3 4
$str4 >
,> ?

descriptor@ J
.J K

ActionNameK U
)U V
,V W
defaults 
: 
new 
{ 

controller )
=* +

descriptor, 6
.6 7
ControllerName7 E
,E F
actionG M
=N O

descriptorP Z
.Z [

ActionName[ e
}f g
) 
; 
return 
true 
; 
} 	
} 
} �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Routing\IAreaControllerRouteMapper.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Routing !
{ 
public 

	interface &
IAreaControllerRouteMapper /
{ 
int 
Order 
{ 
get 
; 
} 
bool		 %
TryMapAreaControllerRoute		 &
(		& '!
IEndpointRouteBuilder		' <
routes		= C
,		C D&
ControllerActionDescriptor		E _

descriptor		` j
)		j k
;		k l
}

 
} �
~C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\SharedViewCompilerProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class &
SharedViewCompilerProvider +
:, -!
IViewCompilerProvider. C
{ 
private 
object 
_synLock 
=  !
new" %
object& ,
(, -
)- .
;. /
private 
static 
IViewCompiler $
	_compiler% .
;. /
private 
readonly 
IServiceProvider )
	_services* 3
;3 4
public &
SharedViewCompilerProvider )
() *
IServiceProvider* :
services; C
)C D
{ 	
	_services 
= 
services  
;  !
} 	
public 
IViewCompiler 
GetCompiler (
(( )
)) *
{ 	
if 
( 
	_compiler 
!= 
null !
)! "
{ 
return 
	_compiler  
;  !
} 
lock 
( 
_synLock 
) 
{ 
	_compiler 
= 
	_services %
.   
GetServices    
<    !!
IViewCompilerProvider  ! 6
>  6 7
(  7 8
)  8 9
.!! 
FirstOrDefault!! #
(!!# $
)!!$ %
."" 
GetCompiler""  
(""  !
)""! "
;""" #
}## 
return%% 
	_compiler%% 
;%% 
}&& 	
}'' 
}(( �"
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ShellFeatureApplicationPart.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class '
ShellFeatureApplicationPart ,
:- .
ApplicationPart 
, (
IApplicationPartTypeProvider $
,$ %*
ICompilationReferencesProvider &
{ 
private 
static 
IEnumerable "
<" #
string# )
>) *
_referencePaths+ :
;: ;
private 
static 
object 
_synLock &
=' (
new) ,
object- 3
(3 4
)4 5
;5 6
private 
ShellBlueprint 
_shellBlueprint .
;. /
private 
IEnumerable 
< 
ITagHelpersProvider /
>/ 0
_tagHelpers1 <
;< =
public '
ShellFeatureApplicationPart *
(* +
)+ ,
{ 	
} 	
public!! 
override!! 
string!! 
Name!! #
{"" 	
get## 
{$$ 
return%% 
nameof%% 
(%% '
ShellFeatureApplicationPart%% 9
)%%9 :
;%%: ;
}&& 
}'' 	
public** 
IEnumerable** 
<** 
TypeInfo** #
>**# $
Types**% *
{++ 	
get,, 
{-- 
var.. 
services.. 
=.. 

ShellScope.. )
...) *
Services..* 2
;..2 3
if33 
(33 
services33 
!=33 
null33  $
&&33% '
_tagHelpers33( 3
==334 6
null337 ;
)33; <
{44 
lock55 
(55 
this55 
)55 
{66 
if77 
(77 
_tagHelpers77 '
==77( *
null77+ /
)77/ 0
{88 
_shellBlueprint99 +
=99, -
services99. 6
.996 7
GetRequiredService997 I
<99I J
ShellBlueprint99J X
>99X Y
(99Y Z
)99Z [
;99[ \
_tagHelpers:: '
=::( )
services::* 2
.::2 3
GetServices::3 >
<::> ?
ITagHelpersProvider::? R
>::R S
(::S T
)::T U
;::U V
};; 
}<< 
}== 
return?? 
_shellBlueprint?? &
.@@ 
Dependencies@@ !
.@@! "
Keys@@" &
.AA 
ConcatAA 
(AA 
_tagHelpersAA '
.AA' (

SelectManyAA( 2
(AA2 3
pAA3 4
=>AA5 7
pAA8 9
.AA9 :
GetTypesAA: B
(AAB C
)AAC D
)AAD E
)AAE F
.BB 
SelectBB 
(BB 
xBB 
=>BB  
xBB! "
.BB" #
GetTypeInfoBB# .
(BB. /
)BB/ 0
)BB0 1
;BB1 2
}CC 
}DD 	
publicGG 
IEnumerableGG 
<GG 
stringGG !
>GG! "
GetReferencePathsGG# 4
(GG4 5
)GG5 6
{HH 	
ifII 
(II 
_referencePathsII 
!=II  "
nullII# '
)II' (
{JJ 
returnKK 
_referencePathsKK &
;KK& '
}LL 
lockNN 
(NN 
_synLockNN 
)NN 
{OO 
ifPP 
(PP 
_referencePathsPP #
!=PP$ &
nullPP' +
)PP+ ,
{QQ 
returnRR 
_referencePathsRR *
;RR* +
}SS 
_referencePathsUU 
=UU  !
DependencyContextUU" 3
.UU3 4
DefaultUU4 ;
.UU; <
CompileLibrariesUU< L
.VV 

SelectManyVV 
(VV  
libraryVV  '
=>VV( *
libraryVV+ 2
.VV2 3!
ResolveReferencePathsVV3 H
(VVH I
)VVI J
)VVJ K
;VVK L
}WW 
returnYY 
_referencePathsYY "
;YY" #
}ZZ 	
}[[ 
}\\ �]
|C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ShellFileVersionProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class $
ShellFileVersionProvider )
:* + 
IFileVersionProvider, @
{ 
private 
const 
string 

VersionKey '
=( )
$str* -
;- .
private 
static 
readonly 
char  $
[$ %
]% &(
QueryStringAndFragmentTokens' C
=D E
newF I
[I J
]J K
{L M
$charN Q
,Q R
$charS V
}W X
;X Y
private 
static 
readonly 
MemoryCache  +
_sharedCache, 8
=9 :
new; >
MemoryCache? J
(J K
newK N
MemoryCacheOptionsO a
(a b
)b c
)c d
;d e
private 
readonly 
IFileProvider &
[& '
]' (
_fileProviders) 7
;7 8
private 
readonly 
IMemoryCache %
_cache& ,
;, -
public $
ShellFileVersionProvider '
(' (
IEnumerable 
< 
IStaticFileProvider +
>+ ,
staticFileProviders- @
,@ A
IWebHostEnvironment 
environment  +
,+ ,
IMemoryCache 
cache 
) 
{   	
_fileProviders!! 
=!! 
staticFileProviders!! 0
."" 
Concat"" 
("" 
new"" 
["" 
]"" 
{"" 
environment""  +
.""+ ,
WebRootFileProvider"", ?
}""@ A
)""A B
.## 
ToArray## 
(## 
)## 
;## 
_cache%% 
=%% 
cache%% 
;%% 
}&& 	
public(( 
string((  
AddFileVersionToPath(( *
(((* +

PathString((+ 5
requestPathBase((6 E
,((E F
string((G M
path((N R
)((R S
{)) 	
if** 
(** 
path** 
==** 
null** 
)** 
{++ 
throw,, 
new,, !
ArgumentNullException,, /
(,,/ 0
nameof,,0 6
(,,6 7
path,,7 ;
),,; <
),,< =
;,,= >
}-- 
var// 
resolvedPath// 
=// 
path// #
;//# $
var11 +
queryStringOrFragmentStartIndex11 /
=110 1
path112 6
.116 7

IndexOfAny117 A
(11A B(
QueryStringAndFragmentTokens11B ^
)11^ _
;11_ `
if22 
(22 +
queryStringOrFragmentStartIndex22 /
!=220 2
-223 4
$num224 5
)225 6
{33 
resolvedPath44 
=44 
path44 #
.44# $
	Substring44$ -
(44- .
$num44. /
,44/ 0+
queryStringOrFragmentStartIndex441 P
)44P Q
;44Q R
}55 
if77 
(77 
Uri77 
.77 
	TryCreate77 
(77 
resolvedPath77 *
,77* +
UriKind77, 3
.773 4
Absolute774 <
,77< =
out77> A
var77B E
uri77F I
)77I J
&&77K M
!77N O
uri77O R
.77R S
IsFile77S Y
)77Y Z
{88 
return:: 
path:: 
;:: 
};; 
if>> 
(>> 
_cache>> 
.>> 
TryGetValue>> "
(>>" #
resolvedPath>># /
,>>/ 0
out>>1 4
string>>5 ;
value>>< A
)>>A B
)>>B C
{?? 
if@@ 
(@@ 
value@@ 
.@@ 
Length@@  
>@@! "
$num@@# $
)@@$ %
{AA 
returnBB 
QueryHelpersBB '
.BB' (
AddQueryStringBB( 6
(BB6 7
pathBB7 ;
,BB; <

VersionKeyBB= G
,BBG H
valueBBI N
)BBN O
;BBO P
}CC 
returnEE 
pathEE 
;EE 
}FF 
ifII 
(II 
resolvedPathII 
.II 

StartsWithII '
(II' (
requestPathBaseII( 7
.II7 8
ValueII8 =
,II= >
StringComparisonII? O
.IIO P
OrdinalIgnoreCaseIIP a
)IIa b
)IIb c
{JJ 
ifKK 
(KK 
_sharedCacheKK  
.KK  !
TryGetValueKK! ,
(KK, -
resolvedPathKK- 9
.KK9 :
	SubstringKK: C
(KKC D
requestPathBaseKKD S
.KKS T
ValueKKT Y
.KKY Z
LengthKKZ `
)KK` a
,KKa b
outKKc f
valueKKg l
)KKl m
)KKm n
{LL 
returnMM 
QueryHelpersMM '
.MM' (
AddQueryStringMM( 6
(MM6 7
pathMM7 ;
,MM; <

VersionKeyMM= G
,MMG H
valueMMI N
)MMN O
;MMO P
}NN 
}OO 
varQQ 
cacheKeyQQ 
=QQ 
resolvedPathQQ '
;QQ' (
varSS 
cacheEntryOptionsSS !
=SS" #
newSS$ '#
MemoryCacheEntryOptionsSS( ?
(SS? @
)SS@ A
;SSA B
foreachTT 
(TT 
varTT 
fileProviderTT %
inTT& (
_fileProvidersTT) 7
)TT7 8
{UU 
cacheEntryOptionsVV !
.VV! "
AddExpirationTokenVV" 4
(VV4 5
fileProviderVV5 A
.VVA B
WatchVVB G
(VVG H
resolvedPathVVH T
)VVT U
)VVU V
;VVV W
varWW 
fileInfoWW 
=WW 
fileProviderWW +
.WW+ ,
GetFileInfoWW, 7
(WW7 8
resolvedPathWW8 D
)WWD E
;WWE F
ifZZ 
(ZZ 
!ZZ 
fileInfoZZ 
.ZZ 
ExistsZZ $
&&ZZ% '
requestPathBase[[ #
.[[# $
HasValue[[$ ,
&&[[- /
resolvedPath\\  
.\\  !

StartsWith\\! +
(\\+ ,
requestPathBase\\, ;
.\\; <
Value\\< A
,\\A B
StringComparison\\C S
.\\S T
OrdinalIgnoreCase\\T e
)\\e f
)\\f g
{]] 
resolvedPath^^  
=^^! "
resolvedPath^^# /
.^^/ 0
	Substring^^0 9
(^^9 :
requestPathBase^^: I
.^^I J
Value^^J O
.^^O P
Length^^P V
)^^V W
;^^W X
cacheEntryOptions__ %
.__% &
AddExpirationToken__& 8
(__8 9
fileProvider__9 E
.__E F
Watch__F K
(__K L
resolvedPath__L X
)__X Y
)__Y Z
;__Z [
fileInfo`` 
=`` 
fileProvider`` +
.``+ ,
GetFileInfo``, 7
(``7 8
resolvedPath``8 D
)``D E
;``E F
}aa 
ifdd 
(dd 
!dd 
fileInfodd 
.dd 
Existsdd $
&&dd% '
fileProvideree  
isee! #$
IVirtualPathBaseProvideree$ <#
virtualPathBaseProvideree= T
&&eeU W#
virtualPathBaseProviderff +
.ff+ ,
VirtualPathBaseff, ;
.ff; <
HasValueff< D
&&ffE G
resolvedPathgg  
.gg  !

StartsWithgg! +
(gg+ ,#
virtualPathBaseProvidergg, C
.ggC D
VirtualPathBaseggD S
.ggS T
ValueggT Y
,ggY Z
StringComparisongg[ k
.ggk l
OrdinalIgnoreCaseggl }
)gg} ~
)gg~ 
{hh 
resolvedPathii  
=ii! "
resolvedPathii# /
.ii/ 0
	Substringii0 9
(ii9 :#
virtualPathBaseProviderii: Q
.iiQ R
VirtualPathBaseiiR a
.iia b
Valueiib g
.iig h
Lengthiih n
)iin o
;iio p
cacheEntryOptionsjj %
.jj% &
AddExpirationTokenjj& 8
(jj8 9
fileProviderjj9 E
.jjE F
WatchjjF K
(jjK L
resolvedPathjjL X
)jjX Y
)jjY Z
;jjZ [
fileInfokk 
=kk 
fileProviderkk +
.kk+ ,
GetFileInfokk, 7
(kk7 8
resolvedPathkk8 D
)kkD E
;kkE F
}ll 
ifnn 
(nn 
fileInfonn 
.nn 
Existsnn #
)nn# $
{oo 
valuepp 
=pp 
GetHashForFilepp *
(pp* +
fileInfopp+ 3
)pp3 4
;pp4 5
cacheEntryOptionsqq %
.qq% &
SetSizeqq& -
(qq- .
valueqq. 3
.qq3 4
Lengthqq4 :
*qq; <
sizeofqq= C
(qqC D
charqqD H
)qqH I
)qqI J
;qqJ K
iftt 
(tt 
fileProvidertt $
istt% '%
IModuleStaticFileProvidertt( A
)ttA B
{uu 
_sharedCachevv $
.vv$ %
Setvv% (
(vv( )
resolvedPathvv) 5
,vv5 6
valuevv7 <
,vv< =
cacheEntryOptionsvv> O
)vvO P
;vvP Q
}ww 
elsexx 
{yy 
_cachezz 
.zz 
Setzz "
(zz" #
cacheKeyzz# +
,zz+ ,
valuezz- 2
,zz2 3
cacheEntryOptionszz4 E
)zzE F
;zzF G
}{{ 
return}} 
QueryHelpers}} '
.}}' (
AddQueryString}}( 6
(}}6 7
path}}7 ;
,}}; <

VersionKey}}= G
,}}G H
value}}I N
)}}N O
;}}O P
}~~ 
} 
cacheEntryOptions
�� 
.
�� 
SetSize
�� %
(
��% &
$num
��& '
)
��' (
;
��( )
_cache
�� 
.
�� 
Set
�� 
(
�� 
cacheKey
�� 
,
��  
String
��! '
.
��' (
Empty
��( -
,
��- .
cacheEntryOptions
��/ @
)
��@ A
;
��A B
return
�� 
path
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
string
�� 
GetHashForFile
�� ,
(
��, -
	IFileInfo
��- 6
fileInfo
��7 ?
)
��? @
{
�� 	
using
�� 
(
�� 
var
�� 
sha256
�� 
=
�� 
SHA256
��  &
.
��& '
Create
��' -
(
��- .
)
��. /
)
��/ 0
{
�� 
using
�� 
(
�� 
var
�� 

readStream
�� %
=
��& '
fileInfo
��( 0
.
��0 1
CreateReadStream
��1 A
(
��A B
)
��B C
)
��C D
{
�� 
var
�� 
hash
�� 
=
�� 
sha256
�� %
.
��% &
ComputeHash
��& 1
(
��1 2

readStream
��2 <
)
��< =
;
��= >
return
�� 
WebEncoders
�� &
.
��& '
Base64UrlEncode
��' 6
(
��6 7
hash
��7 ;
)
��; <
;
��< =
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �j
|C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\ShellViewFeatureProvider.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class $
ShellViewFeatureProvider )
:* +'
IApplicationFeatureProvider, G
<G H
ViewsFeatureH T
>T U
,U V'
IApplicationFeatureProviderW r
<r s$
DevelopmentViewsFeature	s �
>
� �
{ 
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
private "
ApplicationPartManager &#
_applicationPartManager' >
;> ?
private 
IEnumerable 
< '
IApplicationFeatureProvider 7
<7 8
ViewsFeature8 D
>D E
>E F
_featureProvidersG X
;X Y
public $
ShellViewFeatureProvider '
(' (
IServiceProvider( 8
services9 A
)A B
{ 	
_hostingEnvironment 
=  !
services" *
.* +
GetRequiredService+ =
<= >
IHostEnvironment> N
>N O
(O P
)P Q
;Q R
_applicationContext 
=  !
services" *
.* +
GetRequiredService+ =
<= >
IApplicationContext> Q
>Q R
(R S
)S T
;T U
} 	
public 
void 
PopulateFeature #
(# $
IEnumerable$ /
</ 0
ApplicationPart0 ?
>? @
partsA F
,F G
ViewsFeatureH T
featureU \
)\ ]
{ 	 
EnsureScopedServices    
(    !
)  ! "
;  " ##
PopulateFeatureInternal"" #
(""# $
parts""$ )
,"") *
feature""+ 2
)""2 3
;""3 4
foreach%% 
(%% 
var%% 
provider%% !
in%%" $
_featureProviders%%% 6
)%%6 7
{&& 
provider'' 
.'' 
PopulateFeature'' (
(''( )
parts'') .
,''. /
feature''0 7
)''7 8
;''8 9
}(( 
})) 	
public++ 
void++ 
PopulateFeature++ #
(++# $
IEnumerable++$ /
<++/ 0
ApplicationPart++0 ?
>++? @
parts++A F
,++F G#
DevelopmentViewsFeature++H _#
developmentViewsFeature++` w
)++w x
{,, 	 
EnsureScopedServices--  
(--  !
)--! "
;--" #
var00 
refsFolderExists00  
=00! "
	Directory00# ,
.00, -
Exists00- 3
(003 4
Path004 8
.008 9
Combine009 @
(00@ A
	AppDomain00A J
.00J K
CurrentDomain00K X
.00X Y
BaseDirectory00Y f
,00f g
$str00h n
)00n o
)00o p
;00p q
if33 
(33 
_hostingEnvironment33 #
.33# $
IsDevelopment33$ 1
(331 2
)332 3
&&334 6
refsFolderExists337 G
)33G H
{44 
var55 
viewsFeature55  
=55! "
new55# &
ViewsFeature55' 3
(553 4
)554 5
;555 6#
PopulateFeatureInternal66 '
(66' (
parts66( -
,66- .
viewsFeature66/ ;
)66; <
;66< =
foreach99 
(99 
var99 
provider99 %
in99& (
_featureProviders99) :
)99: ;
{:: 
provider;; 
.;; 
PopulateFeature;; ,
(;;, -
parts;;- 2
,;;2 3
viewsFeature;;4 @
);;@ A
;;;A B
}<< 
foreach>> 
(>> 
var>> 

descriptor>> '
in>>( *
viewsFeature>>+ 7
.>>7 8
ViewDescriptors>>8 G
)>>G H
{?? #
developmentViewsFeature@@ +
.@@+ ,
ViewDescriptors@@, ;
.@@; <
Add@@< ?
(@@? @

descriptor@@@ J
)@@J K
;@@K L
}AA 
}BB 
}CC 	
privateEE 
voidEE #
PopulateFeatureInternalEE ,
(EE, -
IEnumerableEE- 8
<EE8 9
ApplicationPartEE9 H
>EEH I
partsEEJ O
,EEO P
ViewsFeatureEEQ ]
featureEE^ e
)EEe f
{FF 	
varHH 
mvcFeatureProvidersHH #
=HH$ %#
_applicationPartManagerHH& =
.HH= >
FeatureProvidersHH> N
.II 
OfTypeII 
<II '
IApplicationFeatureProviderII 3
<II3 4
ViewsFeatureII4 @
>II@ A
>IIA B
(IIB C
)IIC D
.JJ 
WhereJJ 
(JJ 
pJJ 
=>JJ 
pJJ 
.JJ 
GetTypeJJ %
(JJ% &
)JJ& '
!=JJ( *
typeofJJ+ 1
(JJ1 2$
ShellViewFeatureProviderJJ2 J
)JJJ K
)JJK L
;JJL M
varLL 
modulesLL 
=LL 
_applicationContextLL -
.LL- .
ApplicationLL. 9
.LL9 :
ModulesLL: A
;LLA B
varMM 
moduleFeatureMM 
=MM 
newMM  #
ViewsFeatureMM$ 0
(MM0 1
)MM1 2
;MM2 3
varOO 
refsFolderExistsOO  
=OO! "
	DirectoryOO# ,
.OO, -
ExistsOO- 3
(OO3 4
PathOO4 8
.OO8 9
CombineOO9 @
(OO@ A
	AppDomainOOA J
.OOJ K
CurrentDomainOOK X
.OOX Y
BaseDirectoryOOY f
,OOf g
$strOOh n
)OOn o
)OOo p
;OOp q
foreachQQ 
(QQ 
varQQ 
moduleQQ 
inQQ  "
modulesQQ# *
)QQ* +
{RR 
ifTT 
(TT 
PathTT 
.TT 
GetDirectoryNameTT )
(TT) *
moduleTT* 0
.TT0 1
AssemblyTT1 9
.TT9 :
LocationTT: B
)TTB C
==TTD F
PathTTG K
.TTK L
GetDirectoryNameTTL \
(TT\ ]
_applicationContextTT] p
.TTp q
ApplicationTTq |
.TT| }
Assembly	TT} �
.
TT� �
Location
TT� �
)
TT� �
)
TT� �
{UU 
ifWW 
(WW 
_hostingEnvironmentWW +
.WW+ ,
IsDevelopmentWW, 9
(WW9 :
)WW: ;
&&WW< >
refsFolderExistsWW? O
)WWO P
{XX 
continueYY  
;YY  !
}ZZ 
}[[ 
var__ 
assembliesWithViews__ '
=__( )
new__* -
List__. 2
<__2 3
Assembly__3 ;
>__; <
(__< =
)__= >
;__> ?
varaa $
relatedAssemblyAttributeaa ,
=aa- .
moduleaa/ 5
.aa5 6
Assemblyaa6 >
.aa> ?
GetCustomAttributeaa? Q
<aaQ R$
RelatedAssemblyAttributeaaR j
>aaj k
(aak l
)aal m
;aam n
ifdd 
(dd $
relatedAssemblyAttributedd ,
!=dd- /
nulldd0 4
)dd4 5
{ee 
varff #
precompiledAssemblyPathff /
=ff0 1
Pathff2 6
.ff6 7
Combineff7 >
(ff> ?
Pathff? C
.ffC D
GetDirectoryNameffD T
(ffT U
moduleffU [
.ff[ \
Assemblyff\ d
.ffd e
Locationffe m
)ffm n
,ffn o%
relatedAssemblyAttribute	ffp �
.
ff� �
AssemblyFileName
ff� �
+
ff� �
$str
ff� �
)
ff� �
;
ff� �
ifhh 
(hh 
Filehh 
.hh 
Existshh #
(hh# $#
precompiledAssemblyPathhh$ ;
)hh; <
)hh< =
{ii 
tryjj 
{kk 
varll 
assemblyll  (
=ll) *
Assemblyll+ 3
.ll3 4
LoadFilell4 <
(ll< =#
precompiledAssemblyPathll= T
)llT U
;llU V
assembliesWithViewsmm /
.mm/ 0
Addmm0 3
(mm3 4
assemblymm4 <
)mm< =
;mm= >
}nn 
catchoo 
(oo 
FileLoadExceptionoo 0
)oo0 1
{pp 
}rr 
}ss 
}tt 
ifxx 
(xx 
modulexx 
.xx 
Assemblyxx #
.xx# $
GetCustomAttributesxx$ 7
<xx7 8&
RazorCompiledItemAttributexx8 R
>xxR S
(xxS T
)xxT U
.xxU V
AnyxxV Y
(xxY Z
)xxZ [
)xx[ \
{yy 
assembliesWithViewszz '
.zz' (
Addzz( +
(zz+ ,
modulezz, 2
.zz2 3
Assemblyzz3 ;
)zz; <
;zz< =
}{{ 
foreach}} 
(}} 
var}} 
assembly}} %
in}}& (
assembliesWithViews}}) <
)}}< =
{~~ 
var 
applicationPart '
=( )
new* -
ApplicationPart. =
[= >
]> ?
{@ A
newB E%
CompiledRazorAssemblyPartF _
(_ `
assembly` h
)h i
}j k
;k l
foreach
�� 
(
�� 
var
��  
provider
��! )
in
��* ,!
mvcFeatureProviders
��- @
)
��@ A
{
�� 
provider
��  
.
��  !
PopulateFeature
��! 0
(
��0 1
applicationPart
��1 @
,
��@ A
moduleFeature
��B O
)
��O P
;
��P Q
}
�� 
foreach
�� 
(
�� 
var
��  

descriptor
��! +
in
��, .
moduleFeature
��/ <
.
��< =
ViewDescriptors
��= L
)
��L M
{
�� 

descriptor
�� "
.
��" #
RelativePath
��# /
=
��0 1
$char
��2 5
+
��6 7
module
��8 >
.
��> ?
SubPath
��? F
+
��G H

descriptor
��I S
.
��S T
RelativePath
��T `
;
��` a
feature
�� 
.
��  
ViewDescriptors
��  /
.
��/ 0
Add
��0 3
(
��3 4

descriptor
��4 >
)
��> ?
;
��? @
}
�� 
if
�� 
(
�� 
module
�� 
.
�� 
Name
�� #
==
��$ &!
_hostingEnvironment
��' :
.
��: ;
ApplicationName
��; J
)
��J K
{
�� 
foreach
�� 
(
��  !
var
��! $
provider
��% -
in
��. 0!
mvcFeatureProviders
��1 D
)
��D E
{
�� 
provider
�� $
.
��$ %
PopulateFeature
��% 4
(
��4 5
applicationPart
��5 D
,
��D E
moduleFeature
��F S
)
��S T
;
��T U
}
�� 
foreach
�� 
(
��  !
var
��! $

descriptor
��% /
in
��0 2
moduleFeature
��3 @
.
��@ A
ViewDescriptors
��A P
)
��P Q
{
�� 
feature
�� #
.
��# $
ViewDescriptors
��$ 3
.
��3 4
Add
��4 7
(
��7 8

descriptor
��8 B
)
��B C
;
��C D
}
�� 
}
�� 
moduleFeature
�� !
.
��! "
ViewDescriptors
��" 1
.
��1 2
Clear
��2 7
(
��7 8
)
��8 9
;
��9 :
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� "
EnsureScopedServices
�� )
(
��) *
)
��* +
{
�� 	
var
�� 
services
�� 
=
�� 

ShellScope
�� %
.
��% &
Services
��& .
;
��. /
if
�� 
(
�� 
services
�� 
!=
�� 
null
��  
&&
��! #
_featureProviders
��$ 5
==
��6 8
null
��9 =
)
��= >
{
�� 
lock
�� 
(
�� 
this
�� 
)
�� 
{
�� 
if
�� 
(
�� 
_featureProviders
�� )
==
��* ,
null
��- 1
)
��1 2
{
�� %
_applicationPartManager
�� /
=
��0 1
services
��2 :
.
��: ; 
GetRequiredService
��; M
<
��M N$
ApplicationPartManager
��N d
>
��d e
(
��e f
)
��f g
;
��g h
_featureProviders
�� )
=
��* +
services
��, 4
.
��4 5
GetServices
��5 @
<
��@ A)
IApplicationFeatureProvider
��A \
<
��\ ]
ViewsFeature
��] i
>
��i j
>
��j k
(
��k l
)
��l m
;
��m n
}
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �Q
kC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Startup.cs
	namespace 	
OrchardCore
 
. 
Mvc 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
int 
Order !
=>" $
-% &
$num& *
;* +
public 
override 
int 
ConfigureOrder *
=>+ -
$num. 2
;2 3
private!! 
readonly!! 
IHostEnvironment!! )
_hostingEnvironment!!* =
;!!= >
private"" 
readonly"" 
IServiceProvider"" )
_serviceProvider""* :
;"": ;
public$$ 
Startup$$ 
($$ 
IHostEnvironment$$ '
hostingEnvironment$$( :
,$$: ;
IServiceProvider$$< L
serviceProvider$$M \
)$$\ ]
{%% 	
_hostingEnvironment&& 
=&&  !
hostingEnvironment&&" 4
;&&4 5
_serviceProvider'' 
='' 
serviceProvider'' .
;''. /
}(( 	
public** 
override** 
void** 
	Configure** &
(**& '
IApplicationBuilder**' :
app**; >
,**> ?!
IEndpointRouteBuilder**@ U
routes**V \
,**\ ]
IServiceProvider**^ n
serviceProvider**o ~
)**~ 
{++ 	
var,, 
descriptors,, 
=,, 
serviceProvider,, -
.,,- .
GetRequiredService,,. @
<,,@ A/
#IActionDescriptorCollectionProvider,,A d
>,,d e
(,,e f
),,f g
.-- 
ActionDescriptors-- "
.--" #
Items--# (
... 
OfType.. 
<.. &
ControllerActionDescriptor.. 2
>..2 3
(..3 4
)..4 5
.// 
ToArray// 
(// 
)// 
;00 
var22 
mappers22 
=22 
serviceProvider22 )
.22) *
GetServices22* 5
<225 6&
IAreaControllerRouteMapper226 P
>22P Q
(22Q R
)22R S
.22S T
OrderBy22T [
(22[ \
x22\ ]
=>22^ `
x22a b
.22b c
Order22c h
)22h i
;22i j
foreach44 
(44 
var44 

descriptor44 #
in44$ &
descriptors44' 2
)442 3
{55 
if66 
(66 
!66 

descriptor66 
.66  
RouteValues66  +
.66+ ,
ContainsKey66, 7
(667 8
$str668 >
)66> ?
)66? @
{77 
continue88 
;88 
}99 
foreach;; 
(;; 
var;; 
mapper;; #
in;;$ &
mappers;;' .
);;. /
{<< 
if== 
(== 
mapper== 
.== %
TryMapAreaControllerRoute== 8
(==8 9
routes==9 ?
,==? @

descriptor==A K
)==K L
)==L M
{>> 
break?? 
;?? 
}@@ 
}AA 
}BB 
routesDD 
.DD 
MapRazorPagesDD  
(DD  !
)DD! "
;DD" #
}EE 	
publicGG 
overrideGG 
voidGG 
ConfigureServicesGG .
(GG. /
IServiceCollectionGG/ A
servicesGGB J
)GGJ K
{HH 	
servicesJJ 
.JJ 
AddSingletonJJ !
(JJ! "
newJJ" %"
ApplicationPartManagerJJ& <
(JJ< =
)JJ= >
)JJ> ?
;JJ? @
varLL 
builderLL 
=LL 
servicesLL "
.LL" #
AddMvcLL# )
(LL) *
optionsLL* 1
=>LL2 4
{MM 
optionsQQ 
.QQ 
FiltersQQ 
.QQ  
AddQQ  #
(QQ# $
typeofQQ$ *
(QQ* +1
%AutoValidateAntiforgeryTokenAttributeQQ+ P
)QQP Q
,QQQ R
$numQQS V
)QQV W
;QQW X
optionsTT 
.TT  
ModelBinderProvidersTT ,
.TT, -
InsertTT- 3
(TT3 4
$numTT4 5
,TT5 6
newTT7 :(
CheckMarkModelBinderProviderTT; W
(TTW X
)TTX Y
)TTY Z
;TTZ [
}UU 
)UU 
;UU 
servicesXX 
.XX 
AddSingletonXX !
<XX! "
MatcherPolicyXX" /
,XX/ 0*
FormValueRequiredMatcherPolicyXX1 O
>XXO P
(XXP Q
)XXQ R
;XXR S
builder\\ 
.\\ 
AddNewtonsoftJson\\ %
(\\% &
)\\& '
;\\' (
servicesaa 
.aa  
AddModularRazorPagesaa )
(aa) *
)aa* +
;aa+ ,$
AddModularFrameworkPartscc $
(cc$ %
_serviceProvidercc% 5
,cc5 6
buildercc7 >
.cc> ?
PartManagercc? J
)ccJ K
;ccK L
builderff 
.ff 
AddViewLocalizationff '
(ff' (
)ff( )
;ff) *
buildergg 
.gg *
AddDataAnnotationsLocalizationgg 2
(gg2 3
)gg3 4
;gg4 5
servicesii 
.ii 
TryAddEnumerableii %
(ii% &
ServiceDescriptorjj !
.jj! "
	Transientjj" +
<jj+ ,
IConfigureOptionsjj, =
<jj= >"
RazorViewEngineOptionsjj> T
>jjT U
,jjU V.
"ModularRazorViewEngineOptionsSetupjjW y
>jjy z
(jjz {
)jj{ |
)jj| }
;jj} ~
varmm 
refsFolderExistsmm  
=mm! "
	Directorymm# ,
.mm, -
Existsmm- 3
(mm3 4
Pathmm4 8
.mm8 9
Combinemm9 @
(mm@ A
	AppDomainmmA J
.mmJ K
CurrentDomainmmK X
.mmX Y
BaseDirectorymmY f
,mmf g
$strmmh n
)mmn o
)mmo p
;mmp q
ifoo 
(oo 
_hostingEnvironmentoo #
.oo# $
IsDevelopmentoo$ 1
(oo1 2
)oo2 3
&&oo4 6
refsFolderExistsoo7 G
)ooG H
{pp 
builderqq 
.qq &
AddRazorRuntimeCompilationqq 2
(qq2 3
)qq3 4
;qq4 5
servicestt 
.tt 
AddSingletontt %
<tt% &!
IViewCompilerProvidertt& ;
,tt; <&
SharedViewCompilerProvidertt= W
>ttW X
(ttX Y
)ttY Z
;ttZ [
}uu 
servicesww 
.ww 
TryAddEnumerableww %
(ww% &
ServiceDescriptorxx !
.xx! "
	Transientxx" +
<xx+ ,
IConfigureOptionsxx, =
<xx= >-
!MvcRazorRuntimeCompilationOptionsxx> _
>xx_ `
,xx` a(
RazorCompilationOptionsSetupxxb ~
>xx~ 
(	xx �
)
xx� �
)
xx� �
;
xx� �
serviceszz 
.zz 
AddSingletonzz !
<zz! "0
$RazorCompilationFileProviderAccessorzz" F
>zzF G
(zzG H
)zzH I
;zzI J
services|| 
.|| 
TryAddSingleton|| $
<||$ %"
IActionContextAccessor||% ;
,||; <!
ActionContextAccessor||= R
>||R S
(||S T
)||T U
;||U V
services 
. 
Replace 
( 
ServiceDescriptor .
.. /
	Singleton/ 8
<8 9 
IFileVersionProvider9 M
,M N$
ShellFileVersionProviderO g
>g h
(h i
)i j
)j k
;k l
services
�� 
.
�� 
AddTransient
�� !
<
��! "(
IAreaControllerRouteMapper
��" <
,
��< =.
 DefaultAreaControllerRouteMapper
��> ^
>
��^ _
(
��_ `
)
��` a
;
��a b&
AddMvcModuleCoreServices
�� $
(
��$ %
services
��% -
)
��- .
;
��. /
}
�� 	
internal
�� 
static
�� 
void
�� &
AddModularFrameworkParts
�� 5
(
��5 6
IServiceProvider
��6 F
services
��G O
,
��O P$
ApplicationPartManager
��Q g
manager
��h o
)
��o p
{
�� 	
manager
�� 
.
�� 
ApplicationParts
�� $
.
��$ %
Insert
��% +
(
��+ ,
$num
��, -
,
��- .
new
��/ 2)
ShellFeatureApplicationPart
��3 N
(
��N O
)
��O P
)
��P Q
;
��Q R
manager
�� 
.
�� 
FeatureProviders
�� $
.
��$ %
Add
��% (
(
��( )
new
��) ,&
ShellViewFeatureProvider
��- E
(
��E F
services
��F N
)
��N O
)
��O P
;
��P Q
}
�� 	
internal
�� 
static
�� 
void
�� &
AddMvcModuleCoreServices
�� 5
(
��5 6 
IServiceCollection
��6 H
services
��I Q
)
��Q R
{
�� 	
services
�� 
.
�� 
	AddScoped
�� 
<
�� +
IViewLocationExpanderProvider
�� <
,
��< =3
%ComponentViewLocationExpanderProvider
��> c
>
��c d
(
��d e
)
��e f
;
��f g
services
�� 
.
�� 
	AddScoped
�� 
<
�� +
IViewLocationExpanderProvider
�� <
,
��< =0
"SharedViewLocationExpanderProvider
��> `
>
��` a
(
��a b
)
��b c
;
��c d
services
�� 
.
�� 
TryAddEnumerable
�� %
(
��% &
ServiceDescriptor
�� !
.
��! "
	Singleton
��" +
<
��+ ,'
IApplicationModelProvider
��, E
,
��E F-
ModularApplicationModelProvider
��G f
>
��f g
(
��g h
)
��h i
)
��i j
;
��j k
}
�� 	
}
�� 
}�� �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Utilities\ControllerTypeExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Core 
. 
	Utilities (
{ 
public 

static 
class $
ControllerTypeExtensions 0
{ 
public 
static 
string 
ControllerName +
(+ ,
this, 0
Type1 5
controllerType6 D
)D E
{		 	
if

 
(

 
!

 
typeof

 
(

 

Controller

 "
)

" #
.

# $
IsAssignableFrom

$ 4
(

4 5
controllerType

5 C
)

C D
)

D E
{ 
throw 
new 
ArgumentException +
(+ ,
$str, S
+T U
nameofV \
(\ ]

Controller] g
)g h
,h i
nameofj p
(p q
controllerTypeq 
)	 �
)
� �
;
� �
} 
return 
controllerType !
.! "
Name" &
.& '
EndsWith' /
(/ 0
nameof0 6
(6 7

Controller7 A
)A B
,B C
StringComparisonD T
.T U
OrdinalIgnoreCaseU f
)f g
? 
controllerType  
.  !
Name! %
.% &
	Substring& /
(/ 0
$num0 1
,1 2
controllerType3 A
.A B
NameB F
.F G
LengthG M
-N O
nameofP V
(V W

ControllerW a
)a b
.b c
Lengthc i
)i j
: 
controllerType  
.  !
Name! %
;% &
} 	
} 
} ��
~C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Utilities\StringExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
	Utilities #
{ 
public 

static 
class 
StringExtensions (
{ 
public 
static 
string 
CamelFriendly *
(* +
this+ /
string0 6
camel7 <
)< =
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
camel* /
)/ 0
)0 1
{ 
return 
$str 
; 
} 
using 
var 
sb 
= 
ZString "
." #
CreateStringBuilder# 6
(6 7
)7 8
;8 9
for 
( 
var 
i 
= 
$num 
; 
i 
< 
camel  %
.% &
Length& ,
;, -
++. 0
i0 1
)1 2
{ 
var 
c 
= 
camel 
[ 
i 
]  
;  !
if 
( 
i 
!= 
$num 
&& 
char "
." #
IsUpper# *
(* +
c+ ,
), -
)- .
{ 
sb 
. 
Append 
( 
$char !
)! "
;" #
} 
sb   
.   
Append   
(   
c   
)   
;   
}!! 
return## 
sb## 
.## 
ToString## 
(## 
)##  
;##  !
}$$ 	
public&& 
static&& 
string&& 
	Ellipsize&& &
(&&& '
this&&' +
string&&, 2
text&&3 7
,&&7 8
int&&9 <
characterCount&&= K
)&&K L
{'' 	
return(( 
text(( 
.(( 
	Ellipsize(( !
(((! "
characterCount((" 0
,((0 1
$str((2 @
)((@ A
;((A B
})) 	
public++ 
static++ 
string++ 
	Ellipsize++ &
(++& '
this++' +
string++, 2
text++3 7
,++7 8
int++9 <
characterCount++= K
,++K L
string++M S
ellipsis++T \
,++\ ]
bool++^ b
wordBoundary++c o
=++p q
false++r w
)++w x
{,, 	
if-- 
(-- 
string-- 
.-- 
IsNullOrWhiteSpace-- )
(--) *
text--* .
)--. /
)--/ 0
{.. 
return// 
$str// 
;// 
}00 
if22 
(22 
characterCount22 
<22  
$num22! "
||22# %
text22& *
.22* +
Length22+ 1
<=222 4
characterCount225 C
)22C D
return33 
text33 
;33 
var66 
backup66 
=66 
characterCount66 '
;66' (
while77 
(77 
characterCount77 !
>77" #
$num77$ %
&&77& (
text77) -
[77- .
characterCount77. <
-77= >
$num77? @
]77@ A
.77A B
IsLetter77B J
(77J K
)77K L
)77L M
{88 
characterCount99 
--99  
;99  !
}:: 
while== 
(== 
characterCount== !
>==" #
$num==$ %
&&==& (
text==) -
[==- .
characterCount==. <
-=== >
$num==? @
]==@ A
.==A B
IsSpace==B I
(==I J
)==J K
)==K L
{>> 
characterCount?? 
--??  
;??  !
}@@ 
ifCC 
(CC 
characterCountCC 
==CC !
$numCC" #
&&CC$ &
!CC' (
wordBoundaryCC( 4
)CC4 5
{DD 
characterCountEE 
=EE  
backupEE! '
;EE' (
}FF 
varHH 
trimmedHH 
=HH 
textHH 
.HH 
	SubstringHH (
(HH( )
$numHH) *
,HH* +
characterCountHH, :
)HH: ;
;HH; <
returnII 
trimmedII 
+II 
ellipsisII %
;II% &
}JJ 	
publicLL 
staticLL 
stringLL 
HtmlClassifyLL )
(LL) *
thisLL* .
stringLL/ 5
textLL6 :
)LL: ;
{MM 	
ifNN 
(NN 
stringNN 
.NN 
IsNullOrWhiteSpaceNN )
(NN) *
textNN* .
)NN. /
)NN/ 0
{OO 
returnPP 
$strPP 
;PP 
}QQ 
varSS 

friendlierSS 
=SS 
textSS !
.SS! "
CamelFriendlySS" /
(SS/ 0
)SS0 1
;SS1 2
varUU 
resultUU 
=UU 
newUU 
charUU !
[UU! "

friendlierUU" ,
.UU, -
LengthUU- 3
]UU3 4
;UU4 5
varWW 
cursorWW 
=WW 
$numWW 
;WW 
varXX 
previousIsNotLetterXX #
=XX$ %
falseXX& +
;XX+ ,
forYY 
(YY 
varYY 
iYY 
=YY 
$numYY 
;YY 
iYY 
<YY 

friendlierYY  *
.YY* +
LengthYY+ 1
;YY1 2
iYY3 4
++YY4 6
)YY6 7
{ZZ 
char[[ 
current[[ 
=[[ 

friendlier[[ )
[[[) *
i[[* +
][[+ ,
;[[, -
if\\ 
(\\ 
IsLetter\\ 
(\\ 
current\\ $
)\\$ %
||\\& (
(\\) *
char\\* .
.\\. /
IsDigit\\/ 6
(\\6 7
current\\7 >
)\\> ?
&&\\@ B
cursor\\C I
>\\J K
$num\\L M
)\\M N
)\\N O
{]] 
if^^ 
(^^ 
previousIsNotLetter^^ +
&&^^, .
i^^/ 0
!=^^1 3
$num^^4 5
&&^^6 8
cursor^^9 ?
>^^@ A
$num^^B C
)^^C D
{__ 
result`` 
[`` 
cursor`` %
++``% '
]``' (
=``) *
$char``+ .
;``. /
}aa 
resultcc 
[cc 
cursorcc !
++cc! #
]cc# $
=cc% &
charcc' +
.cc+ ,
ToLowerInvariantcc, <
(cc< =
currentcc= D
)ccD E
;ccE F
previousIsNotLetterdd '
=dd( )
falsedd* /
;dd/ 0
}ee 
elseff 
{gg 
previousIsNotLetterhh '
=hh( )
truehh* .
;hh. /
}ii 
}jj 
returnll 
newll 
stringll 
(ll 
resultll $
,ll$ %
$numll& '
,ll' (
cursorll) /
)ll/ 0
;ll0 1
}mm 	
publicoo 
staticoo 
LocalizedStringoo %
	OrDefaultoo& /
(oo/ 0
thisoo0 4
stringoo5 ;
textoo< @
,oo@ A
LocalizedStringooB Q
defaultValueooR ^
)oo^ _
{pp 	
returnqq 
stringqq 
.qq 
IsNullOrEmptyqq '
(qq' (
textqq( ,
)qq, -
?rr 
defaultValuerr 
:ss 
newss 
LocalizedStringss %
(ss% &
nullss& *
,ss* +
textss, 0
)ss0 1
;ss1 2
}tt 	
publicvv 
staticvv 
stringvv 

RemoveTagsvv '
(vv' (
thisvv( ,
stringvv- 3
htmlvv4 8
,vv8 9
boolvv: >

htmlDecodevv? I
=vvJ K
falsevvL Q
)vvQ R
{ww 	
ifxx 
(xx 
Stringxx 
.xx 
IsNullOrEmptyxx $
(xx$ %
htmlxx% )
)xx) *
)xx* +
{yy 
returnzz 
Stringzz 
.zz 
Emptyzz #
;zz# $
}{{ 
var}} 
result}} 
=}} 
new}} 
char}} !
[}}! "
html}}" &
.}}& '
Length}}' -
]}}- .
;}}. /
var 
cursor 
= 
$num 
; 
var
�� 
inside
�� 
=
�� 
false
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
html
��  $
.
��$ %
Length
��% +
;
��+ ,
i
��- .
++
��. 0
)
��0 1
{
�� 
char
�� 
current
�� 
=
�� 
html
�� #
[
��# $
i
��$ %
]
��% &
;
��& '
switch
�� 
(
�� 
current
�� 
)
��  
{
�� 
case
�� 
$char
�� 
:
�� 
inside
�� 
=
��  
true
��! %
;
��% &
continue
��  
;
��  !
case
�� 
$char
�� 
:
�� 
inside
�� 
=
��  
false
��! &
;
��& '
continue
��  
;
��  !
}
�� 
if
�� 
(
�� 
!
�� 
inside
�� 
)
�� 
{
�� 
result
�� 
[
�� 
cursor
�� !
++
��! #
]
��# $
=
��% &
current
��' .
;
��. /
}
�� 
}
�� 
var
�� 
stringResult
�� 
=
�� 
new
�� "
string
��# )
(
��) *
result
��* 0
,
��0 1
$num
��2 3
,
��3 4
cursor
��5 ;
)
��; <
;
��< =
if
�� 
(
�� 

htmlDecode
�� 
)
�� 
{
�� 
stringResult
�� 
=
�� 

WebUtility
�� )
.
��) *

HtmlDecode
��* 4
(
��4 5
stringResult
��5 A
)
��A B
;
��B C
}
�� 
return
�� 
stringResult
�� 
;
��  
}
�� 	
public
�� 
static
�� 
string
�� !
ReplaceNewLinesWith
�� 0
(
��0 1
this
��1 5
string
��6 <
text
��= A
,
��A B
string
��C I
replacement
��J U
)
��U V
{
�� 	
return
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� ,
(
��, -
text
��- 1
)
��1 2
?
�� 
String
�� 
.
��  
Empty
��  %
:
�� 
text
�� 
.
�� 
Replace
�� %
(
��% &
$str
��& ,
,
��, -
$str
��. 4
)
��4 5
.
�� 
Replace
�� %
(
��% &
$str
��& *
,
��* +
String
��, 2
.
��2 3
Format
��3 9
(
��9 :
replacement
��: E
,
��E F
$str
��G M
)
��M N
)
��N O
.
�� 
Replace
�� %
(
��% &
$str
��& ,
,
��, -
String
��. 4
.
��4 5
Format
��5 ;
(
��; <
replacement
��< G
,
��G H
$str
��I O
)
��O P
)
��P Q
;
��Q R
}
�� 	
private
�� 
static
�� 
readonly
�� 
char
��  $
[
��$ %
]
��% &
validSegmentChars
��' 8
=
��9 :
$str
��; U
.
��U V
ToCharArray
��V a
(
��a b
)
��b c
;
��c d
public
�� 
static
�� 
bool
�� 
IsValidUrlSegment
�� ,
(
��, -
this
��- 1
string
��2 8
segment
��9 @
)
��@ A
{
�� 	
return
�� 
!
�� 
segment
�� 
.
�� 
Any
�� 
(
��  
validSegmentChars
��  1
)
��1 2
;
��2 3
}
�� 	
public
�� 
static
�� 
string
�� 

ToSafeName
�� '
(
��' (
this
��( ,
string
��- 3
name
��4 8
)
��8 9
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
name
��* .
)
��. /
)
��/ 0
{
�� 
return
�� 
string
�� 
.
�� 
Empty
�� #
;
��# $
}
�� 
name
�� 
=
�� 
RemoveDiacritics
�� #
(
��# $
name
��$ (
)
��( )
;
��) *
name
�� 
=
�� 
name
�� 
.
�� 
Strip
�� 
(
�� 
c
�� 
=>
��  "
!
�� 
c
�� 
.
�� 
IsLetter
�� 
(
�� 
)
�� 
&&
�� 
!
�� 
char
�� 
.
�� 
IsDigit
��  
(
��  !
c
��! "
)
��" #
)
�� 
;
�� 
name
�� 
=
�� 
name
�� 
.
�� 
Trim
�� 
(
�� 
)
�� 
;
�� 
while
�� 
(
�� 
name
�� 
.
�� 
Length
�� 
>
��  
$num
��! "
&&
��# %
!
��& '
IsLetter
��' /
(
��/ 0
name
��0 4
[
��4 5
$num
��5 6
]
��6 7
)
��7 8
)
��8 9
{
�� 
name
�� 
=
�� 
name
�� 
.
�� 
	Substring
�� %
(
��% &
$num
��& '
)
��' (
;
��( )
}
�� 
if
�� 
(
�� 
name
�� 
.
�� 
Length
�� 
>
�� 
$num
�� !
)
��! "
name
�� 
=
�� 
name
�� 
.
�� 
	Substring
�� %
(
��% &
$num
��& '
,
��' (
$num
��) ,
)
��, -
;
��- .
return
�� 
name
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
IsLetter
�� #
(
��# $
this
��$ (
char
��) -
c
��. /
)
��/ 0
{
�� 	
return
�� 
(
�� 
$char
�� 
<=
�� 
c
�� 
&&
�� 
c
��  !
<=
��" $
$char
��% (
)
��( )
||
��* ,
(
��- .
$char
��. 1
<=
��2 4
c
��5 6
&&
��7 9
c
��: ;
<=
��< >
$char
��? B
)
��B C
;
��C D
}
�� 	
public
�� 
static
�� 
bool
�� 
IsSpace
�� "
(
��" #
this
��# '
char
��( ,
c
��- .
)
��. /
{
�� 	
return
�� 
(
�� 
c
�� 
==
�� 
$char
�� 
||
��  
c
��! "
==
��# %
$char
��& *
||
��+ -
c
��. /
==
��0 2
$char
��3 7
||
��8 :
c
��; <
==
��= ?
$char
��@ D
||
��E G
c
��H I
==
��J L
$char
��M P
)
��P Q
;
��Q R
}
�� 	
public
�� 
static
�� 
string
�� 
RemoveDiacritics
�� -
(
��- .
this
��. 2
string
��3 9
name
��: >
)
��> ?
{
�� 	
var
�� 
stFormD
�� 
=
�� 
name
�� 
.
�� 
	Normalize
�� (
(
��( )
NormalizationForm
��) :
.
��: ;
FormD
��; @
)
��@ A
;
��A B
var
�� 
sb
�� 
=
�� 
new
�� 
StringBuilder
�� &
(
��& '
)
��' (
;
��( )
foreach
�� 
(
�� 
var
�� 
t
�� 
in
�� 
stFormD
�� %
)
��% &
{
�� 
var
�� 
uc
�� 
=
�� 
CharUnicodeInfo
�� (
.
��( ) 
GetUnicodeCategory
��) ;
(
��; <
t
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
uc
�� 
!=
�� 
UnicodeCategory
�� )
.
��) *
NonSpacingMark
��* 8
)
��8 9
{
�� 
sb
�� 
.
�� 
Append
�� 
(
�� 
t
�� 
)
��  
;
��  !
}
�� 
}
�� 
return
�� 
(
�� 
sb
�� 
.
�� 
ToString
�� 
(
��  
)
��  !
.
��! "
	Normalize
��" +
(
��+ ,
NormalizationForm
��, =
.
��= >
FormC
��> C
)
��C D
)
��D E
;
��E F
}
�� 	
public
�� 
static
�� 
string
�� 
ReplaceDiacritics
�� .
(
��. /
this
��/ 3
string
��4 :
s
��; <
)
��< =
{
�� 	
var
�� 
stringBuilder
�� 
=
�� 
new
��  #
StringBuilder
��$ 1
(
��1 2
)
��2 3
;
��3 4
var
�� 
normalizedString
��  
=
��! "
s
��# $
.
��$ %
	Normalize
��% .
(
��. /
NormalizationForm
��/ @
.
��@ A
FormD
��A F
)
��F G
;
��G H
var
�� 
c
�� 
=
�� 
$char
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<=
��  
normalizedString
��! 1
.
��1 2
Length
��2 8
-
��9 :
$num
��; <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
c
�� 
=
�� 
normalizedString
�� $
[
��$ %
i
��% &
]
��& '
;
��' (
if
�� 
(
�� 
CharUnicodeInfo
�� #
.
��# $ 
GetUnicodeCategory
��$ 6
(
��6 7
c
��7 8
)
��8 9
!=
��: <
UnicodeCategory
��= L
.
��L M
NonSpacingMark
��M [
)
��[ \
{
�� 
stringBuilder
�� !
.
��! "
Append
��" (
(
��( )
c
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 
return
�� 
stringBuilder
��  
.
��  !
ToString
��! )
(
��) *
)
��* +
;
��+ ,
}
�� 	
public
�� 
static
�� 
string
�� 
Strip
�� "
(
��" #
this
��# '
string
��( .
subject
��/ 6
,
��6 7
params
��8 >
char
��? C
[
��C D
]
��D E
stripped
��F N
)
��N O
{
�� 	
if
�� 
(
�� 
stripped
�� 
==
�� 
null
��  
||
��! #
stripped
��$ ,
.
��, -
Length
��- 3
==
��4 6
$num
��7 8
||
��9 ;
string
��< B
.
��B C
IsNullOrEmpty
��C P
(
��P Q
subject
��Q X
)
��X Y
)
��Y Z
{
�� 
return
�� 
subject
�� 
;
�� 
}
�� 
var
�� 
result
�� 
=
�� 
new
�� 
char
�� !
[
��! "
subject
��" )
.
��) *
Length
��* 0
]
��0 1
;
��1 2
var
�� 
cursor
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
current
�� 
=
�� 
subject
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
Array
�� 
.
�� 
IndexOf
�� !
(
��! "
stripped
��" *
,
��* +
current
��, 3
)
��3 4
<
��5 6
$num
��7 8
)
��8 9
{
�� 
result
�� 
[
�� 
cursor
�� !
++
��! #
]
��# $
=
��% &
current
��' .
;
��. /
}
�� 
}
�� 
return
�� 
new
�� 
string
�� 
(
�� 
result
�� $
,
��$ %
$num
��& '
,
��' (
cursor
��) /
)
��/ 0
;
��0 1
}
�� 	
public
�� 
static
�� 
string
�� 
Strip
�� "
(
��" #
this
��# '
string
��( .
subject
��/ 6
,
��6 7
Func
��8 <
<
��< =
char
��= A
,
��A B
bool
��C G
>
��G H
	predicate
��I R
)
��R S
{
�� 	
var
�� 
result
�� 
=
�� 
new
�� 
char
�� !
[
��! "
subject
��" )
.
��) *
Length
��* 0
]
��0 1
;
��1 2
var
�� 
cursor
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
current
�� 
=
�� 
subject
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
!
�� 
	predicate
�� 
(
�� 
current
�� &
)
��& '
)
��' (
{
�� 
result
�� 
[
�� 
cursor
�� !
++
��! #
]
��# $
=
��% &
current
��' .
;
��. /
}
�� 
}
�� 
return
�� 
new
�� 
string
�� 
(
�� 
result
�� $
,
��$ %
$num
��& '
,
��' (
cursor
��) /
)
��/ 0
;
��0 1
}
�� 	
public
�� 
static
�� 
bool
�� 
Any
�� 
(
�� 
this
�� #
string
��$ *
subject
��+ 2
,
��2 3
params
��4 :
char
��; ?
[
��? @
]
��@ A
chars
��B G
)
��G H
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
subject
��% ,
)
��, -
||
��. 0
chars
��1 6
==
��7 9
null
��: >
||
��? A
chars
��B G
.
��G H
Length
��H N
==
��O Q
$num
��R S
)
��S T
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
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
current
�� 
=
�� 
subject
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
Array
�� 
.
�� 
IndexOf
�� !
(
��! "
chars
��" '
,
��' (
current
��) 0
)
��0 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
All
�� 
(
�� 
this
�� #
string
��$ *
subject
��+ 2
,
��2 3
params
��4 :
char
��; ?
[
��? @
]
��@ A
chars
��B G
)
��G H
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
subject
��% ,
)
��, -
)
��- .
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
chars
�� 
==
�� 
null
�� 
||
��  
chars
��! &
.
��& '
Length
��' -
==
��. 0
$num
��1 2
)
��2 3
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
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
current
�� 
=
�� 
subject
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
Array
�� 
.
�� 
IndexOf
�� !
(
��! "
chars
��" '
,
��' (
current
��) 0
)
��0 1
<
��2 3
$num
��4 5
)
��5 6
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
string
�� 
	Translate
�� &
(
��& '
this
��' +
string
��, 2
subject
��3 :
,
��: ;
char
��< @
[
��@ A
]
��A B
from
��C G
,
��G H
char
��I M
[
��M N
]
��N O
to
��P R
)
��R S
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
subject
��% ,
)
��, -
)
��- .
{
�� 
return
�� 
subject
�� 
;
�� 
}
�� 
if
�� 
(
�� 
from
�� 
==
�� 
null
�� 
||
�� 
to
��  "
==
��# %
null
��& *
)
��* +
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
if
�� 
(
�� 
from
�� 
.
�� 
Length
�� 
!=
�� 
to
�� !
.
��! "
Length
��" (
)
��( )
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
from
��7 ;
)
��; <
,
��< =
$str
��> d
)
��d e
;
��e f
}
�� 
var
�� 
map
�� 
=
�� 
new
�� 

Dictionary
�� $
<
��$ %
char
��% )
,
��) *
char
��+ /
>
��/ 0
(
��0 1
from
��1 5
.
��5 6
Length
��6 <
)
��< =
;
��= >
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
from
��  $
.
��$ %
Length
��% +
;
��+ ,
i
��- .
++
��. 0
)
��0 1
{
�� 
map
�� 
[
�� 
from
�� 
[
�� 
i
�� 
]
�� 
]
�� 
=
�� 
to
�� !
[
��! "
i
��" #
]
��# $
;
��$ %
}
�� 
var
�� 
result
�� 
=
�� 
new
�� 
char
�� !
[
��! "
subject
��" )
.
��) *
Length
��* 0
]
��0 1
;
��1 2
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
subject
��  '
.
��' (
Length
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
current
�� 
=
�� 
subject
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
map
�� 
.
�� 
ContainsKey
�� #
(
��# $
current
��$ +
)
��+ ,
)
��, -
{
�� 
result
�� 
[
�� 
i
�� 
]
�� 
=
�� 
map
��  #
[
��# $
current
��$ +
]
��+ ,
;
��, -
}
�� 
else
�� 
{
�� 
result
�� 
[
�� 
i
�� 
]
�� 
=
�� 
current
��  '
;
��' (
}
�� 
}
�� 
return
�� 
new
�� 
string
�� 
(
�� 
result
�� $
)
��$ %
;
��% &
}
�� 	
public
�� 
static
�� 
string
�� 

ReplaceAll
�� '
(
��' (
this
��( ,
string
��- 3
original
��4 <
,
��< =
IDictionary
��> I
<
��I J
string
��J P
,
��P Q
string
��R X
>
��X Y
replacements
��Z f
)
��f g
{
�� 	
var
�� 
pattern
�� 
=
�� 
$"
�� 
{
�� 
string
�� #
.
��# $
Join
��$ (
(
��( )
$str
��) ,
,
��, -
replacements
��. :
.
��: ;
Keys
��; ?
)
��? @
}
��@ A
"
��A B
;
��B C
return
�� 
Regex
�� 
.
�� 
Replace
��  
(
��  !
original
��! )
,
��) *
pattern
��+ 2
,
��2 3
match
��4 9
=>
��: <
replacements
��= I
[
��I J
match
��J O
.
��O P
Value
��P U
]
��U V
)
��V W
;
��W X
}
�� 	
public
�� 
static
�� 
string
�� 
TrimEnd
�� $
(
��$ %
this
��% )
string
��* 0
rough
��1 6
,
��6 7
string
��8 >
trim
��? C
=
��D E
$str
��F H
)
��H I
{
�� 	
if
�� 
(
�� 
rough
�� 
==
�� 
null
�� 
)
�� 
return
�� 
null
�� 
;
�� 
return
�� 
rough
�� 
.
�� 
EndsWith
�� !
(
��! "
trim
��" &
,
��& '
StringComparison
��( 8
.
��8 9
Ordinal
��9 @
)
��@ A
?
�� 
rough
�� 
.
�� 
	Substring
�� (
(
��( )
$num
��) *
,
��* +
rough
��, 1
.
��1 2
Length
��2 8
-
��9 :
trim
��; ?
.
��? @
Length
��@ F
)
��F G
:
�� 
rough
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
string
�� #
ReplaceLastOccurrence
�� 2
(
��2 3
this
��3 7
string
��8 >
source
��? E
,
��E F
string
��G M
find
��N R
,
��R S
string
��T Z
replace
��[ b
)
��b c
{
�� 	
var
�� 
place
�� 
=
�� 
source
�� 
.
�� 
LastIndexOf
�� *
(
��* +
find
��+ /
,
��/ 0
StringComparison
��1 A
.
��A B
Ordinal
��B I
)
��I J
;
��J K
return
�� 
source
�� 
.
�� 
Remove
��  
(
��  !
place
��! &
,
��& '
find
��( ,
.
��, -
Length
��- 3
)
��3 4
.
��4 5
Insert
��5 ;
(
��; <
place
��< A
,
��A B
replace
��C J
)
��J K
;
��K L
}
�� 	
private
�� 
static
�� !
ImmutableDictionary
�� *
<
��* +
string
��+ 1
,
��1 2
string
��3 9
>
��9 :(
_underscorePascalCaseIndex
��; U
=
��V W!
ImmutableDictionary
��X k
<
��k l
string
��l r
,
��r s
string
��t z
>
��z {
.
��{ |
Empty��| �
;��� �
private
�� 
static
�� !
ImmutableDictionary
�� *
<
��* +
string
��+ 1
,
��1 2
string
��3 9
>
��9 :"
_dashPascalCaseIndex
��; O
=
��P Q!
ImmutableDictionary
��R e
<
��e f
string
��f l
,
��l m
string
��n t
>
��t u
.
��u v
Empty
��v {
;
��{ |
public
�� 
static
�� 
string
�� $
ToPascalCaseUnderscore
�� 3
(
��3 4
this
��4 8
string
��9 ?
	attribute
��@ I
)
��I J
{
�� 	
if
�� 
(
�� 
!
�� (
_underscorePascalCaseIndex
�� +
.
��+ ,
TryGetValue
��, 7
(
��7 8
	attribute
��8 A
,
��A B
out
��C F
var
��G J
result
��K Q
)
��Q R
)
��R S
{
�� 
result
�� 
=
�� 
ToPascalCase
�� %
(
��% &
	attribute
��& /
,
��/ 0
$char
��1 4
)
��4 5
;
��5 6(
_underscorePascalCaseIndex
�� *
=
��+ ,(
_underscorePascalCaseIndex
��- G
.
��G H
SetItem
��H O
(
��O P
	attribute
��P Y
,
��Y Z
result
��[ a
)
��a b
;
��b c
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
string
�� 
ToPascalCaseDash
�� -
(
��- .
this
��. 2
string
��3 9
	attribute
��: C
)
��C D
{
�� 	
if
�� 
(
�� 
!
�� "
_dashPascalCaseIndex
�� %
.
��% &
TryGetValue
��& 1
(
��1 2
	attribute
��2 ;
,
��; <
out
��= @
var
��A D
result
��E K
)
��K L
)
��L M
{
�� 
result
�� 
=
�� 
ToPascalCase
�� %
(
��% &
	attribute
��& /
,
��/ 0
$char
��1 4
)
��4 5
;
��5 6"
_dashPascalCaseIndex
�� $
=
��% &"
_dashPascalCaseIndex
��' ;
.
��; <
SetItem
��< C
(
��C D
	attribute
��D M
,
��M N
result
��O U
)
��U V
;
��V W
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
string
�� 
ToPascalCase
�� )
(
��) *
this
��* .
string
��/ 5
	attribute
��6 ?
,
��? @
char
��A E!
upperAfterDelimiter
��F Y
)
��Y Z
{
�� 	
	attribute
�� 
=
�� 
	attribute
�� !
.
��! "
Trim
��" &
(
��& '
)
��' (
;
��( )
var
�� 
delimitersCount
�� 
=
��  !
$num
��" #
;
��# $
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
	attribute
��  )
.
��) *
Length
��* 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
{
�� 
if
�� 
(
�� 
	attribute
�� 
[
�� 
i
�� 
]
��  
==
��! #!
upperAfterDelimiter
��$ 7
)
��7 8
{
�� 
delimitersCount
�� #
++
��# %
;
��% &
}
�� 
}
�� 
var
�� 
result
�� 
=
�� 
String
�� 
.
��  
Create
��  &
(
��& '
	attribute
��' 0
.
��0 1
Length
��1 7
-
��8 9
delimitersCount
��: I
,
��I J
new
��K N
{
��O P
	attribute
��Q Z
,
��Z [!
upperAfterDelimiter
��\ o
}
��p q
,
��q r
(
��s t
buffer
��t z
,
��z {
state��| �
)��� �
=>��� �
{
�� 
var
�� 
nextIsUpper
�� 
=
��  !
true
��" &
;
��& '
var
�� 
k
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
state
��$ )
.
��) *
	attribute
��* 3
.
��3 4
Length
��4 :
;
��: ;
i
��< =
++
��= ?
)
��? @
{
�� 
var
�� 
c
�� 
=
�� 
state
�� !
.
��! "
	attribute
��" +
[
��+ ,
i
��, -
]
��- .
;
��. /
if
�� 
(
�� 
c
�� 
==
�� 
state
�� "
.
��" #!
upperAfterDelimiter
��# 6
)
��6 7
{
�� 
nextIsUpper
�� #
=
��$ %
true
��& *
;
��* +
continue
��  
;
��  !
}
�� 
if
�� 
(
�� 
nextIsUpper
�� #
)
��# $
{
�� 
buffer
�� 
[
�� 
k
��  
]
��  !
=
��" #
Char
��$ (
.
��( )
ToUpperInvariant
��) 9
(
��9 :
c
��: ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 
buffer
�� 
[
�� 
k
��  
]
��  !
=
��" #
c
��$ %
;
��% &
}
�� 
nextIsUpper
�� 
=
��  !
false
��" '
;
��' (
k
�� 
++
�� 
;
�� 
}
�� 
}
�� 
)
�� 
;
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
IsJson
�� !
(
��! "
this
��" &
string
��' -
json
��. 2
)
��2 3
{
�� 	
try
�� 
{
�� 
JToken
�� 
.
�� 
Parse
�� 
(
�� 
json
�� !
)
��! "
;
��" #
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Mvc.Core\Utilities\UrlHelperExtensions.cs
	namespace 	
OrchardCore
 
. 
Mvc 
. 
Core 
. 
	Utilities (
{ 
public 

static 
class 
UrlHelperExtensions +
{ 
public 
static 
string 
ToAbsoluteAction -
(- .
this. 2

IUrlHelper3 =
url> A
,A B
stringC I

actionNameJ T
,T U
stringV \
controllerName] k
,k l
objectm s
routeValuest 
=
� �
null
� �
)
� �
{ 	
return		 
url		 
.		 
Action		 
(		 

actionName		 (
,		( )
controllerName		* 8
,		8 9
routeValues		: E
,		E F
url		G J
.		J K
ActionContext		K X
.		X Y
HttpContext		Y d
.		d e
Request		e l
.		l m
Scheme		m s
)		s t
;		t u
}

 	
public 
static 
string 

GetBaseUrl '
(' (
this( ,

IUrlHelper- 7
url8 ;
); <
{ 	
var 
request 
= 
url 
. 
ActionContext +
.+ ,
HttpContext, 7
.7 8
Request8 ?
;? @
var 
scheme 
= 
request  
.  !
Scheme! '
;' (
var 
host 
= 
request 
. 
Host #
.# $
ToUriComponent$ 2
(2 3
)3 4
;4 5
return 
$" 
{ 
scheme 
} 
$str  
{  !
host! %
}% &
"& '
;' (
} 	
public 
static 
string 
ToAbsoluteUrl *
(* +
this+ /

IUrlHelper0 :
url; >
,> ?
string@ F
virtualPathG R
)R S
{ 	
var 
baseUrl 
= 
url 
. 

GetBaseUrl (
(( )
)) *
;* +
var 
path 
= 
url 
. 
Content "
(" #
virtualPath# .
). /
;/ 0
return 
$" 
{ 
baseUrl 
} 
{ 
path #
}# $
"$ %
;% &
} 	
} 
} 