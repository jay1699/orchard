á+
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundJobs\HttpBackgroundJob.cs
	namespace 	
OrchardCore
 
. 
BackgroundJobs $
;$ %
public 
static 
class 
HttpBackgroundJob %
{ 
public 

static 
Task )
ExecuteAfterEndOfRequestAsync 4
(4 5
string5 ;
jobName< C
,C D
FuncE I
<I J

ShellScopeJ T
,T U
TaskV Z
>Z [
job\ _
)_ `
{ 
var 
scope 
= 

ShellScope 
. 
Current &
;& '
if 

( 
scope 
. 
ShellContext 
. 
Settings '
.' (
State( -
!=. 0
TenantState1 <
.< =
Running= D
&&E G
scopeH M
.M N
ShellContextN Z
.Z [
Settings[ c
.c d
Stated i
!=j l
TenantStatem x
.x y
Initializing	y Ö
)
Ö Ü
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
var 
httpContextAccessor 
=  !
scope" '
.' (
ServiceProvider( 7
.7 8
GetRequiredService8 J
<J K 
IHttpContextAccessorK _
>_ `
(` a
)a b
;b c
if 

( 
httpContextAccessor 
.  
HttpContext  +
==, .
null/ 3
||4 6
httpContextAccessor7 J
.J K
HttpContextK V
.V W
ItemsW \
.\ ]
TryGetValue] h
(h i
$stri w
,w x
outy |
_} ~
)~ 
)	 Ä
{ 	
return   
Task   
.   
CompletedTask   %
;  % &
}!! 	
_$$ 	
=$$
 

ShellScope$$ 
.$$  
UsingChildScopeAsync$$ +
($$+ ,
async$$, 1
scope$$2 7
=>$$8 :
{%% 	
var&& 
timeoutTask&& 
=&& 
Task&& "
.&&" #
Delay&&# (
(&&( )
$num&&) /
)&&/ 0
;&&0 1
while)) 
()) 
httpContextAccessor)) &
.))& '
HttpContext))' 2
!=))3 5
null))6 :
))): ;
{** 
await++ 
Task++ 
.++ 
Delay++  
(++  !
$num++! &
)++& '
;++' (
if,, 
(,, 
timeoutTask,, 
.,,  
IsCompleted,,  +
),,+ ,
{-- 
return.. 
;.. 
}// 
}00 
var33 
	shellHost33 
=33 
scope33 !
.33! "
ServiceProvider33" 1
.331 2
GetRequiredService332 D
<33D E

IShellHost33E O
>33O P
(33P Q
)33Q R
;33R S
var44 
shellContext44 
=44 
await44 $
	shellHost44% .
.44. /(
GetOrCreateShellContextAsync44/ K
(44K L
scope44L Q
.44Q R
ShellContext44R ^
.44^ _
Settings44_ g
)44g h
;44h i
if77 
(77 
shellContext77 
==77 
null77  $
||77% '
shellContext77( 4
.774 5
Settings775 =
.77= >
State77> C
!=77D F
TenantState77G R
.77R S
Running77S Z
)77Z [
{88 
return99 
;99 
}:: 
httpContextAccessor<< 
.<<  
HttpContext<<  +
=<<, -
shellContext<<. :
.<<: ;
CreateHttpContext<<; L
(<<L M
)<<M N
;<<N O
await?? 

ShellScope?? 
.??  
UsingChildScopeAsync?? 1
(??1 2
async??2 7
scope??8 =
=>??> @
{@@ 
varAA 
loggerAA 
=AA 
scopeAA "
.AA" #
ServiceProviderAA# 2
.AA2 3
GetRequiredServiceAA3 E
<AAE F
ILoggerAAF M
<AAM N

ShellScopeAAN X
>AAX Y
>AAY Z
(AAZ [
)AA[ \
;AA\ ]
tryBB 
{CC 
awaitDD 
jobDD 
(DD 
scopeDD #
)DD# $
;DD$ %
}EE 
catchFF 
(FF 
	ExceptionFF  
exFF! #
)FF# $
{GG 
loggerHH 
.HH 
LogErrorHH #
(HH# $
exII 
,II 
$str	JJ Ö
,
JJÖ Ü
jobNameKK 
,KK  
scopeLL 
.LL 
ShellContextLL *
.LL* +
SettingsLL+ 3
.LL3 4
NameLL4 8
)LL8 9
;LL9 :
}MM 
}NN 
)NN 
;NN 
}OO 	
)OO	 

;OO
 
returnQQ 
TaskQQ 
.QQ 
CompletedTaskQQ !
;QQ! "
}RR 
}SS ú
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\BackgroundTaskAttribute.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
,* +
AllowMultiple, 9
=: ;
false< A
,A B
	InheritedC L
=M N
trueO S
)S T
]T U
public 

class #
BackgroundTaskAttribute (
:) *
	Attribute+ 4
{ 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public		 
bool		 
Enable		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
=		) *
true		+ /
;		/ 0
public

 
string

 
Schedule

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
=

- .
$str

/ <
;

< =
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
String2 8
.8 9
Empty9 >
;> ?
public 
int 
LockTimeout 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
LockExpiration !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Á
íC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\BackgroundTaskEventContext.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

class &
BackgroundTaskEventContext +
{ 
public &
BackgroundTaskEventContext )
() *
string* 0
name1 5
,5 6

ShellScope7 A
scopeB G
)G H
{		 	
Name

 
=

 
name

 
;

 
Tenant 
= 
scope 
. 
ShellContext '
.' (
Settings( 0
.0 1
Name1 5
;5 6
Services 
= 
scope 
. 
ServiceProvider ,
;, -
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
public 
string 
Tenant 
{ 
get "
;" #
}$ %
public 
IServiceProvider 
Services  (
{) *
get+ .
;. /
}0 1
public 
	Exception 
	Exception "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
HasException  
=>! #
	Exception$ -
!=. 0
null1 5
;5 6
} 
} é
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\BackgroundTaskExtensions.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

static 
class $
BackgroundTaskExtensions 0
{		 
public

 
static

 "
BackgroundTaskSettings

 ,
GetDefaultSettings

- ?
(

? @
this

@ D
IBackgroundTask

E T
task

U Y
)

Y Z
{ 	
var 
technicalName 
= 
task  $
.$ %
GetTaskName% 0
(0 1
)1 2
;2 3
var 
	attribute 
= 
task  
.  !
GetType! (
(( )
)) *
.* +
GetCustomAttribute+ =
<= >#
BackgroundTaskAttribute> U
>U V
(V W
)W X
;X Y
if 
( 
	attribute 
!= 
null !
)! "
{ 
return 
new "
BackgroundTaskSettings 1
{ 
Title 
= 
! 
String #
.# $
IsNullOrWhiteSpace$ 6
(6 7
	attribute7 @
.@ A
TitleA F
)F G
?H I
	attributeJ S
.S T
TitleT Y
:Z [
technicalName\ i
,i j
Name 
= 
technicalName (
,( )
Enable 
= 
	attribute &
.& '
Enable' -
,- .
Schedule 
= 
	attribute (
.( )
Schedule) 1
,1 2
Description 
=  !
	attribute" +
.+ ,
Description, 7
,7 8
LockTimeout 
=  !
	attribute" +
.+ ,
LockTimeout, 7
,7 8
LockExpiration "
=# $
	attribute% .
.. /
LockExpiration/ =
} 
; 
} 
return 
new "
BackgroundTaskSettings -
(- .
). /
{ 
Name   
=   
technicalName   $
,  $ %
Title!! 
=!! 
technicalName!! %
}"" 
;"" 
}## 	
public%% 
static%% 
IBackgroundTask%% %
GetTaskByName%%& 3
(%%3 4
this%%4 8
IEnumerable%%9 D
<%%D E
IBackgroundTask%%E T
>%%T U
tasks%%V [
,%%[ \
string%%] c
name%%d h
)%%h i
{&& 	
if'' 
('' 
String'' 
.'' 
IsNullOrEmpty'' $
(''$ %
name''% )
)'') *
)''* +
{(( 
return)) 
null)) 
;)) 
}** 
return,, 
tasks,, 
.,, 
LastOrDefault,, &
(,,& '
task,,' +
=>,,, .
String,,/ 5
.,,5 6
Equals,,6 <
(,,< =
task,,= A
.,,A B
GetTaskName,,B M
(,,M N
),,N O
,,,O P
name,,Q U
,,,U V
StringComparison,,W g
.,,g h
OrdinalIgnoreCase,,h y
),,y z
),,z {
;,,{ |
}-- 	
public// 
static// 
string// 
GetTaskName// (
(//( )
this//) -
IBackgroundTask//. =
task//> B
)//B C
{00 	
return11 
task11 
.11 
GetType11 
(11  
)11  !
.11! "
FullName11" *
;11* +
}22 	
}33 
}44 ó
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\BackgroundTaskSettings.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

class "
BackgroundTaskSettings '
{ 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
String+ 1
.1 2
Empty2 7
;7 8
public		 
bool		 
Enable		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
=		) *
true		+ /
;		/ 0
public

 
string

 
Schedule

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
=

- .
$str

/ :
;

: ;
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
String2 8
.8 9
Empty9 >
;> ?
public 
int 
LockTimeout 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
LockExpiration !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
IsAtomic 
=> 
LockTimeout  +
>, -
$num. /
&&0 2
LockExpiration3 A
>B C
$numD E
;E F
} 
} £
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\BackgroundTaskState.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

class 
BackgroundTaskState $
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
LastStartTime %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
}		 
}

 ”
ëC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\DistributedLockExtensions.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

static 
class %
DistributedLockExtensions 1
{		 
public 
static 
Task 
< 
( 
ILocker #
locker$ *
,* +
bool, 0
locked1 7
)7 8
>8 9-
!TryAcquireBackgroundTaskLockAsync: [
([ \
this\ `
IDistributedLocka q
distributedLock	r Å
,
Å Ç$
BackgroundTaskSettings
É ô
settings
ö ¢
)
¢ £
{ 	
if 
( 
distributedLock 
is  "

ILocalLock# -
||. 0
!1 2
settings2 :
.: ;
IsAtomic; C
)C D
{ 
return 
Task 
. 

FromResult &
<& '
(' (
ILocker( /
,/ 0
bool1 5
)5 6
>6 7
(7 8
(8 9
null9 =
,= >
true? C
)C D
)D E
;E F
} 
return 
distributedLock "
." #
TryAcquireLockAsync# 6
(6 7
settings 
. 
Name 
+ 
$str  '
,' (
TimeSpan 
. 
FromMilliseconds )
() *
settings* 2
.2 3
LockTimeout3 >
)> ?
,? @
TimeSpan 
. 
FromMilliseconds )
() *
settings* 2
.2 3
LockExpiration3 A
)A B
)B C
;C D
} 	
} 
} ∑
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\HttpContextExtensions.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
;% &
internal 
static	 
class !
HttpContextExtensions +
{ 
public 

static 
void 

SetBaseUrl !
(! "
this" &
HttpContext' 2
context3 :
,: ;
string< B
baseUrlC J
)J K
{		 
if

 

(

 
Uri

 
.

 
	TryCreate

 
(

 
baseUrl

 !
,

! "
UriKind

# *
.

* +
Absolute

+ 3
,

3 4
out

5 8
var

9 <
uri

= @
)

@ A
)

A B
{ 	
context 
. 
Request 
. 
Scheme "
=# $
uri% (
.( )
Scheme) /
;/ 0
context 
. 
Request 
. 
Host  
=! "
new# &

HostString' 1
(1 2
uri2 5
.5 6
Host6 :
,: ;
uri< ?
.? @
Port@ D
)D E
;E F
context 
. 
Request 
. 
PathBase $
=% &
uri' *
.* +
AbsolutePath+ 7
;7 8
if 
( 
! 
String 
. 
IsNullOrWhiteSpace *
(* +
uri+ .
.. /
Query/ 4
)4 5
)5 6
{ 
context 
. 
Request 
.  
QueryString  +
=, -
new. 1
QueryString2 =
(= >
uri> A
.A B
QueryB G
)G H
;H I
} 
} 	
} 
} ƒ
áC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\IBackgroundTask.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

	interface 
IBackgroundTask $
{ 
Task		 
DoWorkAsync		 
(		 
IServiceProvider		 )
serviceProvider		* 9
,		9 :
CancellationToken		; L
cancellationToken		M ^
)		^ _
;		_ `
}

 
} ≈
ìC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\IBackgroundTaskEventHandler.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public

 

	interface

 '
IBackgroundTaskEventHandler

 0
{ 
Task 
ExecutingAsync 
( &
BackgroundTaskEventContext 6
context7 >
,> ?
CancellationToken@ Q
cancellationTokenR c
)c d
;d e
Task 
ExecutedAsync 
( &
BackgroundTaskEventContext 5
context6 =
,= >
CancellationToken? P
cancellationTokenQ b
)b c
;c d
} 
} √
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\IBackgroundTaskSettingsProvider.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

	interface +
IBackgroundTaskSettingsProvider 4
{ 
IChangeToken 
ChangeToken  
{! "
get# &
;& '
}( )
Task		 
<		 "
BackgroundTaskSettings		 #
>		# $
GetSettingsAsync		% 5
(		5 6
IBackgroundTask		6 E
task		F J
)		J K
;		K L
}

 
} –
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\ShellContextExtensions.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
;% &
public

 
static

 
class

 "
ShellContextExtensions

 *
{ 
private 
const 
string 

_localhost #
=$ %
$str& 1
;1 2
public 

static 
HttpContext 
CreateHttpContext /
(/ 0
this0 4
ShellContext5 A
shellB G
)G H
{ 
var 
context 
= 
CreateHttpContext '
(' (
shell( -
.- .
Settings. 6
)6 7
;7 8
context 
. 
Features 
. 
Set 
( 
new  
ShellContextFeature! 4
{ 	
ShellContext 
= 
shell  
,  !
OriginalPathBase 
= 
String %
.% &
Empty& +
,+ ,
OriginalPath 
= 
$str 
} 	
)	 

;
 
return 
context 
; 
} 
private 
static 
HttpContext 
CreateHttpContext 0
(0 1
ShellSettings1 >
settings? G
)G H
{ 
var 
context 
= 
new 
DefaultHttpContext ,
(, -
)- .
.. /!
UseShellScopeServices/ D
(D E
)E F
;F G
context 
. 
Request 
. 
Scheme 
=  
$str! (
;( )
var   
urlHost   
=   
settings   
.   
RequestUrlHosts   .
.  . /
FirstOrDefault  / =
(  = >
)  > ?
;  ? @
context!! 
.!! 
Request!! 
.!! 
Host!! 
=!! 
new!! "

HostString!!# -
(!!- .
urlHost!!. 5
??!!6 8

_localhost!!9 C
)!!C D
;!!D E
if## 

(## 
!## 
String## 
.## 
IsNullOrWhiteSpace## &
(##& '
settings##' /
.##/ 0
RequestUrlPrefix##0 @
)##@ A
)##A B
{$$ 	
context%% 
.%% 
Request%% 
.%% 
PathBase%% $
=%%% &
$str%%' *
+%%+ ,
settings%%- 5
.%%5 6
RequestUrlPrefix%%6 F
;%%F G
}&& 	
context(( 
.(( 
Request(( 
.(( 
Path(( 
=(( 
$str(( "
;((" #
context)) 
.)) 
Items)) 
[)) 
$str)) $
]))$ %
=))& '
true))( ,
;)), -
return++ 
context++ 
;++ 
},, 
}-- À
áC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Caching\Distributed\IMessageBus.cs
	namespace 	
OrchardCore
 
. 
Caching 
. 
Distributed )
{ 
public 

	interface 
IMessageBus  
{ 
Task 
SubscribeAsync 
( 
string "
channel# *
,* +
Action, 2
<2 3
string3 9
,9 :
string; A
>A B
handlerC J
)J K
;K L
Task		 
PublishAsync		 
(		 
string		  
channel		! (
,		( )
string		* 0
message		1 8
)		8 9
;		9 :
}

 
} ü	
wC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Caching\ISignal.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

	interface 
ISignal 
:  
IModularTenantEvents 3
{		 
IChangeToken

 
GetToken

 
(

 
string

 $
key

% (
)

( )
;

) *
Task 
SignalTokenAsync 
( 
string $
key% (
)( )
;) *
} 
public 

static 
class 
SignalExtensions (
{ 
public 
static 
void 
DeferredSignalToken .
(. /
this/ 3
ISignal4 ;
signal< B
,B C
stringD J
keyK N
)N O
{ 	

ShellScope 
. 
AddDeferredSignal (
(( )
key) ,
), -
;- .
} 	
} 
} ≤
ÅC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\ExtensionEntry.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

class 
ExtensionEntry 
{ 
public		 
IExtensionInfo		 
ExtensionInfo		 +
{		, -
get		. 1
;		1 2
set		3 6
;		6 7
}		8 9
public

 
Assembly

 
Assembly

  
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
public 
IEnumerable 
< 
Type 
>  
ExportedTypes! .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool 
IsError 
{ 
get !
;! "
set# &
;& '
}( )
} 
} É	
íC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\ExtensionsEnvironmentExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

static 
class +
ExtensionsEnvironmentExtensions 7
{ 
public		 
static		 
	IFileInfo		  
GetExtensionFileInfo		  4
(		4 5
this

 
IHostEnvironment

 !
environment

" -
,

- .
IExtensionInfo 
extensionInfo (
,( )
string 
subPath 
) 
{ 	
return 
environment 
. #
ContentRootFileProvider 6
.6 7
GetFileInfo7 B
(B C
Path 
. 
Combine 
( 
extensionInfo *
.* +
SubPath+ 2
,2 3
subPath4 ;
); <
)< =
;= >
} 	
} 
} ®
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\FeatureEntry.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

class 
FeatureEntry 
{ 
public		 
FeatureEntry		 
(		 
IFeatureInfo		 (
featureInfo		) 4
)		4 5
{

 	
FeatureInfo 
= 
featureInfo %
;% &
} 	
public 
FeatureEntry 
( 
IFeatureInfo (
featureInfo) 4
,4 5
IEnumerable6 A
<A B
TypeB F
>F G
exportedTypesH U
)U V
{ 	
FeatureInfo 
= 
featureInfo %
;% &
ExportedTypes 
= 
exportedTypes )
;) *
} 	
public 
IFeatureInfo 
FeatureInfo '
{( )
get* -
;- .
}/ 0
public 
IEnumerable 
< 
Type 
>  
ExportedTypes! .
{/ 0
get1 4
;4 5
}6 7
=8 9

Enumerable: D
.D E
EmptyE J
<J K
TypeK O
>O P
(P Q
)Q R
;R S
} 
} ˝
ëC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\IFeatureBuilderEvents.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

	interface !
IFeatureBuilderEvents *
{ 
void 
Building 
( "
FeatureBuildingContext ,
context- 4
)4 5
;5 6
void 
Built 
( 
IFeatureInfo 
featureInfo  +
)+ ,
;, -
} 
public

 

class

 "
FeatureBuildingContext

 '
{ 
public 
IManifestInfo 
ManifestInfo )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
IExtensionInfo 
ExtensionInfo +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
	FeatureId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
FeatureName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Category 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
[ 
]  
FeatureDependencyIds ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
bool 
DefaultTenantOnly %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
IsAlwaysEnabled #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool #
EnabledByDependencyOnly +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
public 

abstract 
class  
FeatureBuilderEvents .
:/ 0!
IFeatureBuilderEvents1 F
{ 
public 
virtual 
void 
Building $
($ %"
FeatureBuildingContext% ;
context< C
)C D
{ 	
} 	
public   
virtual   
void   
Built   !
(  ! "
IFeatureInfo  " .
featureInfo  / :
)  : ;
{!! 	
}"" 	
}## 
}$$ Û
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\IFeatureHash.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

	interface 
IFeatureHash !
{ 
Task 
< 
int 
> 
GetFeatureHashAsync %
(% &
)& '
;' (
Task 
< 
int 
> 
GetFeatureHashAsync %
(% &
string& ,
	featureId- 6
)6 7
;7 8
} 
} Ù
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\IFeatureInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

	interface 
IFeatureInfo !
{ 
string 
Id 
{ 
get 
; 
} 
string 
Name 
{ 
get 
; 
} 
int 
Priority 
{ 
get 
; 
} 
string 
Category 
{ 
get 
; 
}  
string		 
Description		 
{		 
get		  
;		  !
}		" #
bool

 
DefaultTenantOnly

 
{

  
get

! $
;

$ %
}

& '
IExtensionInfo 
	Extension  
{! "
get# &
;& '
}( )
string 
[ 
] 
Dependencies 
{ 
get  #
;# $
}% &
bool 
IsAlwaysEnabled 
{ 
get "
;" #
}$ %
bool #
EnabledByDependencyOnly $
{% &
get' *
;* +
}, -
} 
} ∆
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\IFeaturesProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

	interface 
IFeaturesProvider &
{		 
IEnumerable 
< 
IFeatureInfo  
>  !
GetFeatures" -
(- .
IExtensionInfo 
extensionInfo (
,( )
IManifestInfo 
manifestInfo &
)& '
;' (
} 
} ‡
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\ITypeFeatureProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public

 

	interface

  
ITypeFeatureProvider

 )
{ 
IFeatureInfo #
GetFeatureForDependency ,
(, -
Type- 1

dependency2 <
)< =
;= >
void 
TryAdd 
( 
Type 
type 
, 
IFeatureInfo +
feature, 3
)3 4
;4 5
} 
} ‰
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\IExtensionDependencyStrategy.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface (
IExtensionDependencyStrategy 1
{ 
bool 
HasDependency 
( 
IFeatureInfo '
observer( 0
,0 1
IFeatureInfo2 >
subject? F
)F G
;G H
} 
}		 ¡
ÅC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\IExtensionInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface 
IExtensionInfo #
{ 
string 
Id 
{ 
get 
; 
} 
string 
SubPath 
{ 
get 
; 
} 
IManifestInfo 
Manifest 
{  
get! $
;$ %
}& '
IEnumerable 
< 
IFeatureInfo  
>  !
Features" *
{+ ,
get- 0
;0 1
}2 3
bool 
Exists 
{ 
get 
; 
} 
}   
}!! Å
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\IExtensionManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface 
IExtensionManager &
{ 
IExtensionInfo		 
GetExtension		 #
(		# $
string		$ *
extensionId		+ 6
)		6 7
;		7 8
IEnumerable

 
<

 
IExtensionInfo

 "
>

" #
GetExtensions

$ 1
(

1 2
)

2 3
;

3 4
Task 
< 
ExtensionEntry 
> 
LoadExtensionAsync /
(/ 0
IExtensionInfo0 >
extensionInfo? L
)L M
;M N
IEnumerable 
< 
IFeatureInfo  
>  !
GetFeatures" -
(- .
). /
;/ 0
IEnumerable 
< 
IFeatureInfo  
>  !
GetFeatures" -
(- .
string. 4
[4 5
]5 6
featureIdsToLoad7 G
)G H
;H I
IEnumerable 
< 
IFeatureInfo  
>  !"
GetFeatureDependencies" 8
(8 9
string9 ?
	featureId@ I
)I J
;J K
IEnumerable 
< 
IFeatureInfo  
>  ! 
GetDependentFeatures" 6
(6 7
string7 =
	featureId> G
)G H
;H I
Task 
< 
IEnumerable 
< 
FeatureEntry %
>% &
>& '
LoadFeaturesAsync( 9
(9 :
): ;
;; <
Task 
< 
IEnumerable 
< 
FeatureEntry %
>% &
>& '
LoadFeaturesAsync( 9
(9 :
string: @
[@ A
]A B
featureIdsToLoadC S
)S T
;T U
} 
} û
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\IExtensionPriorityStrategy.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface &
IExtensionPriorityStrategy /
{ 
int 
GetPriority 
( 
IFeatureInfo $
feature% ,
), -
;- .
} 
}		 ·

äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\Manifests\IManifestInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface 
IManifestInfo "
{ 
bool 
Exists 
{ 
get 
; 
} 
string		 
Name		 
{		 
get		 
;		 
}		 
string

 
Description

 
{

 
get

  
;

  !
}

" #
string 
Type 
{ 
get 
; 
} 
string 
Author 
{ 
get 
; 
} 
string 
Website 
{ 
get 
; 
} 
string 
Version 
{ 
get 
; 
} 
IEnumerable 
< 
string 
> 
Tags  
{! "
get# &
;& '
}( )
ModuleAttribute 

ModuleInfo "
{# $
get% (
;( )
}* +
} 
} Û
ëC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\Manifests\NotFoundManifestInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
	Manifests- 6
{ 
public 

class  
NotFoundManifestInfo %
:& '
IManifestInfo( 5
{ 
public		 
bool		 
Exists		 
=>		 
false		 #
;		# $
public

 
string

 
Name

 
=>

 
null

 "
;

" #
public 
string 
Description !
=>" $
null% )
;) *
public 
string 
Type 
=> 
null "
;" #
public 
string 
Author 
=> 
null  $
;$ %
public 
string 
Website 
=>  
null! %
;% &
public 
string 
Version 
=>  
null! %
;% &
public 
IEnumerable 
< 
string !
>! "
Tags# '
=>( *

Enumerable+ 5
.5 6
Empty6 ;
<; <
string< B
>B C
(C D
)D E
;E F
public 
ModuleAttribute 

ModuleInfo )
=>* ,
null- 1
;1 2
} 
} ö
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\NotFoundExtensionInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public		 

class		 !
NotFoundExtensionInfo		 &
:		' (
IExtensionInfo		) 7
{

 
public !
NotFoundExtensionInfo $
($ %
string% +
extensionId, 7
)7 8
{ 	
Id 
= 
extensionId 
; 
SubPath 
= 
Application !
.! "
ModulesRoot" -
+. /
extensionId0 ;
;; <
Manifest 
= 
new  
NotFoundManifestInfo /
(/ 0
)0 1
;1 2
Features 
= 

Enumerable !
.! "
Empty" '
<' (
IFeatureInfo( 4
>4 5
(5 6
)6 7
;7 8
} 	
public 
string 
Id 
{ 
get 
; 
}  !
public 
string 
SubPath 
{ 
get  #
;# $
}% &
public 
IManifestInfo 
Manifest %
{& '
get( +
;+ ,
}- .
public 
IEnumerable 
< 
IFeatureInfo '
>' (
Features) 1
{2 3
get4 7
;7 8
}9 :
public 
bool 
Exists 
=> 
false #
;# $
} 
} ‹@
îC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Extensions\Utility\DependencyOrderingUtility.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Utility- 4
{ 
public 

static 
class 
DependencyOrdering *
{ 
private		 
class		 
Node		 
<		 
T		 
>		 
{

 	
public 
T 
Item 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
Used 
{ 
get "
;" #
set$ '
;' (
}) *
} 	
public 
static 
IEnumerable !
<! "
T" #
># $,
 OrderByDependenciesAndPriorities% E
<E F
TF G
>G H
(H I
thisI M
IEnumerableN Y
<Y Z
TZ [
>[ \
items] b
,b c
Funcd h
<h i
Ti j
,j k
Tl m
,m n
boolo s
>s t
hasDependency	u Ç
,
Ç É
Func
Ñ à
<
à â
T
â ä
,
ä ã
int
å è
>
è ê
getPriority
ë ú
)
ú ù
{ 	
var 
nodes 
= 
items 
. 
Select $
($ %
i% &
=>' )
new* -
Node. 2
<2 3
T3 4
>4 5
{6 7
Item8 <
== >
i? @
}A B
)B C
.C D
ToArrayD K
(K L
)L M
;M N
var 
result 
= 
new 
List !
<! "
T" #
># $
($ %
)% &
;& '
foreach 
( 
var 
node 
in  
nodes! &
)& '
{ 
Add 
( 
node 
, 
result  
,  !
nodes" '
,' (
hasDependency) 6
)6 7
;7 8
} 
for 
( 
int 
index 
= 
$num 
; 
index  %
<& '
result( .
.. /
Count/ 4
;4 5
index6 ;
++; =
)= >
{   
MoveUp!! 
(!! 
result!! 
,!! 
index!! $
,!!$ %
LowestIndex!!& 1
(!!1 2
result!!2 8
,!!8 9
index!!: ?
,!!? @
hasDependency!!A N
,!!N O
getPriority!!P [
)!![ \
)!!\ ]
;!!] ^
}"" 
return$$ 
result$$ 
;$$ 
}%% 	
private'' 
static'' 
void'' 
Add'' 
<''  
T''  !
>''! "
(''" #
Node''# '
<''' (
T''( )
>'') *
node''+ /
,''/ 0
ICollection''1 <
<''< =
T''= >
>''> ?
list''@ D
,''D E
IEnumerable''F Q
<''Q R
Node''R V
<''V W
T''W X
>''X Y
>''Y Z
nodes''[ `
,''` a
Func''b f
<''f g
T''g h
,''h i
T''j k
,''k l
bool''m q
>''q r
hasDependency	''s Ä
)
''Ä Å
{(( 	
if)) 
()) 
node)) 
.)) 
Used)) 
))) 
return** 
;** 
node,, 
.,, 
Used,, 
=,, 
true,, 
;,, 
foreach.. 
(.. 
var.. 

dependency.. #
in..$ &
nodes..' ,
..., -
Where..- 2
(..2 3
n..3 4
=>..5 7
hasDependency..8 E
(..E F
node..F J
...J K
Item..K O
,..O P
n..Q R
...R S
Item..S W
)..W X
)..X Y
)..Y Z
{// 
Add00 
(00 

dependency00 
,00 
list00  $
,00$ %
nodes00& +
,00+ ,
hasDependency00- :
)00: ;
;00; <
}11 
list33 
.33 
Add33 
(33 
node33 
.33 
Item33 
)33 
;33  
}44 	
private66 
static66 
int66 
LowestIndex66 &
<66& '
T66' (
>66( )
(66) *
List66* .
<66. /
T66/ 0
>660 1
list662 6
,666 7
int668 ;
index66< A
,66A B
Func66C G
<66G H
T66H I
,66I J
T66K L
,66L M
bool66N R
>66R S
hasDependency66T a
,66a b
Func66c g
<66g h
T66h i
,66i j
int66k n
>66n o
getPriority66p {
)66{ |
{77 	
double88 
priority88 
=88 
getPriority88 )
(88) *
list88* .
[88. /
index88/ 4
]884 5
)885 6
;886 7
int:: 
lowestIndex:: 
=:: 
index:: #
;::# $
for;; 
(;; 
int;; 
i;; 
=;; 
index;; 
-;;  
$num;;! "
;;;" #
i;;$ %
>=;;& (
$num;;) *
;;;* +
i;;, -
--;;- /
);;/ 0
{<< 
if== 
(== 
hasDependency== !
(==! "
list==" &
[==& '
index==' ,
]==, -
,==- .
list==/ 3
[==3 4
i==4 5
]==5 6
)==6 7
)==7 8
{>> 
return?? 
lowestIndex?? &
;??& '
}@@ 
doubleBB 
currentPriorityBB &
=BB' (
getPriorityBB) 4
(BB4 5
listBB5 9
[BB9 :
iBB: ;
]BB; <
)BB< =
;BB= >
ifCC 
(CC 
currentPriorityCC #
>CC$ %
priorityCC& .
)CC. /
{DD 
lowestIndexEE 
=EE  !
iEE" #
;EE# $
}FF 
}GG 
returnII 
lowestIndexII 
;II 
}JJ 	
privateLL 
staticLL 
voidLL 
MoveUpLL "
<LL" #
TLL# $
>LL$ %
(LL% &
ListLL& *
<LL* +
TLL+ ,
>LL, -
listLL. 2
,LL2 3
intLL4 7
indexLL8 =
,LL= >
intLL? B

lowerIndexLLC M
)LLM N
{MM 	
ifNN 
(NN 
indexNN 
<NN 

lowerIndexNN "
)NN" #
{OO 
throwPP 
newPP 
ArgumentExceptionPP +
(PP+ ,
$strPP, 8
)PP8 9
;PP9 :
}QQ 
ifSS 
(SS 
indexSS 
!=SS 

lowerIndexSS #
)SS# $
{TT 
TUU 
tempUU 
=UU 
listUU 
[UU 
indexUU #
]UU# $
;UU$ %
forWW 
(WW 
;WW 
indexWW 
>WW 

lowerIndexWW )
;WW) *
indexWW+ 0
--WW0 2
)WW2 3
{XX 
listYY 
[YY 
indexYY 
]YY 
=YY  !
listYY" &
[YY& '
indexYY' ,
-YY- .
$numYY/ 0
]YY0 1
;YY1 2
}ZZ 
list\\ 
[\\ 

lowerIndex\\ 
]\\  
=\\! "
temp\\# '
;\\' (
}]] 
}^^ 	
}__ 
}`` êC
sC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\IdGenerator.cs
	namespace 	
OrchardCore
 
{ 
public 

static 
class 
IdGenerator #
{ 
private 
static 
readonly 
char  $
[$ %
]% &
_encode32Chars' 5
=6 7
$str8 Z
.Z [
ToCharArray[ f
(f g
)g h
;h i
public

 
static

 
string

 

GenerateId

 '
(

' (
)

( )
{ 	
var 
guid 
= 
Guid 
. 
NewGuid #
(# $
)$ %
.% &
ToByteArray& 1
(1 2
)2 3
;3 4
return 
String 
. 
Create  
(  !
$num! #
,# $
guid% )
,) *
(+ ,
buffer, 2
,2 3
guid4 8
)8 9
=>: <
{ 
var 
hs 
= 
BitConverter %
.% &
ToInt64& -
(- .
guid. 2
,2 3
$num4 5
)5 6
;6 7
var 
ls 
= 
BitConverter %
.% &
ToInt64& -
(- .
guid. 2
,2 3
$num4 5
)5 6
;6 7
var 
encode32Chars !
=" #
_encode32Chars$ 2
;2 3
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer   
[   
$num   
]   
=   
encode32Chars   )
[  ) *
(  * +
hs  + -
>>  . 0
$num  1 3
)  3 4
&  5 6
$num  7 9
]  9 :
;  : ;
buffer!! 
[!! 
$num!! 
]!! 
=!! 
encode32Chars!! *
[!!* +
(!!+ ,
hs!!, .
>>!!/ 1
$num!!2 4
)!!4 5
&!!6 7
$num!!8 :
]!!: ;
;!!; <
buffer"" 
["" 
$num"" 
]"" 
="" 
encode32Chars"" *
[""* +
(""+ ,
hs"", .
>>""/ 1
$num""2 3
)""3 4
&""5 6
$num""7 9
]""9 :
;"": ;
buffer## 
[## 
$num## 
]## 
=## 
encode32Chars## *
[##* +
hs##+ -
&##. /
$num##0 2
]##2 3
;##3 4
buffer%% 
[%% 
$num%% 
]%% 
=%% 
encode32Chars%% *
[%%* +
(%%+ ,
ls%%, .
>>%%/ 1
$num%%2 4
)%%4 5
&%%6 7
$num%%8 :
]%%: ;
;%%; <
buffer&& 
[&& 
$num&& 
]&& 
=&& 
encode32Chars&& *
[&&* +
(&&+ ,
ls&&, .
>>&&/ 1
$num&&2 4
)&&4 5
&&&6 7
$num&&8 :
]&&: ;
;&&; <
buffer'' 
['' 
$num'' 
]'' 
='' 
encode32Chars'' *
[''* +
(''+ ,
ls'', .
>>''/ 1
$num''2 4
)''4 5
&''6 7
$num''8 :
]'': ;
;''; <
buffer(( 
[(( 
$num(( 
](( 
=(( 
encode32Chars(( *
[((* +
(((+ ,
ls((, .
>>((/ 1
$num((2 4
)((4 5
&((6 7
$num((8 :
]((: ;
;((; <
buffer)) 
[)) 
$num)) 
])) 
=)) 
encode32Chars)) *
[))* +
())+ ,
ls)), .
>>))/ 1
$num))2 4
)))4 5
&))6 7
$num))8 :
])): ;
;)); <
buffer** 
[** 
$num** 
]** 
=** 
encode32Chars** *
[*** +
(**+ ,
ls**, .
>>**/ 1
$num**2 4
)**4 5
&**6 7
$num**8 :
]**: ;
;**; <
buffer++ 
[++ 
$num++ 
]++ 
=++ 
encode32Chars++ *
[++* +
(+++ ,
ls++, .
>>++/ 1
$num++2 4
)++4 5
&++6 7
$num++8 :
]++: ;
;++; <
buffer,, 
[,, 
$num,, 
],, 
=,, 
encode32Chars,, *
[,,* +
(,,+ ,
ls,,, .
>>,,/ 1
$num,,2 4
),,4 5
&,,6 7
$num,,8 :
],,: ;
;,,; <
buffer-- 
[-- 
$num-- 
]-- 
=-- 
encode32Chars-- *
[--* +
(--+ ,
ls--, .
>>--/ 1
$num--2 4
)--4 5
&--6 7
$num--8 :
]--: ;
;--; <
buffer.. 
[.. 
$num.. 
].. 
=.. 
encode32Chars.. *
[..* +
(..+ ,
ls.., .
>>../ 1
$num..2 4
)..4 5
&..6 7
$num..8 :
]..: ;
;..; <
buffer// 
[// 
$num// 
]// 
=// 
encode32Chars// *
[//* +
(//+ ,
ls//, .
>>/// 1
$num//2 4
)//4 5
&//6 7
$num//8 :
]//: ;
;//; <
buffer00 
[00 
$num00 
]00 
=00 
encode32Chars00 *
[00* +
(00+ ,
ls00, .
>>00/ 1
$num002 3
)003 4
&005 6
$num007 9
]009 :
;00: ;
buffer11 
[11 
$num11 
]11 
=11 
encode32Chars11 *
[11* +
ls11+ -
&11. /
$num110 2
]112 3
;113 4
}22 
)22 
;22 
}33 	
}44 
}55 ï
vC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\IOrchardHelper.cs
	namespace 	
OrchardCore
 
{ 
public 

	interface 
IOrchardHelper #
{ 
HttpContext 
HttpContext 
{  !
get" %
;% &
}' (
} 
}		 ø
ÅC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Localization\CalendarName.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

enum 
CalendarName 
{ 
Hebrew 
, 
Hijri		 
,		 
	Gregorian

 
,

 
Julian 
, 
Persian 
, 
UmAlQura 
, 
Unknown 
} 
} á
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Localization\CalendarSelectorResult.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public		 

class		 "
CalendarSelectorResult		 '
{

 
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 
Func 
< 
Task 
< 
CalendarName %
>% &
>& '
CalendarName( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} Ì
ÉC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Localization\CultureOptions.cs
	namespace 	
OrchardCore
 
. 
Localization "
;" #
public 
class 
CultureOptions 
{ 
public 

bool  
IgnoreSystemSettings $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} µ%
ÅC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Localization\CultureScope.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

sealed 
class 
CultureScope $
:% &
IDisposable' 2
{ 
private 
readonly 
CultureInfo $
_originalCulture% 5
;5 6
private 
readonly 
CultureInfo $
_originalUICulture% 7
;7 8
private 
CultureScope 
( 
string #
culture$ +
,+ ,
string- 3
	uiCulture4 =
,= >
bool? C 
ignoreSystemSettingsD X
)X Y
{ 	
var 
useUserOverride 
=  !
!" # 
ignoreSystemSettings# 7
;7 8
Culture 
= 
new 
CultureInfo %
(% &
culture& -
,- .
useUserOverride/ >
)> ?
;? @
	UICulture 
= 
new 
CultureInfo '
(' (
	uiCulture( 1
,1 2
useUserOverride3 B
)B C
;C D
_originalCulture 
= 
CultureInfo *
.* +
CurrentCulture+ 9
;9 :
_originalUICulture 
=  
CultureInfo! ,
., -
CurrentUICulture- =
;= >
SetCultures 
( 
Culture 
,  
	UICulture! *
)* +
;+ ,
} 	
public   
CultureInfo   
Culture   "
{  # $
get  % (
;  ( )
}  * +
public%% 
CultureInfo%% 
	UICulture%% $
{%%% &
get%%' *
;%%* +
}%%, -
public,, 
static,, 
CultureScope,, "
Create,,# )
(,,) *
string,,* 0
culture,,1 8
,,,8 9
bool,,: > 
ignoreSystemSettings,,? S
=,,T U
false,,V [
),,[ \
=>-- 
Create-- 
(-- 
culture-- 
,-- 
culture-- &
,--& ' 
ignoreSystemSettings--( <
)--< =
;--= >
public55 
static55 
CultureScope55 "
Create55# )
(55) *
string55* 0
culture551 8
,558 9
string55: @
	uiCulture55A J
,55J K
bool55L P 
ignoreSystemSettings55Q e
=55f g
false55h m
)55m n
=>66 
new66 
(66 
culture66 
,66 
	uiCulture66 %
,66% & 
ignoreSystemSettings66' ;
)66; <
;66< =
public== 
static== 
CultureScope== "
Create==# )
(==) *
CultureInfo==* 5
culture==6 =
,=== >
bool==? C 
ignoreSystemSettings==D X
===Y Z
false==[ `
)==` a
=>>> 
Create>> 
(>> 
culture>> 
,>> 
culture>> &
,>>& ' 
ignoreSystemSettings>>( <
)>>< =
;>>= >
publicFF 
staticFF 
CultureScopeFF "
CreateFF# )
(FF) *
CultureInfoFF* 5
cultureFF6 =
,FF= >
CultureInfoFF? J
	uiCultureFFK T
,FFT U
boolFFV Z 
ignoreSystemSettingsFF[ o
=FFp q
falseFFr w
)FFw x
=>GG 
newGG 
(GG 
cultureGG 
.GG 
NameGG 
,GG  
	uiCultureGG! *
.GG* +
NameGG+ /
,GG/ 0 
ignoreSystemSettingsGG1 E
)GGE F
;GGF G
publicJJ 
voidJJ 
DisposeJJ 
(JJ 
)JJ 
{KK 	
SetCulturesLL 
(LL 
_originalCultureLL (
,LL( )
_originalUICultureLL* <
)LL< =
;LL= >
}MM 	
privateOO 
staticOO 
voidOO 
SetCulturesOO '
(OO' (
CultureInfoOO( 3
cultureOO4 ;
,OO; <
CultureInfoOO= H
	uiCultureOOI R
)OOR S
{PP 	
CultureInfoQQ 
.QQ 
CurrentCultureQQ &
=QQ' (
cultureQQ) 0
;QQ0 1
CultureInfoRR 
.RR 
CurrentUICultureRR (
=RR) *
	uiCultureRR+ 4
;RR4 5
}SS 	
}TT 
}UU ˜
ÖC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Localization\ICalendarManager.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface 
ICalendarManager %
{		 
Task 
< 
CalendarName 
> 
GetCurrentCalendar -
(- .
). /
;/ 0
} 
} Å
ÜC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Localization\ICalendarSelector.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface 
ICalendarSelector &
{		 
Task 
< "
CalendarSelectorResult #
># $
GetCalendarAsync% 5
(5 6
)6 7
;7 8
} 
} ¥
äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Localization\ICultureAliasProvider.cs
	namespace 	
OrchardCore
 
. 
Localization "
;" #
public 
	interface !
ICultureAliasProvider &
{ 
bool 
TryGetCulture	 
( 
CultureInfo "
cultureAlias# /
,/ 0
out1 4
CultureInfo5 @
cultureA H
)H I
;I J
} ≥
âC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Localization\ILocalizationService.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface  
ILocalizationService )
{		 
Task 
< 
string 
> "
GetDefaultCultureAsync +
(+ ,
), -
;- .
Task 
< 
string 
[ 
] 
> %
GetSupportedCulturesAsync 0
(0 1
)1 2
;2 3
} 
} ¨
åC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Locking\Distributed\IDistributedLock.cs
	namespace 	
OrchardCore
 
. 
Locking 
. 
Distributed )
{ 
public 

	interface 
IDistributedLock %
:& '
ILock( -
{ 
} 
} Î
zC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Locking\ILocalLock.cs
	namespace 	
OrchardCore
 
. 
Locking 
{ 
public 

	interface 

ILocalLock 
:  !
ILock" '
{ 
} 
} ‹	
uC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Locking\ILock.cs
	namespace 	
OrchardCore
 
. 
Locking 
{ 
public 

	interface 
ILock 
{ 
Task 
< 
ILocker 
> 
AcquireLockAsync &
(& '
string' -
key. 1
,1 2
TimeSpan3 ;
?; <

expiration= G
=H I
nullJ N
)N O
;O P
Task 
< 
( 
ILocker 
locker 
, 
bool "
locked# )
)) *
>* +
TryAcquireLockAsync, ?
(? @
string@ F
keyG J
,J K
TimeSpanL T
timeoutU \
,\ ]
TimeSpan^ f
?f g

expirationh r
=s t
nullu y
)y z
;z {
Task 
< 
bool 
> 
IsLockAcquiredAsync &
(& '
string' -
key. 1
)1 2
;2 3
} 
} ò
wC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Locking\ILocker.cs
	namespace 	
OrchardCore
 
. 
Locking 
{ 
public 

	interface 
ILocker 
: 
IDisposable *
,* +
IAsyncDisposable, <
{ 
} 
} †(
{C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Application.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class 
Application 
{		 
private

 
readonly

 

Dictionary

 #
<

# $
string

$ *
,

* +
Module

, 2
>

2 3
_modulesByName

4 B
;

B C
private 
readonly 
List 
< 
Module $
>$ %
_modules& .
;. /
public 
const 
string 
ModulesPath '
=( )
$str* 1
;1 2
public 
const 
string 
ModulesRoot '
=( )
ModulesPath* 5
+6 7
$str8 ;
;; <
public 
const 
string 

ModuleName &
=' (
$str) C
;C D
public 
const 
string 
ModuleDescription -
=. /
$str0 g
;g h
public 
static 
readonly 
string %
ModulePriority& 4
=5 6
int7 :
.: ;
MinValue; C
.C D
ToStringD L
(L M
)M N
;N O
public 
const 
string 
ModuleCategory *
=+ ,
$str- :
;: ;
public 
const 
string 
DefaultFeatureId ,
=- .
$str/ D
;D E
public 
const 
string 
DefaultFeatureName .
=/ 0
$str1 N
;N O
public 
const 
string %
DefaultFeatureDescription 5
=6 7
$str8 m
;m n
public 
Application 
( 
IHostEnvironment +
environment, 7
,7 8
IEnumerable9 D
<D E
ModuleE K
>K L
modulesM T
)T U
{ 	
Name 
= 
environment 
. 
ApplicationName .
;. /
Path 
= 
environment 
. 
ContentRootPath .
;. /
Root 
= 
Path 
+ 
$char 
; 

ModulePath 
= 
ModulesRoot $
+% &
Name' +
;+ ,

ModuleRoot 
= 

ModulePath #
+$ %
$char& )
;) *
Assembly!! 
=!! 
Assembly!! 
.!!  
Load!!  $
(!!$ %
new!!% (
AssemblyName!!) 5
(!!5 6
Name!!6 :
)!!: ;
)!!; <
;!!< =
_modules## 
=## 
new## 
List## 
<##  
Module##  &
>##& '
(##' (
modules##( /
)##/ 0
;##0 1
_modulesByName$$ 
=$$ 
_modules$$ %
.$$% &
ToDictionary$$& 2
($$2 3
m$$3 4
=>$$5 7
m$$8 9
.$$9 :
Name$$: >
,$$> ?
m$$@ A
=>$$B D
m$$E F
)$$F G
;$$G H
}%% 	
public'' 
string'' 
Name'' 
{'' 
get''  
;''  !
}''" #
public(( 
string(( 
Path(( 
{(( 
get((  
;((  !
}((" #
public)) 
string)) 
Root)) 
{)) 
get))  
;))  !
}))" #
public** 
string** 

ModulePath**  
{**! "
get**# &
;**& '
}**( )
public++ 
string++ 

ModuleRoot++  
{++! "
get++# &
;++& '
}++( )
public,, 
Assembly,, 
Assembly,,  
{,,! "
get,,# &
;,,& '
},,( )
public-- 
IEnumerable-- 
<-- 
Module-- !
>--! "
Modules--# *
=>--+ -
_modules--. 6
;--6 7
public// 
Module// 
	GetModule// 
(//  
string//  &
name//' +
)//+ ,
{00 	
if11 
(11 
!11 
_modulesByName11 
.11  
TryGetValue11  +
(11+ ,
name11, 0
,110 1
out112 5
var116 9
module11: @
)11@ A
)11A B
{22 
return33 
new33 
Module33 !
(33! "
string33" (
.33( )
Empty33) .
)33. /
;33/ 0
}44 
return66 
module66 
;66 
}77 	
}88 
}99 “
îC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\AssemblyAttributeModuleNamesProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

class		 0
$AssemblyAttributeModuleNamesProvider		 5
:		6 7 
IModuleNamesProvider		8 L
{

 
private 
readonly 
List 
< 
string $
>$ %
_moduleNames& 2
;2 3
public 0
$AssemblyAttributeModuleNamesProvider 3
(3 4
IHostEnvironment4 D
hostingEnvironmentE W
)W X
{ 	
var 
assembly 
= 
Assembly #
.# $
Load$ (
(( )
new) ,
AssemblyName- 9
(9 :
hostingEnvironment: L
.L M
ApplicationNameM \
)\ ]
)] ^
;^ _
_moduleNames 
= 
assembly #
.# $
GetCustomAttributes$ 7
<7 8
ModuleNameAttribute8 K
>K L
(L M
)M N
.N O
SelectO U
(U V
mV W
=>X Z
m[ \
.\ ]
Name] a
)a b
.b c
ToListc i
(i j
)j k
;k l
} 	
public 
IEnumerable 
< 
string !
>! "
GetModuleNames# 1
(1 2
)2 3
{ 	
return 
_moduleNames 
;  
} 	
} 
} ·
uC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Asset.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class 
Asset 
{ 
public 
Asset 
( 
string 
asset !
)! "
{ 	
asset 
= 
asset 
. 
Replace !
(! "
$char" &
,& '
$char( +
)+ ,
;, -
var 
index 
= 
asset 
. 
IndexOf %
(% &
$char& )
)) *
;* +
if

 
(

 
index

 
==

 
-

 
$num

 
)

 
{ 
ModuleAssetPath 
=  !
string" (
.( )
Empty) .
;. /
ProjectAssetPath  
=! "
string# )
.) *
Empty* /
;/ 0
} 
else 
{ 
ModuleAssetPath 
=  !
asset" '
.' (
	Substring( 1
(1 2
$num2 3
,3 4
index5 :
): ;
;; <
ProjectAssetPath  
=! "
asset# (
.( )
	Substring) 2
(2 3
index3 8
+9 :
$num; <
)< =
;= >
} 
} 	
public 
string 
ModuleAssetPath %
{& '
get( +
;+ ,
}- .
public 
string 
ProjectAssetPath &
{' (
get) ,
;, -
}. /
} 
} ˇ
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\BackgroundServiceOptions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class $
BackgroundServiceOptions )
{ 
public 
bool 
ShellWarmup 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} îC
äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Builder\OrchardCoreBuilder.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{		 
public

 

class

 
OrchardCoreBuilder

 #
{ 
private 

Dictionary 
< 
int 
, 
StartupActions  .
>. /
_actions0 8
{9 :
get; >
;> ?
}@ A
=B C
newD G

DictionaryH R
<R S
intS V
,V W
StartupActionsX f
>f g
(g h
)h i
;i j
public 
OrchardCoreBuilder !
(! "
IServiceCollection" 4
services5 =
)= >
{ 	
ApplicationServices 
=  !
services" *
;* +
} 	
public 
IServiceCollection !
ApplicationServices" 5
{6 7
get8 ;
;; <
}= >
public 
OrchardCoreBuilder !
RegisterStartup" 1
<1 2
T2 3
>3 4
(4 5
)5 6
where7 <
T= >
:? @
classA F
,F G
IStartupH P
{ 	
ApplicationServices 
.  
AddTransient  ,
<, -
IStartup- 5
,5 6
T7 8
>8 9
(9 :
): ;
;; <
return 
this 
; 
} 	
public!! 
OrchardCoreBuilder!! !
ConfigureServices!!" 3
(!!3 4
Action!!4 :
<!!: ;
IServiceCollection!!; M
,!!M N
IServiceProvider!!O _
>!!_ `
	configure!!a j
,!!j k
int!!l o
order!!p u
=!!v w
$num!!x y
)!!y z
{"" 	
if## 
(## 
!## 
_actions## 
.## 
TryGetValue## %
(##% &
order##& +
,##+ ,
out##- 0
var##1 4
actions##5 <
)##< =
)##= >
{$$ 
actions%% 
=%% 
_actions%% "
[%%" #
order%%# (
]%%( )
=%%* +
new%%, /
StartupActions%%0 >
(%%> ?
order%%? D
)%%D E
;%%E F
ApplicationServices'' #
.''# $
AddTransient''$ 0
<''0 1
IStartup''1 9
>''9 :
('': ;
sp''; =
=>''> @
new''A D!
StartupActionsStartup''E Z
(''Z [
sp(( 
.(( 
GetRequiredService(( )
<(() *
IServiceProvider((* :
>((: ;
(((; <
)((< =
,((= >
actions((? F
,((F G
order((H M
)((M N
)((N O
;((O P
})) 
actions++ 
.++ $
ConfigureServicesActions++ ,
.++, -
Add++- 0
(++0 1
	configure++1 :
)++: ;
;++; <
return-- 
this-- 
;-- 
}.. 	
public66 
OrchardCoreBuilder66 !
ConfigureServices66" 3
(663 4
Action664 :
<66: ;
IServiceCollection66; M
>66M N
	configure66O X
,66X Y
int66Z ]
order66^ c
=66d e
$num66f g
)66g h
{77 	
return88 
ConfigureServices88 $
(88$ %
(88% &
s88& '
,88' (
sp88) +
)88+ ,
=>88- /
	configure880 9
(889 :
s88: ;
)88; <
,88< =
order88> C
)88C D
;88D E
}99 	
public@@ 
OrchardCoreBuilder@@ !
	Configure@@" +
(@@+ ,
Action@@, 2
<@@2 3
IApplicationBuilder@@3 F
,@@F G!
IEndpointRouteBuilder@@H ]
,@@] ^
IServiceProvider@@_ o
>@@o p
	configure@@q z
,@@z {
int@@| 
order
@@Ä Ö
=
@@Ü á
$num
@@à â
)
@@â ä
{AA 	
ifBB 
(BB 
!BB 
_actionsBB 
.BB 
TryGetValueBB %
(BB% &
orderBB& +
,BB+ ,
outBB- 0
varBB1 4
actionsBB5 <
)BB< =
)BB= >
{CC 
actionsDD 
=DD 
_actionsDD "
[DD" #
orderDD# (
]DD( )
=DD* +
newDD, /
StartupActionsDD0 >
(DD> ?
orderDD? D
)DDD E
;DDE F
ApplicationServicesFF #
.FF# $
AddTransientFF$ 0
<FF0 1
IStartupFF1 9
>FF9 :
(FF: ;
spFF; =
=>FF> @
newFFA D!
StartupActionsStartupFFE Z
(FFZ [
spGG 
.GG 
GetRequiredServiceGG )
<GG) *
IServiceProviderGG* :
>GG: ;
(GG; <
)GG< =
,GG= >
actionsGG? F
,GGF G
orderGGH M
)GGM N
)GGN O
;GGO P
}HH 
actionsJJ 
.JJ 
ConfigureActionsJJ $
.JJ$ %
AddJJ% (
(JJ( )
	configureJJ) 2
)JJ2 3
;JJ3 4
returnLL 
thisLL 
;LL 
}MM 	
publicTT 
OrchardCoreBuilderTT !
	ConfigureTT" +
(TT+ ,
ActionTT, 2
<TT2 3
IApplicationBuilderTT3 F
,TTF G!
IEndpointRouteBuilderTTH ]
>TT] ^
	configureTT_ h
,TTh i
intTTj m
orderTTn s
=TTt u
$numTTv w
)TTw x
{UU 	
returnVV 
	ConfigureVV 
(VV 
(VV 
appVV !
,VV! "
routesVV# )
,VV) *
spVV+ -
)VV- .
=>VV/ 1
	configureVV2 ;
(VV; <
appVV< ?
,VV? @
routesVVA G
)VVG H
,VVH I
orderVVJ O
)VVO P
;VVP Q
}WW 	
public^^ 
OrchardCoreBuilder^^ !
	Configure^^" +
(^^+ ,
Action^^, 2
<^^2 3
IApplicationBuilder^^3 F
>^^F G
	configure^^H Q
,^^Q R
int^^S V
order^^W \
=^^] ^
$num^^_ `
)^^` a
{__ 	
return`` 
	Configure`` 
(`` 
(`` 
app`` !
,``! "
routes``# )
,``) *
sp``+ -
)``- .
=>``/ 1
	configure``2 ;
(``; <
app``< ?
)``? @
,``@ A
order``B G
)``G H
;``H I
}aa 	
publiccc 
OrchardCoreBuildercc !
EnableFeaturecc" /
(cc/ 0
stringcc0 6
idcc7 9
)cc9 :
{dd 	
returnee 
ConfigureServicesee $
(ee$ %
servicesee% -
=>ee. 0
{ff 
forgg 
(gg 
vargg 
indexgg 
=gg  
$numgg! "
;gg" #
indexgg$ )
<gg* +
servicesgg, 4
.gg4 5
Countgg5 :
;gg: ;
indexgg< A
++ggA C
)ggC D
{hh 
varii 
serviceii 
=ii  !
servicesii" *
[ii* +
indexii+ 0
]ii0 1
;ii1 2
ifjj 
(jj 
servicejj 
.jj  "
ImplementationInstancejj  6
isjj7 9
ShellFeaturejj: F
featurejjG N
&&jjO Q
stringkk 
.kk 
Equalskk %
(kk% &
featurekk& -
.kk- .
Idkk. 0
,kk0 1
idkk2 4
,kk4 5
StringComparisonkk6 F
.kkF G
OrdinalIgnoreCasekkG X
)kkX Y
)kkY Z
{ll 
returnmm 
;mm 
}nn 
}oo 
servicesqq 
.qq 
AddSingletonqq %
(qq% &
newqq& )
ShellFeatureqq* 6
(qq6 7
idqq7 9
,qq9 :
alwaysEnabledqq; H
:qqH I
trueqqJ N
)qqN O
)qqO P
;qqP Q
}rr 
)rr 
;rr 
}ss 	
}tt 
}uu ±
ÜC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Builder\StartupActions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
internal 
class 
StartupActions !
{		 
public

 
StartupActions

 
(

 
int

 !
order

" '
)

' (
{ 	
Order 
= 
order 
; 
} 	
public 
int 
Order 
{ 
get 
; 
}  !
public 
ICollection 
< 
Action !
<! "
IServiceCollection" 4
,4 5
IServiceProvider6 F
>F G
>G H$
ConfigureServicesActionsI a
{b c
getd g
;g h
}i j
=k l
newm p
Listq u
<u v
Actionv |
<| }
IServiceCollection	} è
,
è ê
IServiceProvider
ë °
>
° ¢
>
¢ £
(
£ §
)
§ •
;
• ¶
public 
ICollection 
< 
Action !
<! "
IApplicationBuilder" 5
,5 6!
IEndpointRouteBuilder7 L
,L M
IServiceProviderN ^
>^ _
>_ `
ConfigureActionsa q
{r s
gett w
;w x
}y z
={ |
new	} Ä
List
Å Ö
<
Ö Ü
Action
Ü å
<
å ç!
IApplicationBuilder
ç †
,
† °#
IEndpointRouteBuilder
¢ ∑
,
∑ ∏
IServiceProvider
π …
>
…  
>
  À
(
À Ã
)
Ã Õ
;
Õ Œ
} 
} ‡
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Builder\StartupActionsStartup.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
internal 
class !
StartupActionsStartup (
:) *
StartupBase+ 6
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
StartupActions '
_actions( 0
;0 1
public !
StartupActionsStartup $
($ %
IServiceProvider% 5
serviceProvider6 E
,E F
StartupActionsG U
actionsV ]
,] ^
int_ b
orderc h
)h i
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
_actions 
= 
actions 
; 
Order 
= 
order 
; 
} 	
public 
override 
int 
Order !
{" #
get$ '
;' (
}) *
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
foreach 
( 
var 
configureServices *
in+ -
_actions. 6
.6 7$
ConfigureServicesActions7 O
)O P
{ 
configureServices !
?! "
." #
Invoke# )
() *
services* 2
,2 3
_serviceProvider4 D
)D E
;E F
} 
} 	
public!! 
override!! 
void!! 
	Configure!! &
(!!& '
IApplicationBuilder!!' :
app!!; >
,!!> ?!
IEndpointRouteBuilder!!@ U
routes!!V \
,!!\ ]
IServiceProvider!!^ n
serviceProvider!!o ~
)!!~ 
{"" 	
foreach## 
(## 
var## 
	configure## "
in### %
_actions##& .
.##. /
ConfigureActions##/ ?
)##? @
{$$ 
	configure%% 
?%% 
.%% 
Invoke%% !
(%%! "
app%%" %
,%%% &
routes%%' -
,%%- .
serviceProvider%%/ >
)%%> ?
;%%? @
}&& 
}'' 	
}(( 
})) ∂
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Exceptions\ExceptionExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class 
ExceptionExtensions +
{		 
internal 
const 
int #
ERROR_SHARING_VIOLATION 2
=3 4
	unchecked5 >
(> ?
(? @
int@ C
)C D
$numD N
)N O
;O P
internal 
const 
int  
ERROR_LOCK_VIOLATION /
=0 1
	unchecked2 ;
(; <
(< =
int= @
)@ A
$numA K
)K L
;L M
public 
static 
bool 
IsFatal "
(" #
this# '
	Exception( 1
ex2 4
)4 5
{ 	
return 
ex 
is  
OutOfMemoryException *
||+ -
ex 
is 
SecurityException '
||( *
ex 
is 
SEHException "
;" #
} 	
public 
static 
bool "
IsFileSharingViolation 1
(1 2
this2 6
	Exception7 @
exA C
)C D
=>E G
ex 
is 
IOException 
&&  
( 
ex 
. 
HResult 
== #
ERROR_SHARING_VIOLATION 2
||3 5
ex 
. 
HResult 
==  
ERROR_LOCK_VIOLATION .
). /
;/ 0
} 
} û
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Extensions\EnumerableExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

static		 
class		  
EnumerableExtensions		 ,
{

 
public 
static 
Task 
ForEachAsync '
<' (
T( )
>) *
(* +
this+ /
IEnumerable0 ;
<; <
T< =
>= >
source? E
,E F
FuncG K
<K L
TL M
,M N
TaskO S
>S T
bodyU Y
)Y Z
{ 	
var 
partitionCount 
=  
System! '
.' (
Environment( 3
.3 4
ProcessorCount4 B
;B C
return 
Task 
. 
WhenAll 
(  
from 
	partition 
in !
Partitioner" -
.- .
Create. 4
(4 5
source5 ;
); <
.< =
GetPartitions= J
(J K
partitionCountK Y
)Y Z
select 
Task 
. 
Run 
(  
async  %
delegate& .
{ 
using 
( 
	partition $
)$ %
{ 
while 
( 
	partition (
.( )
MoveNext) 1
(1 2
)2 3
)3 4
{ 
await !
body" &
(& '
	partition' 0
.0 1
Current1 8
)8 9
;9 :
} 
} 
} 
) 
) 
; 
} 	
} 
} í
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Extensions\HttpContextExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class !
HttpContextExtensions -
{ 
public 
static 
HttpContext !!
UseShellScopeServices" 7
(7 8
this8 <
HttpContext= H
httpContextI T
)T U
{ 	
httpContext 
. 
RequestServices '
=( )
new* -
ShellScopeServices. @
(@ A
httpContextA L
.L M
RequestServicesM \
)\ ]
;] ^
return 
httpContext 
; 
} 	
} 
} ˘€
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Extensions\InvokeExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class 
InvokeExtensions (
{		 
public 
static 
void 
Invoke !
<! "
TEvents" )
>) *
(* +
this+ /
IEnumerable0 ;
<; <
TEvents< C
>C D
eventsE K
,K L
ActionM S
<S T
TEventsT [
>[ \
dispatch] e
,e f
ILoggerg n
loggero u
)u v
{ 	
foreach 
( 
var 
sink 
in  
events! '
)' (
{ 
try 
{ 
dispatch 
( 
sink !
)! "
;" #
} 
catch 
( 
	Exception  
ex! #
)# $
{ 
HandleException #
(# $
ex$ &
,& '
logger( .
,. /
typeof0 6
(6 7
TEvents7 >
)> ?
.? @
Name@ D
,D E
sinkF J
.J K
GetTypeK R
(R S
)S T
.T U
FullNameU ]
)] ^
;^ _
} 
} 
} 	
public 
static 
void 
Invoke !
<! "
TEvents" )
,) *
T1+ -
>- .
(. /
this/ 3
IEnumerable4 ?
<? @
TEvents@ G
>G H
eventsI O
,O P
ActionQ W
<W X
TEventsX _
,_ `
T1a c
>c d
dispatche m
,m n
T1o q
arg1r v
,v w
ILoggerx 
logger
Ä Ü
)
Ü á
{   	
foreach!! 
(!! 
var!! 
sink!! 
in!!  
events!!! '
)!!' (
{"" 
try## 
{$$ 
dispatch%% 
(%% 
sink%% !
,%%! "
arg1%%# '
)%%' (
;%%( )
}&& 
catch'' 
('' 
	Exception''  
ex''! #
)''# $
{(( 
HandleException)) #
())# $
ex))$ &
,))& '
logger))( .
,)). /
typeof))0 6
())6 7
TEvents))7 >
)))> ?
.))? @
Name))@ D
,))D E
sink))F J
.))J K
GetType))K R
())R S
)))S T
.))T U
FullName))U ]
)))] ^
;))^ _
}** 
}++ 
},, 	
public.. 
static.. 
IEnumerable.. !
<..! "
TResult.." )
>..) *
Invoke..+ 1
<..1 2
TEvents..2 9
,..9 :
TResult..; B
>..B C
(..C D
this..D H
IEnumerable..I T
<..T U
TEvents..U \
>..\ ]
events..^ d
,..d e
Func..f j
<..j k
TEvents..k r
,..r s
TResult..t {
>..{ |
dispatch	..} Ö
,
..Ö Ü
ILogger
..á é
logger
..è ï
)
..ï ñ
{// 	
var00 
results00 
=00 
new00 
List00 "
<00" #
TResult00# *
>00* +
(00+ ,
)00, -
;00- .
foreach22 
(22 
var22 
sink22 
in22  
events22! '
)22' (
{33 
try44 
{55 
var66 
result66 
=66  
dispatch66! )
(66) *
sink66* .
)66. /
;66/ 0
results77 
.77 
Add77 
(77  
result77  &
)77& '
;77' (
}88 
catch99 
(99 
	Exception99  
ex99! #
)99# $
{:: 
HandleException;; #
(;;# $
ex;;$ &
,;;& '
logger;;( .
,;;. /
typeof;;0 6
(;;6 7
TEvents;;7 >
);;> ?
.;;? @
Name;;@ D
,;;D E
sink;;F J
.;;J K
GetType;;K R
(;;R S
);;S T
.;;T U
FullName;;U ]
);;] ^
;;;^ _
}<< 
}== 
return?? 
results?? 
;?? 
}@@ 	
publicBB 
staticBB 
IEnumerableBB !
<BB! "
TResultBB" )
>BB) *
InvokeBB+ 1
<BB1 2
TEventsBB2 9
,BB9 :
T1BB; =
,BB= >
TResultBB? F
>BBF G
(BBG H
thisBBH L
IEnumerableBBM X
<BBX Y
TEventsBBY `
>BB` a
eventsBBb h
,BBh i
FuncBBj n
<BBn o
TEventsBBo v
,BBv w
T1BBx z
,BBz {
TResult	BB| É
>
BBÉ Ñ
dispatch
BBÖ ç
,
BBç é
T1
BBè ë
arg1
BBí ñ
,
BBñ ó
ILogger
BBò ü
logger
BB† ¶
)
BB¶ ß
{CC 	
varDD 
resultsDD 
=DD 
newDD 
ListDD "
<DD" #
TResultDD# *
>DD* +
(DD+ ,
)DD, -
;DD- .
foreachFF 
(FF 
varFF 
sinkFF 
inFF  
eventsFF! '
)FF' (
{GG 
tryHH 
{II 
varJJ 
resultJJ 
=JJ  
dispatchJJ! )
(JJ) *
sinkJJ* .
,JJ. /
arg1JJ0 4
)JJ4 5
;JJ5 6
resultsKK 
.KK 
AddKK 
(KK  
resultKK  &
)KK& '
;KK' (
}LL 
catchMM 
(MM 
	ExceptionMM  
exMM! #
)MM# $
{NN 
HandleExceptionOO #
(OO# $
exOO$ &
,OO& '
loggerOO( .
,OO. /
typeofOO0 6
(OO6 7
TEventsOO7 >
)OO> ?
.OO? @
NameOO@ D
,OOD E
sinkOOF J
.OOJ K
GetTypeOOK R
(OOR S
)OOS T
.OOT U
FullNameOOU ]
)OO] ^
;OO^ _
}PP 
}QQ 
returnSS 
resultsSS 
;SS 
}TT 	
publicVV 
staticVV 
IEnumerableVV !
<VV! "
TResultVV" )
>VV) *
InvokeVV+ 1
<VV1 2
TEventsVV2 9
,VV9 :
TResultVV; B
>VVB C
(VVC D
thisVVD H
IEnumerableVVI T
<VVT U
TEventsVVU \
>VV\ ]
eventsVV^ d
,VVd e
FuncVVf j
<VVj k
TEventsVVk r
,VVr s
IEnumerableVVt 
<	VV Ä
TResult
VVÄ á
>
VVá à
>
VVà â
dispatch
VVä í
,
VVí ì
ILogger
VVî õ
logger
VVú ¢
)
VV¢ £
{WW 	
varXX 
resultsXX 
=XX 
newXX 
ListXX "
<XX" #
TResultXX# *
>XX* +
(XX+ ,
)XX, -
;XX- .
foreachZZ 
(ZZ 
varZZ 
sinkZZ 
inZZ  
eventsZZ! '
)ZZ' (
{[[ 
try\\ 
{]] 
var^^ 
result^^ 
=^^  
dispatch^^! )
(^^) *
sink^^* .
)^^. /
;^^/ 0
results__ 
.__ 
AddRange__ $
(__$ %
result__% +
)__+ ,
;__, -
}`` 
catchaa 
(aa 
	Exceptionaa  
exaa! #
)aa# $
{bb 
HandleExceptioncc #
(cc# $
excc$ &
,cc& '
loggercc( .
,cc. /
typeofcc0 6
(cc6 7
TEventscc7 >
)cc> ?
.cc? @
Namecc@ D
,ccD E
sinkccF J
.ccJ K
GetTypeccK R
(ccR S
)ccS T
.ccT U
FullNameccU ]
)cc] ^
;cc^ _
}dd 
}ee 
returngg 
resultsgg 
;gg 
}hh 	
publicmm 
staticmm 
asyncmm 
Taskmm  
InvokeAsyncmm! ,
<mm, -
TEventsmm- 4
>mm4 5
(mm5 6
thismm6 :
IEnumerablemm; F
<mmF G
TEventsmmG N
>mmN O
eventsmmP V
,mmV W
FuncmmX \
<mm\ ]
TEventsmm] d
,mmd e
Taskmmf j
>mmj k
dispatchmml t
,mmt u
ILoggermmv }
logger	mm~ Ñ
)
mmÑ Ö
{nn 	
foreachoo 
(oo 
varoo 
sinkoo 
inoo  
eventsoo! '
)oo' (
{pp 
tryqq 
{rr 
awaitss 
dispatchss "
(ss" #
sinkss# '
)ss' (
;ss( )
}tt 
catchuu 
(uu 
	Exceptionuu  
exuu! #
)uu# $
{vv 
HandleExceptionww #
(ww# $
exww$ &
,ww& '
loggerww( .
,ww. /
typeofww0 6
(ww6 7
TEventsww7 >
)ww> ?
.ww? @
Nameww@ D
,wwD E
sinkwwF J
.wwJ K
GetTypewwK R
(wwR S
)wwS T
.wwT U
FullNamewwU ]
)ww] ^
;ww^ _
}xx 
}yy 
}zz 	
public 
static 
async 
Task  
InvokeAsync! ,
<, -
TEvents- 4
,4 5
T16 8
>8 9
(9 :
this: >
IEnumerable? J
<J K
TEventsK R
>R S
eventsT Z
,Z [
Func\ `
<` a
TEventsa h
,h i
T1j l
,l m
Taskn r
>r s
dispatcht |
,| }
T1	~ Ä
arg1
Å Ö
,
Ö Ü
ILogger
á é
logger
è ï
)
ï ñ
{
ÄÄ 	
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
sink
ÅÅ 
in
ÅÅ  
events
ÅÅ! '
)
ÅÅ' (
{
ÇÇ 
try
ÉÉ 
{
ÑÑ 
await
ÖÖ 
dispatch
ÖÖ "
(
ÖÖ" #
sink
ÖÖ# '
,
ÖÖ' (
arg1
ÖÖ) -
)
ÖÖ- .
;
ÖÖ. /
}
ÜÜ 
catch
áá 
(
áá 
	Exception
áá  
ex
áá! #
)
áá# $
{
àà 
HandleException
ââ #
(
ââ# $
ex
ââ$ &
,
ââ& '
logger
ââ( .
,
ââ. /
typeof
ââ0 6
(
ââ6 7
TEvents
ââ7 >
)
ââ> ?
.
ââ? @
Name
ââ@ D
,
ââD E
sink
ââF J
.
ââJ K
GetType
ââK R
(
ââR S
)
ââS T
.
ââT U
FullName
ââU ]
)
ââ] ^
;
ââ^ _
}
ää 
}
ãã 
}
åå 	
public
ëë 
static
ëë 
async
ëë 
Task
ëë  
InvokeAsync
ëë! ,
<
ëë, -
TEvents
ëë- 4
,
ëë4 5
T1
ëë6 8
,
ëë8 9
T2
ëë: <
>
ëë< =
(
ëë= >
this
ëë> B
IEnumerable
ëëC N
<
ëëN O
TEvents
ëëO V
>
ëëV W
events
ëëX ^
,
ëë^ _
Func
ëë` d
<
ëëd e
TEvents
ëëe l
,
ëël m
T1
ëën p
,
ëëp q
T2
ëër t
,
ëët u
Task
ëëv z
>
ëëz {
dispatchëë| Ñ
,ëëÑ Ö
T1ëëÜ à
arg1ëëâ ç
,ëëç é
T2ëëè ë
arg2ëëí ñ
,ëëñ ó
ILoggerëëò ü
loggerëë† ¶
)ëë¶ ß
{
íí 	
foreach
ìì 
(
ìì 
var
ìì 
sink
ìì 
in
ìì  
events
ìì! '
)
ìì' (
{
îî 
try
ïï 
{
ññ 
await
óó 
dispatch
óó "
(
óó" #
sink
óó# '
,
óó' (
arg1
óó) -
,
óó- .
arg2
óó/ 3
)
óó3 4
;
óó4 5
}
òò 
catch
ôô 
(
ôô 
	Exception
ôô  
ex
ôô! #
)
ôô# $
{
öö 
HandleException
õõ #
(
õõ# $
ex
õõ$ &
,
õõ& '
logger
õõ( .
,
õõ. /
typeof
õõ0 6
(
õõ6 7
TEvents
õõ7 >
)
õõ> ?
.
õõ? @
Name
õõ@ D
,
õõD E
sink
õõF J
.
õõJ K
GetType
õõK R
(
õõR S
)
õõS T
.
õõT U
FullName
õõU ]
)
õõ] ^
;
õõ^ _
}
úú 
}
ùù 
}
ûû 	
public
££ 
static
££ 
async
££ 
Task
££  
InvokeAsync
££! ,
<
££, -
TEvents
££- 4
,
££4 5
T1
££6 8
,
££8 9
T2
££: <
,
££< =
T3
££> @
>
££@ A
(
££A B
this
££B F
IEnumerable
££G R
<
££R S
TEvents
££S Z
>
££Z [
events
££\ b
,
££b c
Func
££d h
<
££h i
TEvents
££i p
,
££p q
T1
££r t
,
££t u
T2
££v x
,
££x y
T3
££z |
,
££| }
Task££~ Ç
>££Ç É
dispatch££Ñ å
,££å ç
T1££é ê
arg1££ë ï
,££ï ñ
T2££ó ô
arg2££ö û
,££û ü
T3££† ¢
arg3£££ ß
,££ß ®
ILogger££© ∞
logger££± ∑
)££∑ ∏
{
§§ 	
foreach
•• 
(
•• 
var
•• 
sink
•• 
in
••  
events
••! '
)
••' (
{
¶¶ 
try
ßß 
{
®® 
await
©© 
dispatch
©© "
(
©©" #
sink
©©# '
,
©©' (
arg1
©©) -
,
©©- .
arg2
©©/ 3
,
©©3 4
arg3
©©5 9
)
©©9 :
;
©©: ;
}
™™ 
catch
´´ 
(
´´ 
	Exception
´´  
ex
´´! #
)
´´# $
{
¨¨ 
HandleException
≠≠ #
(
≠≠# $
ex
≠≠$ &
,
≠≠& '
logger
≠≠( .
,
≠≠. /
typeof
≠≠0 6
(
≠≠6 7
TEvents
≠≠7 >
)
≠≠> ?
.
≠≠? @
Name
≠≠@ D
,
≠≠D E
sink
≠≠F J
.
≠≠J K
GetType
≠≠K R
(
≠≠R S
)
≠≠S T
.
≠≠T U
FullName
≠≠U ]
)
≠≠] ^
;
≠≠^ _
}
ÆÆ 
}
ØØ 
}
∞∞ 	
public
µµ 
static
µµ 
async
µµ 
Task
µµ  
InvokeAsync
µµ! ,
<
µµ, -
TEvents
µµ- 4
,
µµ4 5
T1
µµ6 8
,
µµ8 9
T2
µµ: <
,
µµ< =
T3
µµ> @
,
µµ@ A
T4
µµB D
>
µµD E
(
µµE F
this
µµF J
IEnumerable
µµK V
<
µµV W
TEvents
µµW ^
>
µµ^ _
events
µµ` f
,
µµf g
Func
µµh l
<
µµl m
TEvents
µµm t
,
µµt u
T1
µµv x
,
µµx y
T2
µµz |
,
µµ| }
T3µµ~ Ä
,µµÄ Å
T4µµÇ Ñ
,µµÑ Ö
TaskµµÜ ä
>µµä ã
dispatchµµå î
,µµî ï
T1µµñ ò
arg1µµô ù
,µµù û
T2µµü °
arg2µµ¢ ¶
,µµ¶ ß
T3µµ® ™
arg3µµ´ Ø
,µµØ ∞
T4µµ± ≥
arg4µµ¥ ∏
,µµ∏ π
ILoggerµµ∫ ¡
loggerµµ¬ »
)µµ» …
{
∂∂ 	
foreach
∑∑ 
(
∑∑ 
var
∑∑ 
sink
∑∑ 
in
∑∑  
events
∑∑! '
)
∑∑' (
{
∏∏ 
try
ππ 
{
∫∫ 
await
ªª 
dispatch
ªª "
(
ªª" #
sink
ªª# '
,
ªª' (
arg1
ªª) -
,
ªª- .
arg2
ªª/ 3
,
ªª3 4
arg3
ªª5 9
,
ªª9 :
arg4
ªª; ?
)
ªª? @
;
ªª@ A
}
ºº 
catch
ΩΩ 
(
ΩΩ 
	Exception
ΩΩ  
ex
ΩΩ! #
)
ΩΩ# $
{
ææ 
HandleException
øø #
(
øø# $
ex
øø$ &
,
øø& '
logger
øø( .
,
øø. /
typeof
øø0 6
(
øø6 7
TEvents
øø7 >
)
øø> ?
.
øø? @
Name
øø@ D
,
øøD E
sink
øøF J
.
øøJ K
GetType
øøK R
(
øøR S
)
øøS T
.
øøT U
FullName
øøU ]
)
øø] ^
;
øø^ _
}
¿¿ 
}
¡¡ 
}
¬¬ 	
public
«« 
static
«« 
async
«« 
Task
««  
InvokeAsync
««! ,
<
««, -
TEvents
««- 4
,
««4 5
T1
««6 8
,
««8 9
T2
««: <
,
««< =
T3
««> @
,
««@ A
T4
««B D
,
««D E
T5
««F H
>
««H I
(
««I J
this
««J N
IEnumerable
««O Z
<
««Z [
TEvents
««[ b
>
««b c
events
««d j
,
««j k
Func
««l p
<
««p q
TEvents
««q x
,
««x y
T1
««z |
,
««| }
T2««~ Ä
,««Ä Å
T3««Ç Ñ
,««Ñ Ö
T4««Ü à
,««à â
T5««ä å
,««å ç
Task««é í
>««í ì
dispatch««î ú
,««ú ù
T1««û †
arg1««° •
,««• ¶
T2««ß ©
arg2««™ Æ
,««Æ Ø
T3««∞ ≤
arg3««≥ ∑
,««∑ ∏
T4««π ª
arg4««º ¿
,««¿ ¡
T5««¬ ƒ
arg5««≈ …
,««…  
ILogger««À “
logger««” Ÿ
)««Ÿ ⁄
{
»» 	
foreach
…… 
(
…… 
var
…… 
sink
…… 
in
……  
events
……! '
)
……' (
{
   
try
ÀÀ 
{
ÃÃ 
await
ÕÕ 
dispatch
ÕÕ "
(
ÕÕ" #
sink
ÕÕ# '
,
ÕÕ' (
arg1
ÕÕ) -
,
ÕÕ- .
arg2
ÕÕ/ 3
,
ÕÕ3 4
arg3
ÕÕ5 9
,
ÕÕ9 :
arg4
ÕÕ; ?
,
ÕÕ? @
arg5
ÕÕA E
)
ÕÕE F
;
ÕÕF G
}
ŒŒ 
catch
œœ 
(
œœ 
	Exception
œœ  
ex
œœ! #
)
œœ# $
{
–– 
HandleException
—— #
(
——# $
ex
——$ &
,
——& '
logger
——( .
,
——. /
typeof
——0 6
(
——6 7
TEvents
——7 >
)
——> ?
.
——? @
Name
——@ D
,
——D E
sink
——F J
.
——J K
GetType
——K R
(
——R S
)
——S T
.
——T U
FullName
——U ]
)
——] ^
;
——^ _
}
““ 
}
”” 
}
‘‘ 	
public
÷÷ 
static
÷÷ 
async
÷÷ 
Task
÷÷  
<
÷÷  !
IEnumerable
÷÷! ,
<
÷÷, -
TResult
÷÷- 4
>
÷÷4 5
>
÷÷5 6
InvokeAsync
÷÷7 B
<
÷÷B C
TEvents
÷÷C J
,
÷÷J K
TResult
÷÷L S
>
÷÷S T
(
÷÷T U
this
÷÷U Y
IEnumerable
÷÷Z e
<
÷÷e f
TEvents
÷÷f m
>
÷÷m n
events
÷÷o u
,
÷÷u v
Func
÷÷w {
<
÷÷{ |
TEvents÷÷| É
,÷÷É Ñ
Task÷÷Ö â
<÷÷â ä
TResult÷÷ä ë
>÷÷ë í
>÷÷í ì
dispatch÷÷î ú
,÷÷ú ù
ILogger÷÷û •
logger÷÷¶ ¨
)÷÷¨ ≠
{
◊◊ 	
var
ÿÿ 
results
ÿÿ 
=
ÿÿ 
new
ÿÿ 
List
ÿÿ "
<
ÿÿ" #
TResult
ÿÿ# *
>
ÿÿ* +
(
ÿÿ+ ,
)
ÿÿ, -
;
ÿÿ- .
foreach
⁄⁄ 
(
⁄⁄ 
var
⁄⁄ 
sink
⁄⁄ 
in
⁄⁄  
events
⁄⁄! '
)
⁄⁄' (
{
€€ 
try
‹‹ 
{
›› 
var
ﬁﬁ 
result
ﬁﬁ 
=
ﬁﬁ  
await
ﬁﬁ! &
dispatch
ﬁﬁ' /
(
ﬁﬁ/ 0
sink
ﬁﬁ0 4
)
ﬁﬁ4 5
;
ﬁﬁ5 6
results
ﬂﬂ 
.
ﬂﬂ 
Add
ﬂﬂ 
(
ﬂﬂ  
result
ﬂﬂ  &
)
ﬂﬂ& '
;
ﬂﬂ' (
}
‡‡ 
catch
·· 
(
·· 
	Exception
··  
ex
··! #
)
··# $
{
‚‚ 
HandleException
„„ #
(
„„# $
ex
„„$ &
,
„„& '
logger
„„( .
,
„„. /
typeof
„„0 6
(
„„6 7
TEvents
„„7 >
)
„„> ?
.
„„? @
Name
„„@ D
,
„„D E
sink
„„F J
.
„„J K
GetType
„„K R
(
„„R S
)
„„S T
.
„„T U
FullName
„„U ]
)
„„] ^
;
„„^ _
}
‰‰ 
}
ÂÂ 
return
ÁÁ 
results
ÁÁ 
;
ÁÁ 
}
ËË 	
public
ÍÍ 
static
ÍÍ 
async
ÍÍ 
Task
ÍÍ  
<
ÍÍ  !
IEnumerable
ÍÍ! ,
<
ÍÍ, -
TResult
ÍÍ- 4
>
ÍÍ4 5
>
ÍÍ5 6
InvokeAsync
ÍÍ7 B
<
ÍÍB C
TEvents
ÍÍC J
,
ÍÍJ K
T1
ÍÍL N
,
ÍÍN O
TResult
ÍÍP W
>
ÍÍW X
(
ÍÍX Y
this
ÍÍY ]
IEnumerable
ÍÍ^ i
<
ÍÍi j
TEvents
ÍÍj q
>
ÍÍq r
events
ÍÍs y
,
ÍÍy z
Func
ÍÍ{ 
<ÍÍ Ä
TEventsÍÍÄ á
,ÍÍá à
T1ÍÍâ ã
,ÍÍã å
TaskÍÍç ë
<ÍÍë í
TResultÍÍí ô
>ÍÍô ö
>ÍÍö õ
dispatchÍÍú §
,ÍÍ§ •
T1ÍÍ¶ ®
arg1ÍÍ© ≠
,ÍÍ≠ Æ
ILoggerÍÍØ ∂
loggerÍÍ∑ Ω
)ÍÍΩ æ
{
ÎÎ 	
var
ÏÏ 
results
ÏÏ 
=
ÏÏ 
new
ÏÏ 
List
ÏÏ "
<
ÏÏ" #
TResult
ÏÏ# *
>
ÏÏ* +
(
ÏÏ+ ,
)
ÏÏ, -
;
ÏÏ- .
foreach
ÓÓ 
(
ÓÓ 
var
ÓÓ 
sink
ÓÓ 
in
ÓÓ  
events
ÓÓ! '
)
ÓÓ' (
{
ÔÔ 
try
 
{
ÒÒ 
var
ÚÚ 
result
ÚÚ 
=
ÚÚ  
await
ÚÚ! &
dispatch
ÚÚ' /
(
ÚÚ/ 0
sink
ÚÚ0 4
,
ÚÚ4 5
arg1
ÚÚ6 :
)
ÚÚ: ;
;
ÚÚ; <
results
ÛÛ 
.
ÛÛ 
Add
ÛÛ 
(
ÛÛ  
result
ÛÛ  &
)
ÛÛ& '
;
ÛÛ' (
}
ÙÙ 
catch
ıı 
(
ıı 
	Exception
ıı  
ex
ıı! #
)
ıı# $
{
ˆˆ 
HandleException
˜˜ #
(
˜˜# $
ex
˜˜$ &
,
˜˜& '
logger
˜˜( .
,
˜˜. /
typeof
˜˜0 6
(
˜˜6 7
TEvents
˜˜7 >
)
˜˜> ?
.
˜˜? @
Name
˜˜@ D
,
˜˜D E
sink
˜˜F J
.
˜˜J K
GetType
˜˜K R
(
˜˜R S
)
˜˜S T
.
˜˜T U
FullName
˜˜U ]
)
˜˜] ^
;
˜˜^ _
}
¯¯ 
}
˘˘ 
return
˚˚ 
results
˚˚ 
;
˚˚ 
}
¸¸ 	
public
˛˛ 
static
˛˛ 
async
˛˛ 
Task
˛˛  
<
˛˛  !
IEnumerable
˛˛! ,
<
˛˛, -
TResult
˛˛- 4
>
˛˛4 5
>
˛˛5 6
InvokeAsync
˛˛7 B
<
˛˛B C
TEvents
˛˛C J
,
˛˛J K
TResult
˛˛L S
>
˛˛S T
(
˛˛T U
this
˛˛U Y
IEnumerable
˛˛Z e
<
˛˛e f
TEvents
˛˛f m
>
˛˛m n
events
˛˛o u
,
˛˛u v
Func
˛˛w {
<
˛˛{ |
TEvents˛˛| É
,˛˛É Ñ
Task˛˛Ö â
<˛˛â ä
IEnumerable˛˛ä ï
<˛˛ï ñ
TResult˛˛ñ ù
>˛˛ù û
>˛˛û ü
>˛˛ü †
dispatch˛˛° ©
,˛˛© ™
ILogger˛˛´ ≤
logger˛˛≥ π
)˛˛π ∫
{
ˇˇ 	
var
ÄÄ 
results
ÄÄ 
=
ÄÄ 
new
ÄÄ 
List
ÄÄ "
<
ÄÄ" #
TResult
ÄÄ# *
>
ÄÄ* +
(
ÄÄ+ ,
)
ÄÄ, -
;
ÄÄ- .
foreach
ÇÇ 
(
ÇÇ 
var
ÇÇ 
sink
ÇÇ 
in
ÇÇ  
events
ÇÇ! '
)
ÇÇ' (
{
ÉÉ 
try
ÑÑ 
{
ÖÖ 
var
ÜÜ 
result
ÜÜ 
=
ÜÜ  
await
ÜÜ! &
dispatch
ÜÜ' /
(
ÜÜ/ 0
sink
ÜÜ0 4
)
ÜÜ4 5
;
ÜÜ5 6
results
áá 
.
áá 
AddRange
áá $
(
áá$ %
result
áá% +
)
áá+ ,
;
áá, -
}
àà 
catch
ââ 
(
ââ 
	Exception
ââ  
ex
ââ! #
)
ââ# $
{
ää 
HandleException
ãã #
(
ãã# $
ex
ãã$ &
,
ãã& '
logger
ãã( .
,
ãã. /
typeof
ãã0 6
(
ãã6 7
TEvents
ãã7 >
)
ãã> ?
.
ãã? @
Name
ãã@ D
,
ããD E
sink
ããF J
.
ããJ K
GetType
ããK R
(
ããR S
)
ããS T
.
ããT U
FullName
ããU ]
)
ãã] ^
;
ãã^ _
}
åå 
}
çç 
return
èè 
results
èè 
;
èè 
}
êê 	
public
íí 
static
íí 
void
íí 
HandleException
íí *
(
íí* +
	Exception
íí+ 4
ex
íí5 7
,
íí7 8
ILogger
íí9 @
logger
ííA G
,
ííG H
string
ííI O

sourceType
ííP Z
,
ííZ [
string
íí\ b
method
ííc i
)
ííi j
{
ìì 	
if
îî 
(
îî 
IsLogged
îî 
(
îî 
ex
îî 
)
îî 
)
îî 
{
ïï 
logger
ññ 
.
ññ 
LogError
ññ 
(
ññ  
ex
ññ  "
,
ññ" #
$str
ññ$ P
,
ññP Q

sourceType
óó 
,
óó 
method
òò 
,
òò 
ex
ôô 
.
ôô 
GetType
ôô 
(
ôô 
)
ôô  
.
ôô  !
Name
ôô! %
)
ôô% &
;
ôô& '
}
öö 
if
úú 
(
úú 
ex
úú 
.
úú 
IsFatal
úú 
(
úú 
)
úú 
)
úú 
{
ùù 
throw
ûû 
ex
ûû 
;
ûû 
}
üü 
}
†† 	
private
°° 
static
°° 
bool
°° 
IsLogged
°° $
(
°°$ %
	Exception
°°% .
ex
°°/ 1
)
°°1 2
{
¢¢ 	
return
££ 
!
££ 
ex
££ 
.
££ 
IsFatal
££ 
(
££ 
)
££  
;
££  !
}
§§ 	
}
•• 
}¶¶ ‚
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Extensions\StringExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class 
StringExtensions (
{ 
public 
static 
string 
ToHexString (
(( )
this) -
byte. 2
[2 3
]3 4
bytes5 :
): ;
{		 	
return

 
BitConverter

 
.

  
ToString

  (
(

( )
bytes

) .
)

. /
.

/ 0
Replace

0 7
(

7 8
$str

8 ;
,

; <
$str

= ?
)

? @
;

@ A
} 	
public 
static 
byte 
[ 
] 
ToByteArray (
(( )
this) -
string. 4
hex5 8
)8 9
{ 	
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
hex' *
.* +
Length+ 1
)1 2
.2 3
Where 
( 
x 
=> 
$num 
== 
x  !
%" #
$num$ %
)% &
.& '
Select 
( 
x 
=> 
Convert #
.# $
ToByte$ *
(* +
hex+ .
.. /
	Substring/ 8
(8 9
x9 :
,: ;
$num< =
)= >
,> ?
$num@ B
)B C
)C D
.D E
ToArray 
( 
) 
; 
} 	
} 
} Ê
ÄC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\FeatureAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
[

 
AttributeUsage

 
(

 
AttributeTargets

 $
.

$ %
Class

% *
,

* +
AllowMultiple

, 9
=

: ;
false

< A
)

A B
]

B C
public 

class 
FeatureAttribute !
:" #
	Attribute$ -
{ 
public 
FeatureAttribute 
(  
string  &
featureName' 2
)2 3
{ 	
FeatureName 
= 
featureName %
;% &
} 	
public 
string 
FeatureName !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ÷
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\EmbeddedDirectoryContents.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public		 

class		 %
EmbeddedDirectoryContents		 *
:		+ ,
IDirectoryContents		- ?
{

 
private 
readonly 
IList 
< 
	IFileInfo (
>( )
_entries* 2
;2 3
public %
EmbeddedDirectoryContents (
(( )
IEnumerable) 4
<4 5
	IFileInfo5 >
>> ?
entries@ G
)G H
{ 	
if 
( 
entries 
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
entries7 >
)> ?
)? @
;@ A
} 
_entries 
= 
entries 
. 
ToList %
(% &
)& '
;' (
} 	
public 
bool 
Exists 
{ 	
get 
{ 
return 
_entries !
.! "
Any" %
(% &
)& '
;' (
}) *
} 	
public 
IEnumerator 
< 
	IFileInfo $
>$ %
GetEnumerator& 3
(3 4
)4 5
{ 	
return 
_entries 
. 
GetEnumerator )
() *
)* +
;+ ,
} 	
IEnumerator!! 
IEnumerable!! 
.!!  
GetEnumerator!!  -
(!!- .
)!!. /
{"" 	
return## 
_entries## 
.## 
GetEnumerator## )
(##) *
)##* +
;##+ ,
}$$ 	
}%% 
}&& ã
ìC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\EmbeddedDirectoryInfo.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public

 

class

 !
EmbeddedDirectoryInfo

 &
:

' (
	IFileInfo

) 2
{ 
public !
EmbeddedDirectoryInfo $
($ %
string% +
name, 0
)0 1
{ 	
Name 
= 
name 
; 
} 	
public 
bool 
Exists 
=> 
true "
;" #
public 
long 
Length 
=> 
- 
$num  
;  !
public"" 
string"" 
PhysicalPath"" "
=>""# %
null""& *
;""* +
public%% 
string%% 
Name%% 
{%% 
get%%  
;%%  !
}%%" #
public** 
DateTimeOffset** 
LastModified** *
=>**+ -
DateTimeOffset**. <
.**< =
MinValue**= E
;**E F
public// 
bool// 
IsDirectory// 
=>//  "
true//# '
;//' (
public66 
Stream66 
CreateReadStream66 &
(66& '
)66' (
{77 	
throw88 
new88 %
InvalidOperationException88 /
(88/ 0
$str880 Y
)88Y Z
;88Z [
}99 	
}:: 
};; ∂
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\FileInfoExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public 

static 
class 
FileInfoExtensions *
{ 
public		 
static		 
IEnumerable		 !
<		! "
string		" (
>		( )
ReadAllLines		* 6
(		6 7
this		7 ;
	IFileInfo		< E
fileInfo		F N
)		N O
{

 	
var 
lines 
= 
new 
List  
<  !
string! '
>' (
(( )
)) *
;* +
if 
( 
fileInfo 
? 
. 
Exists  
??! #
false$ )
)) *
{ 
using 
( 
var 
reader !
=" #
fileInfo$ ,
., -
CreateReadStream- =
(= >
)> ?
)? @
{ 
using 
( 
var 
sr !
=" #
new$ '
StreamReader( 4
(4 5
reader5 ;
); <
)< =
{ 
string 
line #
;# $
while 
( 
(  
line  $
=% &
sr' )
.) *
ReadLine* 2
(2 3
)3 4
)4 5
!=6 8
null9 =
)= >
{ 
lines !
.! "
Add" %
(% &
line& *
)* +
;+ ,
} 
} 
} 
} 
return 
lines 
; 
} 	
} 
} æ
ëC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\IStaticFileProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public		 

	interface		 
IStaticFileProvider		 (
:		) *
IFileProvider		+ 8
{

 
} 
} ë
ñC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\IVirtualPathBaseProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public 

	interface $
IVirtualPathBaseProvider -
{ 

PathString 
VirtualPathBase "
{# $
get% (
;( )
}* +
} 
}		 ò
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\NormalizedPaths.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public 

static 
class 
NormalizedPaths '
{ 
public 
static 
void !
ResolveFolderContents 0
(0 1
string1 7
folder8 >
,> ?
IEnumerable@ K
<K L
stringL R
>R S
normalizedPathsT c
,c d
out 
IEnumerable 
< 
string "
>" #
	filePaths$ -
,- .
out/ 2
IEnumerable3 >
<> ?
string? E
>E F
folderPathsG R
)R S
{ 	
var 
files 
= 
new 
HashSet #
<# $
string$ *
>* +
(+ ,
StringComparer, :
.: ;
Ordinal; B
)B C
;C D
var 
folders 
= 
new 
HashSet %
<% &
string& ,
>, -
(- .
StringComparer. <
.< =
Ordinal= D
)D E
;E F
if 
( 
folder 
[ 
folder 
. 
Length $
-% &
$num' (
]( )
!=* ,
$char- 0
)0 1
{ 
folder 
= 
folder 
+  !
$char" %
;% &
} 
foreach 
( 
var 
path 
in  
normalizedPaths! 0
.0 1
Where1 6
(6 7
a7 8
=>9 ;
a< =
.= >

StartsWith> H
(H I
folderI O
,O P
StringComparisonQ a
.a b
Ordinalb i
)i j
)j k
)k l
{ 
var 
subPath 
= 
path "
." #
	Substring# ,
(, -
folder- 3
.3 4
Length4 :
): ;
;; <
var 
index 
= 
subPath #
.# $
IndexOf$ +
(+ ,
$char, /
)/ 0
;0 1
if   
(   
index   
==   
-   
$num   
)    
{!! 
files## 
.## 
Add## 
(## 
path## "
)##" #
;### $
}$$ 
else%% 
{&& 
folders(( 
.(( 
Add(( 
(((  
subPath((  '
.((' (
	Substring((( 1
(((1 2
$num((2 3
,((3 4
index((5 :
)((: ;
)((; <
;((< =
})) 
}** 
	filePaths,, 
=,, 
files,, 
;,, 
folderPaths-- 
=-- 
folders-- !
;--! "
}.. 	
}// 
}00 »
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\IModularTenantEvents.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface  
IModularTenantEvents )
{ 
Task 
ActivatingAsync 
( 
) 
; 
Task		 
ActivatedAsync		 
(		 
)		 
;		 
Task

 
TerminatingAsync

 
(

 
)

 
;

  
Task 
TerminatedAsync 
( 
) 
; 
Task 
RemovingAsync 
(  
ShellRemovingContext /
context0 7
)7 8
;8 9
} 
public 

class 
ModularTenantEvents $
:% & 
IModularTenantEvents' ;
{ 
public 
virtual 
Task 
ActivatedAsync *
(* +
)+ ,
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
ActivatingAsync +
(+ ,
), -
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
TerminatedAsync +
(+ ,
), -
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public   
virtual   
Task   
TerminatingAsync   ,
(  , -
)  - .
{!! 	
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
public%% 
virtual%% 
Task%% 
RemovingAsync%% )
(%%) * 
ShellRemovingContext%%* >
context%%? F
)%%F G
=>%%H J
Task%%K O
.%%O P
CompletedTask%%P ]
;%%] ^
}&& 
}'' Ú
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\IModuleNamesProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface  
IModuleNamesProvider )
{ 
IEnumerable 
< 
string 
> 
GetModuleNames *
(* +
)+ ,
;, -
} 
}		 ò
âC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\IModuleStaticFileProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public

 

	interface

 %
IModuleStaticFileProvider

 .
:

/ 0
IStaticFileProvider

1 D
{ 
} 
} ¬
xC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\IStartup.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface 
IStartup 
{ 
int 
Order 
{ 
get 
; 
} 
int 
ConfigureOrder 
{ 
get  
;  !
}" #
void 
ConfigureServices 
( 
IServiceCollection 1
services2 :
): ;
;; <
void%% 
	Configure%% 
(%% 
IApplicationBuilder%% *
builder%%+ 2
,%%2 3!
IEndpointRouteBuilder%%4 I
routes%%J P
,%%P Q
IServiceProvider%%R b
serviceProvider%%c r
)%%r s
;%%s t
}&& 
}'' €â
âC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\FeatureAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
,- .
AllowMultiple/ <
== >
true? C
,C D
	InheritedE N
=O P
falseQ V
)V W
]W X
public 

class 
FeatureAttribute !
:" #
	Attribute$ -
{ 
	protected 
internal 
const  
string! '
DefaultName( 3
=4 5
$str6 8
;8 9
	protected 
internal 
const  
string! '
DefaultDescription( :
=; <
$str= ?
;? @
	protected 
internal 
const  
string! '
Uncategorized( 5
=6 7
nameof8 >
(> ?
Uncategorized? L
)L M
;M N
	protected$$ 
internal$$ 
const$$  
string$$! '
DefaultCategory$$( 7
=$$8 9
$str$$: <
;$$< =
	protected)) 
internal)) 
const))  
string))! '&
DefaultFeatureDependencies))( B
=))C D
$str))E G
;))G H
	protected.. 
internal.. 
const..  
bool..! %$
DefaultDefaultTenantOnly..& >
=..? @
false..A F
;..F G
	protected33 
internal33 
const33  
bool33! % 
DefaultAlwaysEnabled33& :
=33; <
false33= B
;33B C
public99 
FeatureAttribute99 
(99  
)99  !
{:: 	
}<< 	
publicII 
FeatureAttributeII 
(II  
stringJJ 
idJJ 
,KK 
stringKK 
descriptionKK  
,LL 
stringLL 
featureDependenciesLL (
,MM 
objectMM 
defaultTenantMM "
,NN 
objectNN 
alwaysEnabledNN "
,OO 
objectOO #
enabledByDependencyOnlyOO ,
)PP 	
:PP
 
thisPP 
(PP 
idQQ 
,RR 
defaultRR 
,SS 
defaultSS 
,TT 
defaultTT 
,UU 
descriptionUU 
,VV 
featureDependenciesVV !
,WW 
defaultTenantWW 
,XX 
alwaysEnabledXX 
,YY #
enabledByDependencyOnlyYY %
)ZZ 	
{[[ 	
}\\ 	
publicmm 
FeatureAttributemm 
(mm  
stringnn 
idnn 
,oo 
stringoo 
nameoo 
,pp 
stringpp 
descriptionpp  
,qq 
stringqq 
featureDependenciesqq (
,rr 
objectrr 
defaultTenantrr "
,ss 
objectss 
alwaysEnabledss "
,tt 
objecttt #
enabledByDependencyOnlytt ,
)uu 	
:uu
 
thisuu 
(uu 
idvv 
,ww 
nameww 
,xx 
defaultxx 
,yy 
defaultyy 
,zz 
descriptionzz 
,{{ 
featureDependencies{{ !
,|| 
defaultTenant|| 
,}} 
alwaysEnabled}} 
,~~ #
enabledByDependencyOnly~~ %
) 	
{
ÄÄ 	
}
ÅÅ 	
public
îî 
FeatureAttribute
îî 
(
îî  
string
ïï 
id
ïï 
,
ññ 
string
ññ 
name
ññ 
,
óó 
string
óó 
category
óó 
,
òò 
string
òò 
priority
òò 
,
ôô 
string
ôô 
description
ôô  
,
öö 
string
öö !
featureDependencies
öö (
,
õõ 
object
õõ 
defaultTenant
õõ "
,
úú 
object
úú 
alwaysEnabled
úú "
,
ùù 
object
ùù %
enabledByDependencyOnly
ùù ,
)
ûû 	
{
üü 	
Id
†† 
=
†† 
id
†† 
;
†† 
Name
°° 
=
°° 
name
°° 
;
°° 
Category
¢¢ 
=
¢¢ 
category
¢¢ 
??
¢¢  "
DefaultCategory
¢¢# 2
;
¢¢2 3
Priority
££ 
=
££ 
priority
££ 
??
££  "
String
££# )
.
££) *
Empty
££* /
;
££/ 0
Description
§§ 
=
§§ 
description
§§ %
??
§§& ( 
DefaultDescription
§§) ;
;
§§; <#
DelimitedDependencies
•• !
=
••" #!
featureDependencies
••$ 7
??
••8 :(
DefaultFeatureDependencies
••; U
;
••U V
static
®® 
bool
®® 
	ToBoolean
®® !
(
®®! "
object
®®" (
value
®®) .
)
®®. /
=>
®®0 2
Convert
®®3 :
.
®®: ;
	ToBoolean
®®; D
(
®®D E
value
®®E J
)
®®J K
;
®®K L
DefaultTenantOnly
™™ 
=
™™ 
	ToBoolean
™™  )
(
™™) *
defaultTenant
™™* 7
)
™™7 8
;
™™8 9
IsAlwaysEnabled
´´ 
=
´´ 
	ToBoolean
´´ '
(
´´' (
alwaysEnabled
´´( 5
)
´´5 6
;
´´6 7%
EnabledByDependencyOnly
¨¨ #
=
¨¨$ %
	ToBoolean
¨¨& /
(
¨¨/ 0%
enabledByDependencyOnly
¨¨0 G
)
¨¨G H
;
¨¨H I
}
≠≠ 	
public
≤≤ 
virtual
≤≤ 
bool
≤≤ 
Exists
≤≤ "
=>
≤≤# %
!
≤≤& '
String
≤≤' -
.
≤≤- .
IsNullOrEmpty
≤≤. ;
(
≤≤; <
Id
≤≤< >
)
≤≤> ?
;
≤≤? @
private
¥¥ 
string
¥¥ 
_id
¥¥ 
;
¥¥ 
public
ππ 
virtual
ππ 
string
ππ 
Id
ππ  
{
∫∫ 	
get
ªª 
=>
ªª 
_id
ªª 
;
ªª 
set
ºº 
{
ΩΩ 
if
øø 
(
øø 
String
øø 
.
øø 
IsNullOrEmpty
øø (
(
øø( )
value
øø) .
)
øø. /
)
øø/ 0
{
¿¿ 
throw
¡¡ 
new
¡¡ '
InvalidOperationException
¡¡ 7
(
¡¡7 8
$"
¡¡8 :
$str
¡¡: @
{
¡¡@ A
nameof
¡¡A G
(
¡¡G H
Id
¡¡H J
)
¡¡J K
}
¡¡K L
$str
¡¡L 
"¡¡ Ä
)¡¡Ä Å
{
¬¬ 
Data
√√ 
=
√√ 
{
√√  
{
√√! "
nameof
√√# )
(
√√) *
value
√√* /
)
√√/ 0
,
√√0 1
value
√√2 7
}
√√8 9
}
√√: ;
}
ƒƒ 
;
ƒƒ 
}
≈≈ 
_id
«« 
=
«« 
value
«« 
;
«« 
}
»» 
}
…… 	
private
ÀÀ 
string
ÀÀ 
_name
ÀÀ 
;
ÀÀ 
internal
‘‘ 
static
‘‘ 
string
‘‘ 
StringOrNull
‘‘ +
(
‘‘+ ,
string
‘‘, 2
s
‘‘3 4
)
‘‘4 5
=>
‘‘6 8
String
‘‘9 ?
.
‘‘? @
IsNullOrEmpty
‘‘@ M
(
‘‘M N
s
‘‘N O
)
‘‘O P
?
‘‘Q R
null
‘‘S W
:
‘‘X Y
s
‘‘Z [
;
‘‘[ \
public
⁄⁄ 
virtual
⁄⁄ 
string
⁄⁄ 
Name
⁄⁄ "
{
€€ 	
get
‹‹ 
=>
‹‹ 
StringOrNull
‹‹ 
(
‹‹  
_name
‹‹  %
)
‹‹% &
??
‹‹' )
Id
‹‹* ,
;
‹‹, -
set
›› 
=>
›› 
_name
›› 
=
›› 
value
››  
;
››  !
}
ﬁﬁ 	
	protected
ÊÊ 
static
ÊÊ 
IEnumerable
ÊÊ $
<
ÊÊ$ %
T
ÊÊ% &
>
ÊÊ& '
	GetValues
ÊÊ( 1
<
ÊÊ1 2
T
ÊÊ2 3
>
ÊÊ3 4
(
ÊÊ4 5
params
ÊÊ5 ;
T
ÊÊ< =
[
ÊÊ= >
]
ÊÊ> ?
values
ÊÊ@ F
)
ÊÊF G
{
ÁÁ 	
foreach
ËË 
(
ËË 
var
ËË 
value
ËË 
in
ËË !
values
ËË" (
)
ËË( )
{
ÈÈ 
yield
ÍÍ 
return
ÍÍ 
value
ÍÍ "
;
ÍÍ" #
}
ÎÎ 
}
ÏÏ 	
public
ÒÒ 
virtual
ÒÒ 
string
ÒÒ 
Description
ÒÒ )
{
ÒÒ* +
get
ÒÒ, /
;
ÒÒ/ 0
set
ÒÒ1 4
;
ÒÒ4 5
}
ÒÒ6 7
=
ÒÒ8 9 
DefaultDescription
ÒÒ: L
;
ÒÒL M
internal
˘˘ 
virtual
˘˘ 
string
˘˘ 
Describe
˘˘  (
(
˘˘( )
params
˘˘) /
FeatureAttribute
˘˘0 @
[
˘˘@ A
]
˘˘A B 
additionalFeatures
˘˘C U
)
˘˘U V
{
˙˙ 	
static
˚˚ 
bool
˚˚ 
IsNotNullOrEmpty
˚˚ (
(
˚˚( )
string
˚˚) /
s
˚˚0 1
)
˚˚1 2
=>
˚˚3 5
!
˚˚6 7
String
˚˚7 =
.
˚˚= >
IsNullOrEmpty
˚˚> K
(
˚˚K L
s
˚˚L M
)
˚˚M N
;
˚˚N O
var
¸¸ "
firstOrDefaultResult
¸¸ $
=
¸¸% &
	GetValues
¸¸' 0
(
¸¸0 1
this
¸¸1 5
)
¸¸5 6
.
¸¸6 7
Concat
¸¸7 =
(
¸¸= > 
additionalFeatures
¸¸> P
)
¸¸P Q
.
˝˝ 
Select
˝˝ 
(
˝˝ 
feature
˝˝ 
=>
˝˝  "
feature
˝˝# *
.
˝˝* +
Description
˝˝+ 6
)
˝˝6 7
.
˛˛ 
FirstOrDefault
˛˛ 
(
˛˛  
IsNotNullOrEmpty
˛˛  0
)
˛˛0 1
;
˛˛1 2
return
ˇˇ "
firstOrDefaultResult
ˇˇ '
??
ˇˇ( * 
DefaultDescription
ˇˇ+ =
;
ˇˇ= >
}
ÄÄ 	
internal
ÜÜ 
	protected
ÜÜ 
const
ÜÜ   
StringSplitOptions
ÜÜ! 3!
DefaultSplitOptions
ÜÜ4 G
=
ÜÜH I
TrimEntries
ÜÜJ U
|
ÜÜV W 
RemoveEmptyEntries
ÜÜX j
;
ÜÜj k
internal
èè 
	protected
èè 
static
èè !
char
èè" &
[
èè& '
]
èè' (

ListDelims
èè) 3
{
èè4 5
get
èè6 9
;
èè9 :
}
èè; <
=
èè= >
	GetValues
èè? H
(
èèH I
$char
èèI L
,
èèL M
$char
èèN Q
,
èèQ R
$char
èèS V
)
èèV W
.
èèW X
ToArray
èèX _
(
èè_ `
)
èè` a
;
èèa b
private
îî 
string
îî #
DelimitedDependencies
îî ,
{
ïï 	
set
ññ 
=>
ññ 
Dependencies
ññ 
=
ññ  !
(
ññ" #
value
ññ# (
??
ññ) +(
DefaultFeatureDependencies
ññ, F
)
ññF G
.
ññG H
Trim
ññH L
(
ññL M
)
ññM N
.
ññN O
Split
ññO T
(
ññT U

ListDelims
ññU _
,
ññ_ `!
DefaultSplitOptions
ñña t
)
ññt u
;
ññu v
}
óó 	
private
ôô 
string
ôô 
[
ôô 
]
ôô 
_dependencies
ôô &
=
ôô' (
	GetValues
ôô) 2
<
ôô2 3
string
ôô3 9
>
ôô9 :
(
ôô: ;
)
ôô; <
.
ôô< =
ToArray
ôô= D
(
ôôD E
)
ôôE F
;
ôôF G
public
üü 
virtual
üü 
string
üü 
[
üü 
]
üü 
Dependencies
üü  ,
{
†† 	
get
°° 
=>
°° 
_dependencies
°°  
;
°°  !
set
¢¢ 
=>
¢¢ 
_dependencies
¢¢  
=
¢¢! "
(
¢¢# $
value
¢¢$ )
??
¢¢* ,
	GetValues
¢¢- 6
<
¢¢6 7
string
¢¢7 =
>
¢¢= >
(
¢¢> ?
)
¢¢? @
)
¢¢@ A
.
¢¢A B
Select
¢¢B H
(
¢¢H I
_
¢¢I J
=>
¢¢K M
_
¢¢N O
.
¢¢O P
Trim
¢¢P T
(
¢¢T U
)
¢¢U V
)
¢¢V W
.
¢¢W X
ToArray
¢¢X _
(
¢¢_ `
)
¢¢` a
;
¢¢a b
}
££ 	
	protected
®® 
internal
®® 
const
®®  
int
®®! $
DefaultPriority
®®% 4
=
®®5 6
$num
®®7 8
;
®®8 9
public
±± 
virtual
±± 
string
±± 
Priority
±± &
{
±±' (
get
±±) ,
;
±±, -
set
±±. 1
;
±±1 2
}
±±3 4
=
±±5 6
$"
±±7 9
{
±±9 :
DefaultPriority
±±: I
}
±±I J
"
±±J K
;
±±K L
internal
∑∑ 
virtual
∑∑ 
int
∑∑ 
?
∑∑ 
InternalPriority
∑∑ .
=>
∑∑/ 1
int
∑∑2 5
.
∑∑5 6
TryParse
∑∑6 >
(
∑∑> ?
Priority
∑∑? G
,
∑∑G H
out
∑∑I L
var
∑∑M P
result
∑∑Q W
)
∑∑W X
?
∑∑Y Z
result
∑∑[ a
:
∑∑b c
null
∑∑d h
;
∑∑h i
internal
¡¡ 
virtual
¡¡ 
int
¡¡ 

Prioritize
¡¡ '
(
¡¡' (
params
¡¡( .
FeatureAttribute
¡¡/ ?
[
¡¡? @
]
¡¡@ A 
additionalFeatures
¡¡B T
)
¡¡T U
{
¬¬ 	
var
√√ 
firstPriority
√√ 
=
√√ 
	GetValues
√√  )
(
√√) *
this
√√* .
)
√√. /
.
√√/ 0
Concat
√√0 6
(
√√6 7 
additionalFeatures
√√7 I
)
√√I J
.
ƒƒ 
Select
ƒƒ 
(
ƒƒ 
feature
ƒƒ 
=>
ƒƒ  "
feature
ƒƒ# *
.
ƒƒ* +
InternalPriority
ƒƒ+ ;
)
ƒƒ; <
.
≈≈ 
FirstOrDefault
≈≈ 
(
≈≈  
priority
≈≈  (
=>
≈≈) +
priority
≈≈, 4
.
≈≈4 5
HasValue
≈≈5 =
)
≈≈= >
;
≈≈> ?
return
∆∆ 
firstPriority
∆∆  
??
∆∆! #
DefaultPriority
∆∆$ 3
;
∆∆3 4
}
«« 	
private
…… 
string
…… 
	_category
……  
=
……! "
DefaultCategory
……# 2
;
……2 3
public
ŒŒ 
virtual
ŒŒ 
string
ŒŒ 
Category
ŒŒ &
{
œœ 	
get
–– 
=>
–– 
	_category
–– 
;
–– 
set
—— 
=>
—— 
	_category
—— 
=
—— 
(
——  
value
——  %
??
——& (
DefaultCategory
——) 8
)
——8 9
.
——9 :
Trim
——: >
(
——> ?
)
——? @
;
——@ A
}
““ 	
internal
€€ 
virtual
€€ 
string
€€ 

Categorize
€€  *
(
€€* +
params
€€+ 1
FeatureAttribute
€€2 B
[
€€B C
]
€€C D 
additionalFeatures
€€E W
)
€€W X
{
‹‹ 	
static
›› 
bool
›› 
IsNotNullOrEmpty
›› (
(
››( )
string
››) /
s
››0 1
)
››1 2
=>
››3 5
!
››6 7
String
››7 =
.
››= >
IsNullOrEmpty
››> K
(
››K L
s
››L M
)
››M N
;
››N O
var
ﬁﬁ 

categories
ﬁﬁ 
=
ﬁﬁ 
	GetValues
ﬁﬁ &
(
ﬁﬁ& '
this
ﬁﬁ' +
)
ﬁﬁ+ ,
.
ﬁﬁ, -
Concat
ﬁﬁ- 3
(
ﬁﬁ3 4 
additionalFeatures
ﬁﬁ4 F
)
ﬁﬁF G
.
ﬁﬁG H
Select
ﬁﬁH N
(
ﬁﬁN O
feature
ﬁﬁO V
=>
ﬁﬁW Y
feature
ﬁﬁZ a
.
ﬁﬁa b
Category
ﬁﬁb j
)
ﬁﬁj k
;
ﬁﬁk l
var
ﬂﬂ 
category
ﬂﬂ 
=
ﬂﬂ 

categories
ﬂﬂ %
.
ﬂﬂ% &
FirstOrDefault
ﬂﬂ& 4
(
ﬂﬂ4 5
IsNotNullOrEmpty
ﬂﬂ5 E
)
ﬂﬂE F
;
ﬂﬂF G
return
·· 
category
·· 
??
·· 
Uncategorized
·· ,
;
··, -
}
‚‚ 	
public
ÁÁ 
virtual
ÁÁ 
bool
ÁÁ 
DefaultTenantOnly
ÁÁ -
{
ÁÁ. /
get
ÁÁ0 3
;
ÁÁ3 4
set
ÁÁ5 8
;
ÁÁ8 9
}
ÁÁ: ;
public
ÏÏ 
virtual
ÏÏ 
bool
ÏÏ 
IsAlwaysEnabled
ÏÏ +
{
ÏÏ, -
get
ÏÏ. 1
;
ÏÏ1 2
set
ÏÏ3 6
;
ÏÏ6 7
}
ÏÏ8 9
=
ÏÏ: ;
false
ÏÏ< A
;
ÏÏA B
public
ÒÒ 
virtual
ÒÒ 
bool
ÒÒ %
EnabledByDependencyOnly
ÒÒ 3
{
ÒÒ4 5
get
ÒÒ6 9
;
ÒÒ9 :
set
ÒÒ; >
;
ÒÒ> ?
}
ÒÒ@ A
}
ÚÚ 
}ÛÛ µ
äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ManifestConstants.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
public 

static 
class 
ManifestConstants )
{ 
public 
const 
string 
OrchardCoreTeam +
=, -
$str. E
;E F
public 
const 
string 
OrchardCoreVersion .
=/ 0
$str1 8
;8 9
public

 
const

 
string

 
OrchardCoreWebsite

 .
=

/ 0
$str

1 J
;

J K
public 
const 
string 
AdminTag $
=% &
$str' .
;. /
} 
} ¯
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ModuleAssetAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
,- .
AllowMultiple/ <
== >
true? C
,C D
	InheritedE N
=O P
falseQ V
)V W
]W X
public		 

class		  
ModuleAssetAttribute		 %
:		& '
	Attribute		( 1
{

 
public  
ModuleAssetAttribute #
(# $
string$ *
asset+ 0
)0 1
{ 	
Asset 
= 
asset 
?? 
String #
.# $
Empty$ )
;) *
} 	
public 
string 
Asset 
{ 
get !
;! "
}# $
} 
} ¥k
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ModuleAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
,- .
AllowMultiple/ <
== >
false? D
,D E
	InheritedF O
=P Q
falseR W
)W X
]X Y
public 

class 
ModuleAttribute  
:! "
FeatureAttribute# 3
{ 
internal 
const 
string 
DefaultAuthor +
=, -
$str. 0
;0 1
internal 
const 
string 
DefaultWebsiteUrl /
=0 1
$str2 4
;4 5
internal 
const 
string 
DefaultVersionZero 0
=1 2
$str3 8
;8 9
internal   
const   
string   
DefaultTags   )
=  * +
$str  , .
;  . /
public%% 
ModuleAttribute%% 
(%% 
)%%  
:%%! "
base%%# '
(%%' (
)%%( )
{&& 	
}'' 	
public?? 
ModuleAttribute?? 
(?? 
string@@ 
id@@ 
,AA 
stringAA 
descriptionAA  
,BB 
stringBB 
authorBB 
,CC 
stringCC 
semVerCC 
,DD 
stringDD 

websiteUrlDD 
,EE 
stringEE 
featureDependenciesEE (
,FF 
stringFF 
tagsFF 
,GG 
objectGG 
defaultTenantGG "
,HH 
objectHH 
alwaysEnabledHH "
,II 
objectII #
enabledByDependencyOnlyII ,
)JJ 	
:JJ
 
thisJJ 
(JJ 
idKK 
,LL 
defaultLL 
,MM 
defaultMM 
,NN 
defaultNN 
,OO 
descriptionOO 
,PP 
authorPP 
,QQ 
semVerQQ 
,RR 

websiteUrlRR 
,SS 
featureDependenciesSS !
,TT 
tagsTT 
,UU 
defaultTenantUU 
,VV 
alwaysEnabledVV 
,WW #
enabledByDependencyOnlyWW %
)XX 	
{YY 	
}ZZ 	
publictt 
ModuleAttributett 
(tt 
stringuu 
iduu 
,vv 
stringvv 
namevv 
,ww 
stringww 
descriptionww  
,xx 
stringxx 
authorxx 
,yy 
stringyy 
semVeryy 
,zz 
stringzz 

websiteUrlzz 
,{{ 
string{{ 
featureDependencies{{ (
,|| 
string|| 
tags|| 
,}} 
object}} 
defaultTenant}} "
,~~ 
object~~ 
alwaysEnabled~~ "
, 
object #
enabledByDependencyOnly ,
)
ÄÄ 	
:
ÄÄ
 
this
ÄÄ 
(
ÄÄ 
id
ÅÅ 
,
ÇÇ 
name
ÇÇ 
,
ÉÉ 
default
ÉÉ 
,
ÑÑ 
default
ÑÑ 
,
ÖÖ 
description
ÖÖ 
,
ÜÜ 
author
ÜÜ 
,
áá 
semVer
áá 
,
àà 

websiteUrl
àà 
,
ââ !
featureDependencies
ââ !
,
ää 
tags
ää 
,
ãã 
defaultTenant
ãã 
,
åå 
alwaysEnabled
åå 
,
çç %
enabledByDependencyOnly
çç %
)
éé 	
{
èè 	
}
êê 	
public
¨¨ 
ModuleAttribute
¨¨ 
(
¨¨ 
string
≠≠ 
id
≠≠ 
,
ÆÆ 
string
ÆÆ 
name
ÆÆ 
,
ØØ 
string
ØØ 
category
ØØ 
,
∞∞ 
string
∞∞ 
priority
∞∞ 
,
±± 
string
±± 
description
±±  
,
≤≤ 
string
≤≤ 
author
≤≤ 
,
≥≥ 
string
≥≥ 
semVer
≥≥ 
,
¥¥ 
string
¥¥ 

websiteUrl
¥¥ 
,
µµ 
string
µµ !
featureDependencies
µµ (
,
∂∂ 
string
∂∂ 
tags
∂∂ 
,
∑∑ 
object
∑∑ 
defaultTenant
∑∑ "
,
∏∏ 
object
∏∏ 
alwaysEnabled
∏∏ "
,
ππ 
object
ππ %
enabledByDependencyOnly
ππ ,
)
∫∫ 	
:
∫∫
 
base
∫∫ 
(
∫∫ 
id
ªª 
,
ºº 
name
ºº 
,
ΩΩ 
category
ΩΩ 
,
ææ 
priority
ææ 
,
øø 
description
øø 
,
¿¿ !
featureDependencies
¿¿ !
,
¡¡ 
defaultTenant
¡¡ 
,
¬¬ 
alwaysEnabled
¬¬ 
,
√√ %
enabledByDependencyOnly
√√ %
)
ƒƒ 	
{
≈≈ 	
Author
∆∆ 
=
∆∆ 
author
∆∆ 
;
∆∆ 
Website
«« 
=
«« 

websiteUrl
««  
;
««  !
Version
»» 
=
»» 
semVer
»» 
;
»» 
DelimitedTags
…… 
=
…… 
tags
……  
;
……  !
}
   	
public
ÁÁ 
ModuleAttribute
ÁÁ 
(
ÁÁ 
string
ËË 
id
ËË 
,
ÈÈ 
string
ÈÈ 
name
ÈÈ 
,
ÍÍ 
string
ÍÍ 
type
ÍÍ 
,
ÎÎ 
string
ÎÎ 
category
ÎÎ 
,
ÏÏ 
string
ÏÏ 
priority
ÏÏ 
,
ÌÌ 
string
ÌÌ 
description
ÌÌ  
,
ÓÓ 
string
ÓÓ 
author
ÓÓ 
,
ÔÔ 
string
ÔÔ 
semVer
ÔÔ 
,
 
string
 

websiteUrl
 
,
ÒÒ 
string
ÒÒ !
featureDependencies
ÒÒ (
,
ÚÚ 
string
ÚÚ 
tags
ÚÚ 
,
ÛÛ 
object
ÛÛ 
defaultTenant
ÛÛ "
,
ÙÙ 
object
ÙÙ 
alwaysEnabled
ÙÙ "
,
ıı 
object
ıı %
enabledByDependencyOnly
ıı ,
)
ˆˆ 	
:
ˆˆ
 
this
ˆˆ 
(
ˆˆ 
id
˜˜ 
,
¯¯ 
name
¯¯ 
,
˘˘ 
category
˘˘ 
,
˙˙ 
priority
˙˙ 
,
˚˚ 
description
˚˚ 
,
¸¸ 
author
¸¸ 
,
˝˝ 
semVer
˝˝ 
,
˛˛ 

websiteUrl
˛˛ 
,
ˇˇ !
featureDependencies
ˇˇ !
,
ÄÄ 
tags
ÄÄ 
,
ÅÅ 
defaultTenant
ÅÅ 
,
ÇÇ 
alwaysEnabled
ÇÇ 
,
ÉÉ %
enabledByDependencyOnly
ÉÉ %
)
ÑÑ 	
{
ÖÖ 	
type
ÜÜ 
=
ÜÜ 
(
ÜÜ 
type
ÜÜ 
??
ÜÜ 
String
ÜÜ "
.
ÜÜ" #
Empty
ÜÜ# (
)
ÜÜ( )
.
ÜÜ) *
Trim
ÜÜ* .
(
ÜÜ. /
)
ÜÜ/ 0
;
ÜÜ0 1
_type
áá 
=
áá 
String
áá 
.
áá 
IsNullOrEmpty
áá (
(
áá( )
type
áá) -
)
áá- .
?
áá/ 0
null
áá1 5
:
áá6 7
type
áá8 <
;
áá< =
}
àà 	
	protected
êê 
internal
êê 
static
êê !
string
êê" ( 
GetAttributePrefix
êê) ;
(
êê; <
Type
êê< @
attributeType
êêA N
)
êêN O
{
ëë 	
const
íí 
string
íí 
attributeSuffix
íí (
=
íí) *
nameof
íí+ 1
(
íí1 2
	Attribute
íí2 ;
)
íí; <
;
íí< =
static
ïï 
string
ïï 
GetTypeNamePrefix
ïï +
(
ïï+ ,
string
ïï, 2
typeName
ïï3 ;
)
ïï; <
=>
ïï= ?
typeName
ññ 
.
ññ 
EndsWith
ññ !
(
ññ! "
attributeSuffix
ññ" 1
)
ññ1 2
?
óó 
typeName
óó 
.
óó 
	Substring
óó $
(
óó$ %
$num
óó% &
,
óó& '
typeName
óó( 0
.
óó0 1
Length
óó1 7
-
óó8 9
attributeSuffix
óó: I
.
óóI J
Length
óóJ P
)
óóP Q
:
òò 
typeName
òò 
;
ôô 
return
õõ 
GetTypeNamePrefix
õõ $
(
õõ$ %
attributeType
õõ% 2
.
õõ2 3
Name
õõ3 7
)
õõ7 8
;
õõ8 9
}
úú 	
private
ûû 
string
ûû 
_type
ûû 
;
ûû 
public
•• 
virtual
•• 
string
•• 
Type
•• "
{
¶¶ 	
get
ßß 
=>
ßß 
_type
ßß 
??=
ßß  
GetAttributePrefix
ßß /
(
ßß/ 0
GetType
ßß0 7
(
ßß7 8
)
ßß8 9
)
ßß9 :
;
ßß: ;
	protected
®® 
internal
®® 
set
®® "
=>
®®# %
_type
®®& +
=
®®, -
value
®®. 3
?
®®3 4
.
®®4 5
Trim
®®5 9
(
®®9 :
)
®®: ;
;
®®; <
}
©© 	
private
´´ 
string
´´ 
_author
´´ 
=
´´  
DefaultAuthor
´´! .
;
´´. /
public
±± 
virtual
±± 
string
±± 
Author
±± $
{
≤≤ 	
get
≥≥ 
=>
≥≥ 
_author
≥≥ 
;
≥≥ 
set
¥¥ 
=>
¥¥ 
_author
¥¥ 
=
¥¥ 
(
¥¥ 
value
¥¥ #
??
¥¥$ &
DefaultAuthor
¥¥' 4
)
¥¥4 5
.
¥¥5 6
Trim
¥¥6 :
(
¥¥: ;
)
¥¥; <
;
¥¥< =
}
µµ 	
private
∑∑ 
string
∑∑ 
_website
∑∑ 
=
∑∑  !
DefaultWebsiteUrl
∑∑" 3
;
∑∑3 4
public
ΩΩ 
virtual
ΩΩ 
string
ΩΩ 
Website
ΩΩ %
{
ææ 	
get
øø 
=>
øø 
_website
øø 
;
øø 
set
¿¿ 
=>
¿¿ 
_website
¿¿ 
=
¿¿ 
(
¿¿ 
value
¿¿ $
??
¿¿% '
DefaultWebsiteUrl
¿¿( 9
)
¿¿9 :
.
¿¿: ;
Trim
¿¿; ?
(
¿¿? @
)
¿¿@ A
;
¿¿A B
}
¡¡ 	
private
√√ 
string
√√ 
_version
√√ 
=
√√  ! 
DefaultVersionZero
√√" 4
;
√√4 5
public
   
virtual
   
string
   
Version
   %
{
ÀÀ 	
get
ÃÃ 
=>
ÃÃ 
_version
ÃÃ 
;
ÃÃ 
set
ÕÕ 
=>
ÕÕ 
_version
ÕÕ 
=
ÕÕ 
(
ÕÕ 
value
ÕÕ $
??
ÕÕ% ' 
DefaultVersionZero
ÕÕ( :
)
ÕÕ: ;
.
ÕÕ; <
Trim
ÕÕ< @
(
ÕÕ@ A
)
ÕÕA B
;
ÕÕB C
}
ŒŒ 	
private
”” 
string
”” 
DelimitedTags
”” $
{
‘‘ 	
set
’’ 
=>
’’ 
Tags
’’ 
=
’’ 
(
’’ 
value
’’  
??
’’! #
DefaultTags
’’$ /
)
’’/ 0
.
’’0 1
Trim
’’1 5
(
’’5 6
)
’’6 7
.
’’7 8
Split
’’8 =
(
’’= >

ListDelims
’’> H
,
’’H I!
DefaultSplitOptions
’’J ]
)
’’] ^
;
’’^ _
}
÷÷ 	
private
ÿÿ 
string
ÿÿ 
[
ÿÿ 
]
ÿÿ 
_tags
ÿÿ 
=
ÿÿ  
	GetValues
ÿÿ! *
<
ÿÿ* +
string
ÿÿ+ 1
>
ÿÿ1 2
(
ÿÿ2 3
)
ÿÿ3 4
.
ÿÿ4 5
ToArray
ÿÿ5 <
(
ÿÿ< =
)
ÿÿ= >
;
ÿÿ> ?
public
›› 
virtual
›› 
string
›› 
[
›› 
]
›› 
Tags
››  $
{
ﬁﬁ 	
get
ﬂﬂ 
=>
ﬂﬂ 
_tags
ﬂﬂ 
;
ﬂﬂ 
set
‡‡ 
=>
‡‡ 
_tags
‡‡ 
=
‡‡ 
(
‡‡ 
value
‡‡ !
??
‡‡" $
	GetValues
‡‡% .
<
‡‡. /
string
‡‡/ 5
>
‡‡5 6
(
‡‡6 7
)
‡‡7 8
)
‡‡8 9
.
‡‡9 :
Select
‡‡: @
(
‡‡@ A
_
‡‡A B
=>
‡‡C E
_
‡‡F G
.
‡‡G H
Trim
‡‡H L
(
‡‡L M
)
‡‡M N
)
‡‡N O
.
‡‡O P
ToArray
‡‡P W
(
‡‡W X
)
‡‡X Y
;
‡‡Y Z
}
·· 	
public
ÊÊ 
virtual
ÊÊ 
List
ÊÊ 
<
ÊÊ 
FeatureAttribute
ÊÊ ,
>
ÊÊ, -
Features
ÊÊ. 6
{
ÊÊ7 8
get
ÊÊ9 <
;
ÊÊ< =
}
ÊÊ> ?
=
ÊÊ@ A
	GetValues
ÊÊB K
<
ÊÊK L
FeatureAttribute
ÊÊL \
>
ÊÊ\ ]
(
ÊÊ] ^
)
ÊÊ^ _
.
ÊÊ_ `
ToList
ÊÊ` f
(
ÊÊf g
)
ÊÊg h
;
ÊÊh i
}
ÁÁ 
}ËË ±
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ModuleMarkerAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
,- .
AllowMultiple/ <
== >
false? D
,D E
	InheritedF O
=P Q
falseR W
)W X
]X Y
public		 

class		 !
ModuleMarkerAttribute		 &
:		' (
ModuleAttribute		) 8
{

 
public !
ModuleMarkerAttribute $
($ %
string 
id 
, 
string 
type 
) 	
{ 	
Id 
= 
id 
; 
Type 
= 
type 
; 
} 	
} 
} Ò
åC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ModuleNameAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
,- .
AllowMultiple/ <
== >
true? C
,C D
	InheritedE N
=O P
falseQ V
)V W
]W X
public		 

class		 
ModuleNameAttribute		 $
:		% &
	Attribute		' 0
{

 
public 
ModuleNameAttribute "
(" #
string# )
name* .
). /
{ 	
Name 
= 
name 
?? 
String !
.! "
Empty" '
;' (
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
} 
} ◊
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Model\ITimeZone.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface 
	ITimeZone 
{ 
string 

TimeZoneId 
{ 
get 
;  
set! $
;$ %
}& '
}		 
}

 ÷#
âC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\ModularApplicationContext.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

	interface		 
IApplicationContext		 (
{

 
Application 
Application 
{  !
get" %
;% &
}' (
} 
public 

class %
ModularApplicationContext *
:+ ,
IApplicationContext- @
{ 
private 
readonly 
IHostEnvironment )
_environment* 6
;6 7
private 
readonly 
IEnumerable $
<$ % 
IModuleNamesProvider% 9
>9 :!
_moduleNamesProviders; P
;P Q
private 
Application 
_application (
;( )
private 
static 
readonly 
object  &
	_initLock' 0
=1 2
new3 6
object7 =
(= >
)> ?
;? @
public %
ModularApplicationContext (
(( )
IHostEnvironment) 9
environment: E
,E F
IEnumerableG R
<R S 
IModuleNamesProviderS g
>g h 
moduleNamesProvidersi }
)} ~
{ 	
_environment 
= 
environment &
;& '!
_moduleNamesProviders !
=" # 
moduleNamesProviders$ 8
;8 9
} 	
public 
Application 
Application &
{ 	
get 
{ 
EnsureInitialized !
(! "
)" #
;# $
return   
_application   #
;  # $
}!! 
}"" 	
private$$ 
void$$ 
EnsureInitialized$$ &
($$& '
)$$' (
{%% 	
if&& 
(&& 
_application&& 
==&& 
null&&  $
)&&$ %
{'' 
lock(( 
((( 
	_initLock(( 
)((  
{)) 
if** 
(** 
_application** $
==**% '
null**( ,
)**, -
{++ 
_application,, $
=,,% &
new,,' *
Application,,+ 6
(,,6 7
_environment,,7 C
,,,C D

GetModules,,E O
(,,O P
),,P Q
),,Q R
;,,R S
}-- 
}.. 
}// 
}00 	
private22 
IEnumerable22 
<22 
Module22 "
>22" #

GetModules22$ .
(22. /
)22/ 0
{33 	
var44 
modules44 
=44 
new44 
ConcurrentBag44 +
<44+ ,
Module44, 2
>442 3
(443 4
)444 5
;445 6
modules55 
.55 
Add55 
(55 
new55 
Module55 "
(55" #
_environment55# /
.55/ 0
ApplicationName550 ?
,55? @
true55A E
)55E F
)55F G
;55G H
var77 
names77 
=77 !
_moduleNamesProviders77 -
.88 

SelectMany88 
(88 
p88 
=>88  
p88! "
.88" #
GetModuleNames88# 1
(881 2
)882 3
)883 4
.99 
Where99 
(99 
n99 
=>99 
n99 
!=99  
_environment99! -
.99- .
ApplicationName99. =
)99= >
.:: 
Distinct:: 
(:: 
):: 
;:: 
Parallel<< 
.<< 
ForEach<< 
(<< 
names<< "
,<<" #
new<<$ '
ParallelOptions<<( 7
{<<8 9"
MaxDegreeOfParallelism<<: P
=<<Q R
$num<<S T
}<<U V
,<<V W
(<<X Y
name<<Y ]
)<<] ^
=><<_ a
{== 
modules>> 
.>> 
Add>> 
(>> 
new>> 
Module>>  &
(>>& '
name>>' +
,>>+ ,
false>>- 2
)>>2 3
)>>3 4
;>>4 5
}?? 
)?? 
;?? 
returnAA 
modulesAA 
;AA 
}BB 	
}CC 
}DD Éd
vC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Module.cs
	namespace		 	
OrchardCore		
 
.		 
Modules		 
{

 
public 

class 
Module 
{ 
public 
const 
string 
WebRootPath '
=( )
$str* 3
;3 4
public 
static 
string 
WebRoot $
=% &
WebRootPath' 2
+3 4
$str5 8
;8 9
private 
readonly 
string 
_baseNamespace  .
;. /
private 
readonly 
DateTimeOffset '
_lastModified( 5
;5 6
private 
readonly 
IDictionary $
<$ %
string% +
,+ ,
	IFileInfo- 6
>6 7

_fileInfos8 B
=C D
newE H

DictionaryI S
<S T
stringT Z
,Z [
	IFileInfo\ e
>e f
(f g
)g h
;h i
public 
Module 
( 
string 
assyName %
,% &
bool' +
isApplication, 9
=: ;
false< A
)A B
{ 	
if   
(   
!   
string   
.   
IsNullOrWhiteSpace   *
(  * +
assyName  + 3
)  3 4
)  4 5
{!! 
Assembly"" 
="" 
Assembly"" #
.""# $
Load""$ (
(""( )
new"") ,
AssemblyName""- 9
(""9 :
assyName"": B
)""B C
)""C D
;""D E
Assets$$ 
=$$ 
Assembly$$ !
.$$! "
GetCustomAttributes$$" 5
<$$5 6 
ModuleAssetAttribute$$6 J
>$$J K
($$K L
)$$L M
.%% 
Select%% 
(%% 
a%% 
=>%%  
new%%! $
Asset%%% *
(%%* +
a%%+ ,
.%%, -
Asset%%- 2
)%%2 3
)%%3 4
.%%4 5
ToArray%%5 <
(%%< =
)%%= >
;%%> ?

AssetPaths'' 
='' 
Assets'' #
.''# $
Select''$ *
(''* +
a''+ ,
=>''- /
a''0 1
.''1 2
ModuleAssetPath''2 A
)''A B
.''B C
ToArray''C J
(''J K
)''K L
;''L M
var** 
moduleInfos** 
=**  !
Assembly**" *
.*** +
GetCustomAttributes**+ >
<**> ?
ModuleAttribute**? N
>**N O
(**O P
)**P Q
;**Q R

ModuleInfo,, 
=,, 
moduleInfos-- 
.--  
Where--  %
(--% &
f--& '
=>--( *
!--+ ,
(--, -
f--- .
is--/ 1!
ModuleMarkerAttribute--2 G
)--G H
)--H I
.--I J
FirstOrDefault--J X
(--X Y
)--Y Z
??--[ ]
moduleInfos.. 
...  
Where..  %
(..% &
f..& '
=>..( *
f..+ ,
is..- /!
ModuleMarkerAttribute..0 E
)..E F
...F G
FirstOrDefault..G U
(..U V
)..V W
??..X Z
new00 
ModuleAttribute00 '
(00' (
)00( )
{00* +
Name00, 0
=001 2
assyName003 ;
}00< =
;00= >
var22 
features22 
=22 
Assembly22 '
.22' (
GetCustomAttributes22( ;
<22; <
Manifest22< D
.22D E
FeatureAttribute22E U
>22U V
(22V W
)22W X
.33 
Where33 
(33 
f33 
=>33 
!33  !
(33! "
f33" #
is33$ &
ModuleAttribute33' 6
)336 7
)337 8
.338 9
ToList339 ?
(33? @
)33@ A
;33A B
if55 
(55 
isApplication55 !
)55! "
{66 

ModuleInfo77 
.77 
Name77 #
=77$ %
Application77& 1
.771 2

ModuleName772 <
;77< =

ModuleInfo88 
.88 
Description88 *
=88+ ,
Application88- 8
.888 9
ModuleDescription889 J
;88J K

ModuleInfo99 
.99 
Priority99 '
=99( )
Application99* 5
.995 6
ModulePriority996 D
;99D E

ModuleInfo:: 
.:: 
Category:: '
=::( )
Application::* 5
.::5 6
ModuleCategory::6 D
;::D E

ModuleInfo;; 
.;; 
DefaultTenantOnly;; 0
=;;1 2
true;;3 7
;;;7 8
features>> 
.>> 
Insert>> #
(>># $
$num>>$ %
,>>% &
new>>' *
Manifest>>+ 3
.>>3 4
FeatureAttribute>>4 D
(>>D E
assyName??  
,@@ 
Application@@ %
.@@% &

ModuleName@@& 0
,AA 
ApplicationAA %
.AA% &
ModuleCategoryAA& 4
,BB 
ApplicationBB %
.BB% &
ModulePriorityBB& 4
,CC 
ApplicationCC %
.CC% &
ModuleDescriptionCC& 7
,DD 
nullDD 
,EE 
trueEE 
,FF 
defaultFF !
,GG 
defaultGG !
)HH 
)HH 
;HH 
featuresKK 
.KK 
InsertKK #
(KK# $
$numKK$ %
,KK% &
newKK' *
ManifestKK+ 3
.KK3 4
FeatureAttributeKK4 D
(KKD E
ApplicationLL #
.LL# $
DefaultFeatureIdLL$ 4
,MM 
ApplicationMM %
.MM% &
DefaultFeatureNameMM& 8
,NN 
ApplicationNN %
.NN% &
ModuleCategoryNN& 4
,OO 
ApplicationOO %
.OO% &
ModulePriorityOO& 4
,PP 
ApplicationPP %
.PP% &%
DefaultFeatureDescriptionPP& ?
,QQ 
nullQQ 
,RR 
trueRR 
,SS 
defaultSS !
,TT 
defaultTT !
)UU 
)UU 
;UU 
}VV 

ModuleInfoXX 
.XX 
FeaturesXX #
.XX# $
AddRangeXX$ ,
(XX, -
featuresXX- 5
)XX5 6
;XX6 7
var]] 
logicalName]] 
=]]  !

ModuleInfo]]" ,
.]], -
Id]]- /
??]]0 2
assyName]]3 ;
;]]; <
Name__ 
=__ 

ModuleInfo__ !
.__! "
Id__" $
=__% &
logicalName__' 2
;__2 3
SubPath`` 
=`` 
Application`` %
.``% &
ModulesRoot``& 1
+``2 3
Name``4 8
;``8 9
Rootaa 
=aa 
SubPathaa 
+aa  
$charaa! $
;aa$ %
}bb 
elsecc 
{dd 
Nameee 
=ee 
Rootee 
=ee 
SubPathee %
=ee& '
Stringee( .
.ee. /
Emptyee/ 4
;ee4 5
Assetsff 
=ff 

Enumerableff #
.ff# $
Emptyff$ )
<ff) *
Assetff* /
>ff/ 0
(ff0 1
)ff1 2
;ff2 3

AssetPathsgg 
=gg 

Enumerablegg '
.gg' (
Emptygg( -
<gg- .
stringgg. 4
>gg4 5
(gg5 6
)gg6 7
;gg7 8

ModuleInfohh 
=hh 
newhh  
ModuleAttributehh! 0
(hh0 1
)hh1 2
;hh2 3
}ii 
_baseNamespacekk 
=kk 
Namekk !
+kk" #
$charkk$ '
;kk' (
_lastModifiedll 
=ll 
DateTimeOffsetll *
.ll* +
UtcNowll+ 1
;ll1 2
ifnn 
(nn 
!nn 
stringnn 
.nn 
IsNullOrEmptynn %
(nn% &
Assemblynn& .
?nn. /
.nn/ 0
Locationnn0 8
)nn8 9
)nn9 :
{oo 
trypp 
{qq 
_lastModifiedrr !
=rr" #
Filerr$ (
.rr( )
GetLastWriteTimeUtcrr) <
(rr< =
Assemblyrr= E
.rrE F
LocationrrF N
)rrN O
;rrO P
}ss 
catchtt 
(tt  
PathTooLongExceptiontt +
)tt+ ,
{uu 
}vv 
catchww 
(ww '
UnauthorizedAccessExceptionww 2
)ww2 3
{xx 
}yy 
}zz 
}{{ 	
public}} 
string}} 
Name}} 
{}} 
get}}  
;}}  !
}}}" #
public~~ 
string~~ 
Root~~ 
{~~ 
get~~  
;~~  !
}~~" #
public 
string 
SubPath 
{ 
get  #
;# $
}% &
public
ÄÄ 
Assembly
ÄÄ 
Assembly
ÄÄ  
{
ÄÄ! "
get
ÄÄ# &
;
ÄÄ& '
}
ÄÄ( )
public
ÅÅ 
IEnumerable
ÅÅ 
<
ÅÅ 
Asset
ÅÅ  
>
ÅÅ  !
Assets
ÅÅ" (
{
ÅÅ) *
get
ÅÅ+ .
;
ÅÅ. /
}
ÅÅ0 1
public
ÇÇ 
IEnumerable
ÇÇ 
<
ÇÇ 
string
ÇÇ !
>
ÇÇ! "

AssetPaths
ÇÇ# -
{
ÇÇ. /
get
ÇÇ0 3
;
ÇÇ3 4
}
ÇÇ5 6
public
ÉÉ 
ModuleAttribute
ÉÉ 

ModuleInfo
ÉÉ )
{
ÉÉ* +
get
ÉÉ, /
;
ÉÉ/ 0
}
ÉÉ1 2
public
ÖÖ 
	IFileInfo
ÖÖ 
GetFileInfo
ÖÖ $
(
ÖÖ$ %
string
ÖÖ% +
subpath
ÖÖ, 3
)
ÖÖ3 4
{
ÜÜ 	
if
áá 
(
áá 
!
áá 

_fileInfos
áá 
.
áá 
TryGetValue
áá '
(
áá' (
subpath
áá( /
,
áá/ 0
out
áá1 4
var
áá5 8
fileInfo
áá9 A
)
ááA B
)
ááB C
{
àà 
if
ââ 
(
ââ 
!
ââ 

AssetPaths
ââ 
.
ââ  
Contains
ââ  (
(
ââ( )
Root
ââ) -
+
ââ. /
subpath
ââ0 7
)
ââ7 8
)
ââ8 9
{
ää 
return
ãã 
new
ãã 
NotFoundFileInfo
ãã /
(
ãã/ 0
subpath
ãã0 7
)
ãã7 8
;
ãã8 9
}
åå 
lock
éé 
(
éé 

_fileInfos
éé  
)
éé  !
{
èè 
if
êê 
(
êê 
!
êê 

_fileInfos
êê #
.
êê# $
TryGetValue
êê$ /
(
êê/ 0
subpath
êê0 7
,
êê7 8
out
êê9 <
fileInfo
êê= E
)
êêE F
)
êêF G
{
ëë 
var
íí 
resourcePath
íí (
=
íí) *
_baseNamespace
íí+ 9
+
íí: ;
subpath
íí< C
.
ííC D
Replace
ííD K
(
ííK L
$char
ííL O
,
ííO P
$char
ííQ T
)
ííT U
;
ííU V
var
ìì 
fileName
ìì $
=
ìì% &
Path
ìì' +
.
ìì+ ,
GetFileName
ìì, 7
(
ìì7 8
subpath
ìì8 ?
)
ìì? @
;
ìì@ A
if
ïï 
(
ïï 
Assembly
ïï $
.
ïï$ %%
GetManifestResourceInfo
ïï% <
(
ïï< =
resourcePath
ïï= I
)
ïïI J
==
ïïK M
null
ïïN R
)
ïïR S
{
ññ 
return
óó "
new
óó# &
NotFoundFileInfo
óó' 7
(
óó7 8
fileName
óó8 @
)
óó@ A
;
óóA B
}
òò 

_fileInfos
öö "
[
öö" #
subpath
öö# *
]
öö* +
=
öö, -
fileInfo
öö. 6
=
öö7 8
new
öö9 <&
EmbeddedResourceFileInfo
öö= U
(
ööU V
Assembly
õõ $
,
õõ$ %
resourcePath
õõ& 2
,
õõ2 3
fileName
õõ4 <
,
õõ< =
_lastModified
õõ> K
)
õõK L
;
õõL M
}
úú 
}
ùù 
}
ûû 
return
†† 
fileInfo
†† 
;
†† 
}
°° 	
}
¢¢ 
}££ Ô
ëC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\ModuleCompositeStaticFileProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class -
!ModuleCompositeStaticFileProvider 2
:3 4!
CompositeFileProvider5 J
,J K%
IModuleStaticFileProviderL e
{ 
public -
!ModuleCompositeStaticFileProvider 0
(0 1
params1 7
IStaticFileProvider8 K
[K L
]L M
fileProvidersN [
)[ \
:] ^
base_ c
(c d
fileProvidersd q
)q r
{ 	
} 	
public -
!ModuleCompositeStaticFileProvider 0
(0 1
IEnumerable1 <
<< =
IStaticFileProvider= P
>P Q
fileProvidersR _
)_ `
:a b
basec g
(g h
fileProvidersh u
)u v
{ 	
} 	
} 
} ÕB
äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\ModuleEmbeddedFileProvider.cs
	namespace

 	
OrchardCore


 
.

 
Modules

 
{ 
public 

class &
ModuleEmbeddedFileProvider +
:, -
IFileProvider. ;
{ 
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public &
ModuleEmbeddedFileProvider )
() *
IApplicationContext* =
applicationContext> P
)P Q
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
if 
( 
subpath 
== 
null 
)  
{ 
return %
NotFoundDirectoryContents 0
.0 1
	Singleton1 :
;: ;
}   
var"" 
folder"" 
="" 
NormalizePath"" &
(""& '
subpath""' .
)"". /
;""/ 0
var$$ 
entries$$ 
=$$ 
new$$ 
List$$ "
<$$" #
	IFileInfo$$# ,
>$$, -
($$- .
)$$. /
;$$/ 0
if'' 
('' 
folder'' 
=='' 
$str'' 
)'' 
{(( 
entries** 
.** 
Add** 
(** 
new** !
EmbeddedDirectoryInfo**  5
(**5 6
Application**6 A
.**A B
ModulesPath**B M
)**M N
)**N O
;**O P
}++ 
else-- 
if-- 
(-- 
folder-- 
==-- 
Application-- *
.--* +
ModulesPath--+ 6
)--6 7
{.. 
entries00 
.00 
AddRange00  
(00  !
Application00! ,
.00, -
Modules00- 4
.004 5
Select005 ;
(00; <
m00< =
=>00> @
new00A D!
EmbeddedDirectoryInfo00E Z
(00Z [
m00[ \
.00\ ]
Name00] a
)00a b
)00b c
)00c d
;00d e
}11 
else33 
if33 
(33 
folder33 
.33 

StartsWith33 &
(33& '
Application33' 2
.332 3
ModulesRoot333 >
,33> ?
StringComparison33@ P
.33P Q
Ordinal33Q X
)33X Y
)33Y Z
{44 
var66 
path66 
=66 
folder66 !
.66! "
	Substring66" +
(66+ ,
Application66, 7
.667 8
ModulesRoot668 C
.66C D
Length66D J
)66J K
;66K L
var77 
index77 
=77 
path77  
.77  !
IndexOf77! (
(77( )
$char77) ,
)77, -
;77- .
var:: 
name:: 
=:: 
index::  
==::! #
-::$ %
$num::% &
?::' (
path::) -
:::. /
path::0 4
.::4 5
	Substring::5 >
(::> ?
$num::? @
,::@ A
index::B G
)::G H
;::H I
var;; 
paths;; 
=;; 
Application;; '
.;;' (
	GetModule;;( 1
(;;1 2
name;;2 6
);;6 7
.;;7 8

AssetPaths;;8 B
;;;B C
NormalizedPaths>> 
.>>  !
ResolveFolderContents>>  5
(>>5 6
folder>>6 <
,>>< =
paths>>> C
,>>C D
out>>E H
var>>I L
files>>M R
,>>R S
out>>T W
var>>X [
folders>>\ c
)>>c d
;>>d e
entriesAA 
.AA 
AddRangeAA  
(AA  !
filesAA! &
.AA& '
SelectAA' -
(AA- .
pAA. /
=>AA0 2
GetFileInfoAA3 >
(AA> ?
pAA? @
)AA@ A
)AAA B
)AAB C
;AAC D
entriesBB 
.BB 
AddRangeBB  
(BB  !
foldersBB! (
.BB( )
SelectBB) /
(BB/ 0
nBB0 1
=>BB2 4
newBB5 8!
EmbeddedDirectoryInfoBB9 N
(BBN O
nBBO P
)BBP Q
)BBQ R
)BBR S
;BBS T
}CC 
returnEE 
newEE %
EmbeddedDirectoryContentsEE 0
(EE0 1
entriesEE1 8
)EE8 9
;EE9 :
}FF 	
publicHH 
	IFileInfoHH 
GetFileInfoHH $
(HH$ %
stringHH% +
subpathHH, 3
)HH3 4
{II 	
ifJJ 
(JJ 
subpathJJ 
==JJ 
nullJJ 
)JJ  
{KK 
returnLL 
newLL 
NotFoundFileInfoLL +
(LL+ ,
subpathLL, 3
)LL3 4
;LL4 5
}MM 
varOO 
pathOO 
=OO 
NormalizePathOO $
(OO$ %
subpathOO% ,
)OO, -
;OO- .
ifRR 
(RR 
pathRR 
.RR 

StartsWithRR 
(RR  
ApplicationRR  +
.RR+ ,
ModulesRootRR, 7
,RR7 8
StringComparisonRR9 I
.RRI J
OrdinalRRJ Q
)RRQ R
)RRR S
{SS 
pathUU 
=UU 
pathUU 
.UU 
	SubstringUU %
(UU% &
ApplicationUU& 1
.UU1 2
ModulesRootUU2 =
.UU= >
LengthUU> D
)UUD E
;UUE F
varVV 
indexVV 
=VV 
pathVV  
.VV  !
IndexOfVV! (
(VV( )
$charVV) ,
)VV, -
;VV- .
ifYY 
(YY 
indexYY 
!=YY 
-YY 
$numYY 
)YY  
{ZZ 
var\\ 
module\\ 
=\\  
path\\! %
.\\% &
	Substring\\& /
(\\/ 0
$num\\0 1
,\\1 2
index\\3 8
)\\8 9
;\\9 :
var__ 
fileSubPath__ #
=__$ %
path__& *
.__* +
	Substring__+ 4
(__4 5
index__5 :
+__; <
$num__= >
)__> ?
;__? @
ifbb 
(bb 
modulebb 
==bb !
Applicationbb" -
.bb- .
Namebb. 2
)bb2 3
{cc 
returnee 
newee "
PhysicalFileInfoee# 3
(ee3 4
newee4 7
FileInfoee8 @
(ee@ A
ApplicationeeA L
.eeL M
RooteeM Q
+eeR S
fileSubPatheeT _
)ee_ `
)ee` a
;eea b
}ff 
returnii 
Applicationii &
.ii& '
	GetModuleii' 0
(ii0 1
moduleii1 7
)ii7 8
.ii8 9
GetFileInfoii9 D
(iiD E
fileSubPathiiE P
)iiP Q
;iiQ R
}jj 
}kk 
returnmm 
newmm 
NotFoundFileInfomm '
(mm' (
subpathmm( /
)mm/ 0
;mm0 1
}nn 	
publicpp 
IChangeTokenpp 
Watchpp !
(pp! "
stringpp" (
filterpp) /
)pp/ 0
{qq 	
returnrr 
NullChangeTokenrr "
.rr" #
	Singletonrr# ,
;rr, -
}ss 	
privateuu 
stringuu 
NormalizePathuu $
(uu$ %
stringuu% +
pathuu, 0
)uu0 1
{vv 	
returnww 
pathww 
.ww 
Replaceww 
(ww  
$charww  $
,ww$ %
$charww& )
)ww) *
.ww* +
Trimww+ /
(ww/ 0
$charww0 3
)ww3 4
.ww4 5
Replaceww5 <
(ww< =
$strww= A
,wwA B
$strwwC F
)wwF G
;wwG H
}xx 	
}yy 
}zz Ù#
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\ModuleEmbeddedStaticFileProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class ,
 ModuleEmbeddedStaticFileProvider 1
:2 3%
IModuleStaticFileProvider4 M
{ 
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public ,
 ModuleEmbeddedStaticFileProvider /
(/ 0
IApplicationContext0 C
applicationContextD V
)V W
{ 	
_applicationContext 
=  !
applicationContext" 4
;4 5
} 	
public 
IDirectoryContents ! 
GetDirectoryContents" 6
(6 7
string7 =
subpath> E
)E F
{ 	
return %
NotFoundDirectoryContents ,
., -
	Singleton- 6
;6 7
} 	
public 
	IFileInfo 
GetFileInfo $
($ %
string% +
subpath, 3
)3 4
{ 	
if 
( 
subpath 
== 
null 
)  
{ 
return 
new 
NotFoundFileInfo +
(+ ,
subpath, 3
)3 4
;4 5
}   
var"" 
path"" 
="" 
NormalizePath"" $
(""$ %
subpath""% ,
)"", -
;""- .
var$$ 
index$$ 
=$$ 
path$$ 
.$$ 
IndexOf$$ $
($$$ %
$char$$% (
)$$( )
;$$) *
if'' 
('' 
index'' 
!='' 
-'' 
$num'' 
)'' 
{(( 
var)) 
application)) 
=))  !
_applicationContext))" 5
.))5 6
Application))6 A
;))A B
var,, 
module,, 
=,, 
path,, !
.,,! "
	Substring,," +
(,,+ ,
$num,,, -
,,,- .
index,,/ 4
),,4 5
;,,5 6
if// 
(// 
application// 
.//  
Modules//  '
.//' (
Any//( +
(//+ ,
m//, -
=>//. 0
m//1 2
.//2 3
Name//3 7
==//8 :
module//; A
)//A B
)//B C
{00 
var22 
fileSubPath22 #
=22$ %
Module22& ,
.22, -
WebRoot22- 4
+225 6
path227 ;
.22; <
	Substring22< E
(22E F
index22F K
+22L M
$num22N O
)22O P
;22P Q
if44 
(44 
module44 
!=44 !
application44" -
.44- .
Name44. 2
)442 3
{55 
return77 
application77 *
.77* +
	GetModule77+ 4
(774 5
module775 ;
)77; <
.77< =
GetFileInfo77= H
(77H I
fileSubPath77I T
)77T U
;77U V
}88 
return== 
new== 
PhysicalFileInfo== /
(==/ 0
new==0 3
FileInfo==4 <
(==< =
application=== H
.==H I
Root==I M
+==N O
fileSubPath==P [
)==[ \
)==\ ]
;==] ^
}>> 
}?? 
returnAA 
newAA 
NotFoundFileInfoAA '
(AA' (
subpathAA( /
)AA/ 0
;AA0 1
}BB 	
publicDD 
IChangeTokenDD 
WatchDD !
(DD! "
stringDD" (
filterDD) /
)DD/ 0
{EE 	
returnFF 
NullChangeTokenFF "
.FF" #
	SingletonFF# ,
;FF, -
}GG 	
privateII 
stringII 
NormalizePathII $
(II$ %
stringII% +
pathII, 0
)II0 1
{JJ 	
returnKK 
pathKK 
.KK 
ReplaceKK 
(KK  
$charKK  $
,KK$ %
$charKK& )
)KK) *
.KK* +
TrimKK+ /
(KK/ 0
$charKK0 3
)KK3 4
.KK4 5
ReplaceKK5 <
(KK< =
$strKK= A
,KKA B
$strKKC F
)KKF G
;KKG H
}LL 	
}MM 
}NN ‹H
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\ModuleProjectStaticFileProvider.cs
	namespace		 	
OrchardCore		
 
.		 
Modules		 
{

 
public 

class +
ModuleProjectStaticFileProvider 0
:1 2%
IModuleStaticFileProvider3 L
{ 
private 
static 

Dictionary !
<! "
string" (
,( )
string* 0
>0 1
_roots2 8
;8 9
private 
static 
readonly 
object  &
_synLock' /
=0 1
new2 5
object6 <
(< =
)= >
;> ?
public +
ModuleProjectStaticFileProvider .
(. /
IApplicationContext/ B
applicationContextC U
)U V
{ 	
if 
( 
_roots 
!= 
null 
) 
{ 
return 
; 
} 
lock 
( 
_synLock 
) 
{ 
if 
( 
_roots 
== 
null "
)" #
{ 
var 
application #
=$ %
applicationContext& 8
.8 9
Application9 D
;D E
var!! 
roots!! 
=!! 
new!!  #

Dictionary!!$ .
<!!. /
string!!/ 5
,!!5 6
string!!7 =
>!!= >
(!!> ?
)!!? @
;!!@ A
foreach$$ 
($$ 
var$$  
module$$! '
in$$( *
application$$+ 6
.$$6 7
Modules$$7 >
)$$> ?
{%% 
if(( 
((( 
module(( "
.((" #
Assembly((# +
==((, .
null((/ 3
||((4 6
Path((7 ;
.((; <
GetDirectoryName((< L
(((L M
module((M S
.((S T
Assembly((T \
.((\ ]
Location((] e
)((e f
!=)) 
Path)) #
.))# $
GetDirectoryName))$ 4
())4 5
application))5 @
.))@ A
Assembly))A I
.))I J
Location))J R
)))R S
)))S T
{** 
continue++ $
;++$ %
},, 
var// 
asset// !
=//" #
module//$ *
.//* +
Assets//+ 1
.//1 2
FirstOrDefault//2 @
(//@ A
a//A B
=>//C E
a//F G
.//G H
ModuleAssetPath//H W
.00 

StartsWith00 '
(00' (
module00( .
.00. /
Root00/ 3
+004 5
Module006 <
.00< =
WebRoot00= D
,00D E
StringComparison00F V
.00V W
Ordinal00W ^
)00^ _
)00_ `
;00` a
if22 
(22 
asset22 !
!=22" $
null22% )
)22) *
{33 
var55 
index55  %
=55& '
asset55( -
.55- .
ProjectAssetPath55. >
.55> ?
IndexOf55? F
(55F G
$char55G J
+55K L
Module55M S
.55S T
WebRoot55T [
,55[ \
StringComparison55] m
.55m n
Ordinal55n u
)55u v
;55v w
roots88 !
[88! "
module88" (
.88( )
Name88) -
]88- .
=88/ 0
asset881 6
.886 7
ProjectAssetPath887 G
.88G H
	Substring88H Q
(88Q R
$num88R S
,88S T
index88U Z
+88[ \
Module88] c
.88c d
WebRoot88d k
.88k l
Length88l r
+88s t
$num88u v
)88v w
;88w x
}99 
}:: 
_roots<< 
=<< 
roots<< "
;<<" #
}== 
}>> 
}?? 	
publicAA 
IDirectoryContentsAA ! 
GetDirectoryContentsAA" 6
(AA6 7
stringAA7 =
subpathAA> E
)AAE F
{BB 	
returnCC %
NotFoundDirectoryContentsCC ,
.CC, -
	SingletonCC- 6
;CC6 7
}DD 	
publicFF 
	IFileInfoFF 
GetFileInfoFF $
(FF$ %
stringFF% +
subpathFF, 3
)FF3 4
{GG 	
ifHH 
(HH 
subpathHH 
==HH 
nullHH 
)HH  
{II 
returnJJ 
newJJ 
NotFoundFileInfoJJ +
(JJ+ ,
subpathJJ, 3
)JJ3 4
;JJ4 5
}KK 
varMM 
pathMM 
=MM 
NormalizePathMM $
(MM$ %
subpathMM% ,
)MM, -
;MM- .
varNN 
indexNN 
=NN 
pathNN 
.NN 
IndexOfNN $
(NN$ %
$charNN% (
)NN( )
;NN) *
ifQQ 
(QQ 
indexQQ 
!=QQ 
-QQ 
$numQQ 
)QQ 
{RR 
varTT 
moduleTT 
=TT 
pathTT !
.TT! "
	SubstringTT" +
(TT+ ,
$numTT, -
,TT- .
indexTT/ 4
)TT4 5
;TT5 6
ifWW 
(WW 
_rootsWW 
.WW 
TryGetValueWW &
(WW& '
moduleWW' -
,WW- .
outWW/ 2
varWW3 6
rootWW7 ;
)WW; <
)WW< =
{XX 
varZZ 
filePathZZ  
=ZZ! "
rootZZ# '
+ZZ( )
pathZZ* .
.ZZ. /
	SubstringZZ/ 8
(ZZ8 9
moduleZZ9 ?
.ZZ? @
LengthZZ@ F
+ZZG H
$numZZI J
)ZZJ K
;ZZK L
if\\ 
(\\ 
File\\ 
.\\ 
Exists\\ #
(\\# $
filePath\\$ ,
)\\, -
)\\- .
{]] 
return__ 
new__ "
PhysicalFileInfo__# 3
(__3 4
new__4 7
FileInfo__8 @
(__@ A
filePath__A I
)__I J
)__J K
;__K L
}`` 
}aa 
}bb 
returndd 
newdd 
NotFoundFileInfodd '
(dd' (
subpathdd( /
)dd/ 0
;dd0 1
}ee 	
publicgg 
IChangeTokengg 
Watchgg !
(gg! "
stringgg" (
filtergg) /
)gg/ 0
{hh 	
ifii 
(ii 
filterii 
==ii 
nullii 
)ii 
{jj 
returnkk 
NullChangeTokenkk &
.kk& '
	Singletonkk' 0
;kk0 1
}ll 
varnn 
pathnn 
=nn 
NormalizePathnn $
(nn$ %
filternn% +
)nn+ ,
;nn, -
varoo 
indexoo 
=oo 
pathoo 
.oo 
IndexOfoo $
(oo$ %
$charoo% (
)oo( )
;oo) *
ifrr 
(rr 
indexrr 
!=rr 
-rr 
$numrr 
)rr 
{ss 
varuu 
moduleuu 
=uu 
pathuu !
.uu! "
	Substringuu" +
(uu+ ,
$numuu, -
,uu- .
indexuu/ 4
)uu4 5
;uu5 6
ifxx 
(xx 
_rootsxx 
.xx 
TryGetValuexx &
(xx& '
modulexx' -
,xx- .
outxx/ 2
varxx3 6
rootxx7 ;
)xx; <
)xx< =
{yy 
var{{ 
filePath{{  
={{! "
root{{# '
+{{( )
path{{* .
.{{. /
	Substring{{/ 8
({{8 9
module{{9 ?
.{{? @
Length{{@ F
+{{G H
$num{{I J
){{J K
;{{K L
if}} 
(}} 
File}} 
.}} 
Exists}} #
(}}# $
filePath}}$ ,
)}}, -
)}}- .
{~~ 
return
ÄÄ 
new
ÄÄ "$
PollingFileChangeToken
ÄÄ# 9
(
ÄÄ9 :
new
ÄÄ: =
FileInfo
ÄÄ> F
(
ÄÄF G
filePath
ÄÄG O
)
ÄÄO P
)
ÄÄP Q
;
ÄÄQ R
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 
return
ÖÖ 
NullChangeToken
ÖÖ "
.
ÖÖ" #
	Singleton
ÖÖ# ,
;
ÖÖ, -
}
ÜÜ 	
private
àà 
string
àà 
NormalizePath
àà $
(
àà$ %
string
àà% +
path
àà, 0
)
àà0 1
{
ââ 	
return
ää 
path
ää 
.
ää 
Replace
ää 
(
ää  
$char
ää  $
,
ää$ %
$char
ää& )
)
ää) *
.
ää* +
Trim
ää+ /
(
ää/ 0
$char
ää0 3
)
ää3 4
.
ää4 5
Replace
ää5 <
(
ää< =
$str
ää= A
,
ääA B
$str
ääC F
)
ääF G
;
ääG H
}
ãã 	
}
åå 
}çç 
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\RequireFeaturesAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
,* +
AllowMultiple, 9
=: ;
false< A
)A B
]B C
public 

class $
RequireFeaturesAttribute )
:* +
	Attribute, 5
{ 
public $
RequireFeaturesAttribute '
(' (
string( .
featureName/ :
): ;
{ 	 
RequiredFeatureNames  
=! "
new# &
string' -
[- .
]. /
{0 1
featureName2 =
}> ?
;? @
} 	
public $
RequireFeaturesAttribute '
(' (
string( .
featureName/ :
,: ;
params< B
stringC I
[I J
]J K
otherFeatureNamesL ]
)] ^
{ 	 
RequiredFeatureNames  
=! "
new# &
List' +
<+ ,
string, 2
>2 3
(3 4
otherFeatureNames4 E
)E F
{ 
featureName 
} 
; 
} 	
public 
IList 
< 
string 
>  
RequiredFeatureNames 1
{2 3
get4 7
;7 8
}9 :
public!! 
static!! 
IList!! 
<!! 
string!! "
>!!" #*
GetRequiredFeatureNamesForType!!$ B
(!!B C
Type!!C G
type!!H L
)!!L M
{"" 	
var## 
	attribute## 
=## 
type##  
.##  !
GetCustomAttributes##! 4
<##4 5$
RequireFeaturesAttribute##5 M
>##M N
(##N O
false##O T
)##T U
.##U V
FirstOrDefault##V d
(##d e
)##e f
;##f g
return$$ 
	attribute$$ 
?$$ 
.$$  
RequiredFeatureNames$$ 2
??$$3 5
Array$$6 ;
.$$; <
Empty$$< A
<$$A B
string$$B H
>$$H I
($$I J
)$$J K
;$$K L
}%% 	
}&& 
}'' º
áC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\ClockExtension.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class 
ClockExtensions '
{ 
public 
static 
DateTimeOffset $
ConvertToTimeZone% 6
(6 7
this7 ;
IClock< B
clockC H
,H I
DateTimeJ R
dateTimeS [
,[ \
	ITimeZone] f
timeZoneg o
)o p
{ 	
DateTime 
dateTimeUtc  
;  !
switch 
( 
dateTime 
. 
Kind !
)! "
{ 
case 
DateTimeKind !
.! "
Utc" %
:% &
dateTimeUtc 
=  !
dateTime" *
;* +
break 
; 
case 
DateTimeKind !
.! "
Local" '
:' (
dateTimeUtc 
=  !
dateTime" *
.* +
ToUniversalTime+ :
(: ;
); <
;< =
break 
; 
default 
: 
dateTimeUtc 
=  !
DateTime" *
.* +
SpecifyKind+ 6
(6 7
dateTime7 ?
,? @
DateTimeKindA M
.M N
UtcN Q
)Q R
;R S
break 
; 
} 
return 
clock 
. 
ConvertToTimeZone *
(* +
new+ .
DateTimeOffset/ =
(= >
dateTimeUtc> I
)I J
,J K
timeZoneL T
)T U
;U V
} 	
public!! 
static!! 
Task!! 
<!! 
DateTimeOffset!! )
>!!) *
ConvertToLocalAsync!!+ >
(!!> ?
this!!? C
ILocalClock!!D O

localClock!!P Z
,!!Z [
DateTime!!\ d
dateTime!!e m
)!!m n
{"" 	
DateTime## 
dateTimeUtc##  
;##  !
switch$$ 
($$ 
dateTime$$ 
.$$ 
Kind$$ !
)$$! "
{%% 
case&& 
DateTimeKind&& !
.&&! "
Utc&&" %
:&&% &
dateTimeUtc'' 
=''  !
dateTime''" *
;''* +
break(( 
;(( 
case)) 
DateTimeKind)) !
.))! "
Local))" '
:))' (
dateTimeUtc** 
=**  !
dateTime**" *
.*** +
ToUniversalTime**+ :
(**: ;
)**; <
;**< =
break++ 
;++ 
default,, 
:,, 
dateTimeUtc-- 
=--  !
DateTime--" *
.--* +
SpecifyKind--+ 6
(--6 7
dateTime--7 ?
,--? @
DateTimeKind--A M
.--M N
Utc--N Q
)--Q R
;--R S
break.. 
;.. 
}// 
return11 

localClock11 
.11 
ConvertToLocalAsync11 1
(111 2
new112 5
DateTimeOffset116 D
(11D E
dateTimeUtc11E P
)11P Q
)11Q R
;11R S
}22 	
}33 
}44 ˆ
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\IClock.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public

 

	interface

 
IClock

 
{ 
DateTime 
UtcNow 
{ 
get 
; 
}  
	ITimeZone 
[ 
] 
GetTimeZones  
(  !
)! "
;" #
	ITimeZone 
GetTimeZone 
( 
string $

timeZoneId% /
)/ 0
;0 1
	ITimeZone"" 
GetSystemTimeZone"" #
(""# $
)""$ %
;""% &
DateTimeOffset'' 
ConvertToTimeZone'' (
(''( )
DateTimeOffset'') 7
dateTimeOffset''8 F
,''F G
	ITimeZone''H Q
timeZone''R Z
)''Z [
;''[ \
}(( 
})) °
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\ILocalClock.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

	interface		 
ILocalClock		  
{

 
Task 
< 
DateTimeOffset 
> 
LocalNowAsync *
{+ ,
get- 0
;0 1
}2 3
Task 
< 
	ITimeZone 
> !
GetLocalTimeZoneAsync -
(- .
). /
;/ 0
Task 
< 
DateTimeOffset 
> 
ConvertToLocalAsync 0
(0 1
DateTimeOffset1 ?
dateTimeOffset@ N
)N O
;O P
Task 
< 
DateTime 
> 
ConvertToUtcAsync (
(( )
DateTime) 1
dateTime2 :
): ;
;; <
} 
} ¨
ÖC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\ISlugService.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Services &
{ 
public 

	interface 
ISlugService !
{ 
string

 
Slugify

 
(

 
string

 
text

 "
)

" #
;

# $
string 
Slugify 
( 
string 
text "
," #
char$ (
	separator) 2
)2 3
;3 4
} 
} Ä
äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\ITimeZoneSelector.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface 
ITimeZoneSelector &
{		 
Task

 
<

 "
TimeZoneSelectorResult

 #
>

# $
GetTimeZoneAsync

% 5
(

5 6
)

6 7
;

7 8
} 
} ˛
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\TimeZoneSelectorResult.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class "
TimeZoneSelectorResult '
{ 
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public		 
Func		 
<		 
Task		 
<		 
string		 
>		  
>		  !

TimeZoneId		" ,
{		- .
get		/ 2
;		2 3
set		4 7
;		7 8
}		9 :
}

 
} ¥
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\ShellRequestPipeline.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class  
ShellRequestPipeline %
:& '
IShellPipeline( 6
{ 
public		 
RequestDelegate		 
Next		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
Task

 
Invoke

 
(

 
object

 !
context

" )
)

) *
=>

+ -
Next

. 2
(

2 3
context

3 :
as

; =
HttpContext

> I
)

I J
;

J K
} 
} ›	
wC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Modules\Startup.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

abstract 
class 
StartupBase %
:& '
IStartup( 0
{		 
public 
virtual 
int 
Order  
{! "
get# &
;& '
}( )
=* +
$num, -
;- .
public 
virtual 
int 
ConfigureOrder )
=>* ,
Order- 2
;2 3
public 
virtual 
void 
ConfigureServices -
(- .
IServiceCollection. @
servicesA I
)I J
{ 	
} 	
public 
virtual 
void 
	Configure %
(% &
IApplicationBuilder& 9
app: =
,= >!
IEndpointRouteBuilder? T
routesU [
,[ \
IServiceProvider] m
serviceProvidern }
)} ~
{ 	
} 	
} 
} ﬂ
}C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Pooling\JsonArrayPool.cs
	namespace 	
OrchardCore
 
. 
Abstractions "
." #
Pooling# *
{ 
internal		 
sealed		 
class		 
JsonArrayPool		 '
<		' (
T		( )
>		) *
:		+ ,

IArrayPool		- 7
<		7 8
T		8 9
>		9 :
{

 
private 
readonly 
	ArrayPool "
<" #
T# $
>$ %
_inner& ,
;, -
public 
JsonArrayPool 
( 
	ArrayPool &
<& '
T' (
>( )
inner* /
)/ 0
=>1 3
_inner4 :
=; <
inner= B
;B C
public 
T 
[ 
] 
Rent 
( 
int 
minimumLength )
)) *
=>+ -
_inner. 4
.4 5
Rent5 9
(9 :
minimumLength: G
)G H
;H I
public 
void 
Return 
( 
T 
[ 
] 
array $
)$ %
=>& (
_inner) /
./ 0
Return0 6
(6 7
array7 <
)< =
;= >
} 
} á#
ÖC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Pooling\PoolingJsonSerializer.cs
	namespace 	
OrchardCore
 
. 
Abstractions "
." #
Pooling# *
{ 
internal 
sealed 
class !
PoolingJsonSerializer /
{ 
private 
readonly 
JsonArrayPool &
<& '
char' +
>+ ,

_arrayPool- 7
;7 8
private 
readonly "
JsonSerializerSettings /
_jsonSettings0 =
;= >
public !
PoolingJsonSerializer $
($ %
	ArrayPool% .
<. /
char/ 3
>3 4
	arrayPool5 >
)> ?
:@ A
thisB F
(F G
	arrayPoolG P
,P Q
nullR V
)V W
{ 	
} 	
public !
PoolingJsonSerializer $
($ %
	ArrayPool% .
<. /
char/ 3
>3 4
	arrayPool5 >
,> ?"
JsonSerializerSettings@ V
serializerSettingsW i
)i j
{ 	

_arrayPool 
= 
new 
JsonArrayPool *
<* +
char+ /
>/ 0
(0 1
	arrayPool1 :
??; =
throw> C
newD G
ArgumentExceptionH Y
(Y Z
$strZ r
,r s
nameoft z
(z {
	arrayPool	{ Ñ
)
Ñ Ö
)
Ö Ü
)
Ü á
;
á à
_jsonSettings 
= 
serializerSettings .
;. /
} 	
public 
T 
Deserialize 
< 
T 
> 
(  
string  &
content' .
). /
=>0 2
(3 4
T4 5
)5 6
Deserialize6 A
(A B
contentB I
,I J
typeofK Q
(Q R
TR S
)S T
)T U
;U V
public 
object 
Deserialize !
(! "
string" (
content) 0
,0 1
Type2 6
type7 ;
); <
{ 	
var 
jsonSerializer 
=  
JsonSerializer! /
./ 0
CreateDefault0 =
(= >
_jsonSettings> K
)K L
;L M
using   
var   
reader   
=   
new   "
JsonTextReader  # 1
(  1 2
new  2 5
StringReader  6 B
(  B C
content  C J
)  J K
)  K L
{!! 
	ArrayPool"" 
="" 

_arrayPool"" &
}## 
;## 
return$$ 
jsonSerializer$$ !
.$$! "
Deserialize$$" -
($$- .
reader$$. 4
,$$4 5
type$$6 :
)$$: ;
;$$; <
}%% 	
public'' 
string'' 
	Serialize'' 
(''  
object''  &
item''' +
)''+ ,
{(( 	
var)) 
jsonSerializer)) 
=))  
JsonSerializer))! /
.))/ 0
CreateDefault))0 =
())= >
_jsonSettings))> K
)))K L
;))L M
using** 
var** 
sw** 
=** 
new** 
ZStringWriter** ,
(**, -
CultureInfo**- 8
.**8 9
InvariantCulture**9 I
)**I J
;**J K
using++ 
var++ 

jsonWriter++  
=++! "
new++# &
JsonTextWriter++' 5
(++5 6
sw++6 8
)++8 9
{,, 
	ArrayPool-- 
=-- 

_arrayPool-- &
,--& '

Formatting.. 
=.. 
jsonSerializer.. +
...+ ,

Formatting.., 6
}// 
;// 
jsonSerializer00 
.00 
	Serialize00 $
(00$ %

jsonWriter00% /
,00/ 0
item001 5
,005 6
null007 ;
)00; <
;00< =
return11 
sw11 
.11 
ToString11 
(11 
)11  
;11  !
}22 	
}33 
}44 ÕÄ
}C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Pooling\ZStringWriter.cs
	namespace		 	
OrchardCore		
 
.		 
Abstractions		 "
.		" #
Pooling		# *
{

 
internal 
sealed 
class 
ZStringWriter '
:( )

TextWriter* 4
{ 
private #
Utf16ValueStringBuilder '
_sb( +
;+ ,
private 
bool 
_isOpen 
; 
private 
UnicodeEncoding 

s_encoding  *
;* +
public 
ZStringWriter 
( 
) 
:  
this! %
(% &
CultureInfo& 1
.1 2
CurrentCulture2 @
)@ A
{ 	
} 	
public 
ZStringWriter 
( 
IFormatProvider ,
formatProvider- ;
); <
:= >
base? C
(C D
formatProviderD R
)R S
{ 	
_sb 
= 
ZString 
. 
CreateStringBuilder -
(- .
). /
;/ 0
_isOpen 
= 
true 
; 
} 	
public 
override 
void 
Close "
(" #
)# $
{ 	
Dispose   
(   
true   
)   
;   
}!! 	
	protected## 
override## 
void## 
Dispose##  '
(##' (
bool##( ,
	disposing##- 6
)##6 7
{$$ 	
_sb%% 
.%% 
Dispose%% 
(%% 
)%% 
;%% 
_isOpen&& 
=&& 
false&& 
;&& 
base'' 
.'' 
Dispose'' 
('' 
	disposing'' "
)''" #
;''# $
}(( 	
public** 
override** 
Encoding**  
Encoding**! )
=>*** ,

s_encoding**- 7
??=**8 ;
new**< ?
UnicodeEncoding**@ O
(**O P
false**P U
,**U V
false**W \
)**\ ]
;**] ^
public.. 
override.. 
void.. 
Write.. "
(.." #
char..# '
value..( -
)..- .
{// 	
if00 
(00 
!00 
_isOpen00 
)00 
{11 
throw22 
new22 #
ObjectDisposedException22 1
(221 2
nameof222 8
(228 9
_sb229 <
)22< =
)22= >
;22> ?
}33 
_sb55 
.55 
Append55 
(55 
value55 
)55 
;55 
}66 	
public88 
override88 
void88 
Write88 "
(88" #
char88# '
[88' (
]88( )
buffer88* 0
,880 1
int882 5
index886 ;
,88; <
int88= @
count88A F
)88F G
{99 	
if:: 
(:: 
buffer:: 
==:: 
null:: 
):: 
{;; 
throw<< 
new<< !
ArgumentNullException<< /
(<</ 0
nameof<<0 6
(<<6 7
buffer<<7 =
)<<= >
)<<> ?
;<<? @
}== 
if>> 
(>> 
index>> 
<>> 
$num>> 
)>> 
{?? 
throw@@ 
new@@ '
ArgumentOutOfRangeException@@ 5
(@@5 6
nameof@@6 <
(@@< =
index@@= B
)@@B C
)@@C D
;@@D E
}AA 
ifBB 
(BB 
countBB 
<BB 
$numBB 
)BB 
{CC 
throwDD 
newDD '
ArgumentOutOfRangeExceptionDD 5
(DD5 6
nameofDD6 <
(DD< =
countDD= B
)DDB C
)DDC D
;DDD E
}EE 
ifFF 
(FF 
bufferFF 
.FF 
LengthFF 
-FF 
indexFF  %
<FF& '
countFF( -
)FF- .
{GG 
throwHH 
newHH 
ArgumentExceptionHH +
(HH+ ,
)HH, -
;HH- .
}II 
ifJJ 
(JJ 
!JJ 
_isOpenJJ 
)JJ 
{KK 
throwLL 
newLL #
ObjectDisposedExceptionLL 1
(LL1 2
nameofLL2 8
(LL8 9
_sbLL9 <
)LL< =
)LL= >
;LL> ?
}MM 
_sbOO 
.OO 
AppendOO 
(OO 
bufferOO 
.OO 
AsSpanOO $
(OO$ %
indexOO% *
,OO* +
countOO, 1
)OO1 2
)OO2 3
;OO3 4
}PP 	
publicRR 
overrideRR 
voidRR 
WriteRR "
(RR" #
ReadOnlySpanRR# /
<RR/ 0
charRR0 4
>RR4 5
bufferRR6 <
)RR< =
{SS 	
ifTT 
(TT 
!TT 
_isOpenTT 
)TT 
{UU 
throwVV 
newVV #
ObjectDisposedExceptionVV 1
(VV1 2
nameofVV2 8
(VV8 9
_sbVV9 <
)VV< =
)VV= >
;VV> ?
}WW 
_sbYY 
.YY 
AppendYY 
(YY 
bufferYY 
)YY 
;YY 
}ZZ 	
public__ 
override__ 
void__ 
Write__ "
(__" #
string__# )
value__* /
)__/ 0
{`` 	
ifaa 
(aa 
!aa 
_isOpenaa 
)aa 
{bb 
throwcc 
newcc #
ObjectDisposedExceptioncc 1
(cc1 2
nameofcc2 8
(cc8 9
_sbcc9 <
)cc< =
)cc= >
;cc> ?
}dd 
ifff 
(ff 
valueff 
!=ff 
nullff 
)ff 
{gg 
_sbhh 
.hh 
Appendhh 
(hh 
valuehh  
)hh  !
;hh! "
}ii 
}jj 	
publicll 
overridell 
voidll 
Writell "
(ll" #
StringBuilderll# 0
valuell1 6
)ll6 7
{mm 	
ifnn 
(nn 
!nn 
_isOpennn 
)nn 
{oo 
throwpp 
newpp #
ObjectDisposedExceptionpp 1
(pp1 2
nameofpp2 8
(pp8 9
_sbpp9 <
)pp< =
)pp= >
;pp> ?
}qq 
_sbss 
.ss 
Appendss 
(ss 
valuess 
)ss 
;ss 
}tt 	
publicvv 
overridevv 
voidvv 
	WriteLinevv &
(vv& '
ReadOnlySpanvv' 3
<vv3 4
charvv4 8
>vv8 9
buffervv: @
)vv@ A
{ww 	
ifxx 
(xx 
!xx 
_isOpenxx 
)xx 
{yy 
throwzz 
newzz #
ObjectDisposedExceptionzz 1
(zz1 2
nameofzz2 8
(zz8 9
_sbzz9 <
)zz< =
)zz= >
;zz> ?
}{{ 
_sb}} 
.}} 
Append}} 
(}} 
buffer}} 
)}} 
;}} 
	WriteLine~~ 
(~~ 
)~~ 
;~~ 
} 	
public
ÅÅ 
override
ÅÅ 
void
ÅÅ 
	WriteLine
ÅÅ &
(
ÅÅ& '
StringBuilder
ÅÅ' 4
value
ÅÅ5 :
)
ÅÅ: ;
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
_isOpen
ÉÉ 
)
ÉÉ 
{
ÑÑ 
throw
ÖÖ 
new
ÖÖ %
ObjectDisposedException
ÖÖ 1
(
ÖÖ1 2
nameof
ÖÖ2 8
(
ÖÖ8 9
_sb
ÖÖ9 <
)
ÖÖ< =
)
ÖÖ= >
;
ÖÖ> ?
}
ÜÜ 
_sb
àà 
.
àà 
Append
àà 
(
àà 
value
àà 
)
àà 
;
àà 
	WriteLine
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 	
public
åå 
override
åå 
Task
åå 

WriteAsync
åå '
(
åå' (
char
åå( ,
value
åå- 2
)
åå2 3
{
çç 	
Write
éé 
(
éé 
value
éé 
)
éé 
;
éé 
return
èè 
Task
èè 
.
èè 
CompletedTask
èè %
;
èè% &
}
êê 	
public
íí 
override
íí 
Task
íí 

WriteAsync
íí '
(
íí' (
string
íí( .
value
íí/ 4
)
íí4 5
{
ìì 	
Write
îî 
(
îî 
value
îî 
)
îî 
;
îî 
return
ïï 
Task
ïï 
.
ïï 
CompletedTask
ïï %
;
ïï% &
}
ññ 	
public
òò 
override
òò 
Task
òò 

WriteAsync
òò '
(
òò' (
char
òò( ,
[
òò, -
]
òò- .
buffer
òò/ 5
,
òò5 6
int
òò7 :
index
òò; @
,
òò@ A
int
òòB E
count
òòF K
)
òòK L
{
ôô 	
Write
öö 
(
öö 
buffer
öö 
,
öö 
index
öö 
,
öö  
count
öö! &
)
öö& '
;
öö' (
return
õõ 
Task
õõ 
.
õõ 
CompletedTask
õõ %
;
õõ% &
}
úú 	
public
ûû 
override
ûû 
Task
ûû 

WriteAsync
ûû '
(
ûû' (
ReadOnlyMemory
ûû( 6
<
ûû6 7
char
ûû7 ;
>
ûû; <
buffer
ûû= C
,
ûûC D
CancellationToken
ûûE V
cancellationToken
ûûW h
=
ûûi j
default
ûûk r
)
ûûr s
{
üü 	
if
†† 
(
†† 
cancellationToken
†† !
.
††! "%
IsCancellationRequested
††" 9
)
††9 :
{
°° 
return
¢¢ 
Task
¢¢ 
.
¢¢ 
FromCanceled
¢¢ (
(
¢¢( )
cancellationToken
¢¢) :
)
¢¢: ;
;
¢¢; <
}
££ 
Write
•• 
(
•• 
buffer
•• 
.
•• 
Span
•• 
)
•• 
;
•• 
return
¶¶ 
Task
¶¶ 
.
¶¶ 
CompletedTask
¶¶ %
;
¶¶% &
}
ßß 	
public
©© 
override
©© 
Task
©© 

WriteAsync
©© '
(
©©' (
StringBuilder
©©( 5
value
©©6 ;
,
©©; <
CancellationToken
©©= N
cancellationToken
©©O `
=
©©a b
default
©©c j
)
©©j k
{
™™ 	
if
´´ 
(
´´ 
cancellationToken
´´ !
.
´´! "%
IsCancellationRequested
´´" 9
)
´´9 :
{
¨¨ 
return
≠≠ 
Task
≠≠ 
.
≠≠ 
FromCanceled
≠≠ (
(
≠≠( )
cancellationToken
≠≠) :
)
≠≠: ;
;
≠≠; <
}
ÆÆ 
if
∞∞ 
(
∞∞ 
!
∞∞ 
_isOpen
∞∞ 
)
∞∞ 
{
±± 
throw
≤≤ 
new
≤≤ %
ObjectDisposedException
≤≤ 1
(
≤≤1 2
nameof
≤≤2 8
(
≤≤8 9
_sb
≤≤9 <
)
≤≤< =
)
≤≤= >
;
≤≤> ?
}
≥≥ 
_sb
µµ 
.
µµ 
Append
µµ 
(
µµ 
value
µµ 
)
µµ 
;
µµ 
return
∂∂ 
Task
∂∂ 
.
∂∂ 
CompletedTask
∂∂ %
;
∂∂% &
}
∑∑ 	
public
ππ 
override
ππ 
Task
ππ 
WriteLineAsync
ππ +
(
ππ+ ,
char
ππ, 0
value
ππ1 6
)
ππ6 7
{
∫∫ 	
	WriteLine
ªª 
(
ªª 
value
ªª 
)
ªª 
;
ªª 
return
ºº 
Task
ºº 
.
ºº 
CompletedTask
ºº %
;
ºº% &
}
ΩΩ 	
public
øø 
override
øø 
Task
øø 
WriteLineAsync
øø +
(
øø+ ,
string
øø, 2
value
øø3 8
)
øø8 9
{
¿¿ 	
	WriteLine
¡¡ 
(
¡¡ 
value
¡¡ 
)
¡¡ 
;
¡¡ 
return
¬¬ 
Task
¬¬ 
.
¬¬ 
CompletedTask
¬¬ %
;
¬¬% &
}
√√ 	
public
≈≈ 
override
≈≈ 
Task
≈≈ 
WriteLineAsync
≈≈ +
(
≈≈+ ,
StringBuilder
≈≈, 9
value
≈≈: ?
,
≈≈? @
CancellationToken
≈≈A R
cancellationToken
≈≈S d
=
≈≈e f
default
≈≈g n
)
≈≈n o
{
∆∆ 	
if
«« 
(
«« 
cancellationToken
«« !
.
««! "%
IsCancellationRequested
««" 9
)
««9 :
{
»» 
return
…… 
Task
…… 
.
…… 
FromCanceled
…… (
(
……( )
cancellationToken
……) :
)
……: ;
;
……; <
}
   
if
ÃÃ 
(
ÃÃ 
!
ÃÃ 
_isOpen
ÃÃ 
)
ÃÃ 
{
ÕÕ 
throw
ŒŒ 
new
ŒŒ %
ObjectDisposedException
ŒŒ 1
(
ŒŒ1 2
nameof
ŒŒ2 8
(
ŒŒ8 9
_sb
ŒŒ9 <
)
ŒŒ< =
)
ŒŒ= >
;
ŒŒ> ?
}
œœ 
_sb
—— 
.
—— 
Append
—— 
(
—— 
value
—— 
)
—— 
;
—— 
	WriteLine
““ 
(
““ 
)
““ 
;
““ 
return
”” 
Task
”” 
.
”” 
CompletedTask
”” %
;
””% &
}
‘‘ 	
public
÷÷ 
override
÷÷ 
Task
÷÷ 
WriteLineAsync
÷÷ +
(
÷÷+ ,
char
÷÷, 0
[
÷÷0 1
]
÷÷1 2
buffer
÷÷3 9
,
÷÷9 :
int
÷÷; >
index
÷÷? D
,
÷÷D E
int
÷÷F I
count
÷÷J O
)
÷÷O P
{
◊◊ 	
	WriteLine
ÿÿ 
(
ÿÿ 
buffer
ÿÿ 
,
ÿÿ 
index
ÿÿ #
,
ÿÿ# $
count
ÿÿ% *
)
ÿÿ* +
;
ÿÿ+ ,
return
ŸŸ 
Task
ŸŸ 
.
ŸŸ 
CompletedTask
ŸŸ %
;
ŸŸ% &
}
⁄⁄ 	
public
‹‹ 
override
‹‹ 
Task
‹‹ 
WriteLineAsync
‹‹ +
(
‹‹+ ,
ReadOnlyMemory
‹‹, :
<
‹‹: ;
char
‹‹; ?
>
‹‹? @
buffer
‹‹A G
,
‹‹G H
CancellationToken
‹‹I Z
cancellationToken
‹‹[ l
=
‹‹m n
default
‹‹o v
)
‹‹v w
{
›› 	
if
ﬁﬁ 
(
ﬁﬁ 
cancellationToken
ﬁﬁ !
.
ﬁﬁ! "%
IsCancellationRequested
ﬁﬁ" 9
)
ﬁﬁ9 :
{
ﬂﬂ 
return
‡‡ 
Task
‡‡ 
.
‡‡ 
FromCanceled
‡‡ (
(
‡‡( )
cancellationToken
‡‡) :
)
‡‡: ;
;
‡‡; <
}
·· 
	WriteLine
„„ 
(
„„ 
buffer
„„ 
.
„„ 
Span
„„ !
)
„„! "
;
„„" #
return
‰‰ 
Task
‰‰ 
.
‰‰ 
CompletedTask
‰‰ %
;
‰‰% &
}
ÂÂ 	
public
ÁÁ 
override
ÁÁ 
Task
ÁÁ 

FlushAsync
ÁÁ '
(
ÁÁ' (
)
ÁÁ( )
{
ËË 	
return
ÈÈ 
Task
ÈÈ 
.
ÈÈ 
CompletedTask
ÈÈ %
;
ÈÈ% &
}
ÍÍ 	
public
ÏÏ 
override
ÏÏ 
string
ÏÏ 
ToString
ÏÏ '
(
ÏÏ' (
)
ÏÏ( )
{
ÌÌ 	
return
ÓÓ 
_sb
ÓÓ 
.
ÓÓ 
ToString
ÓÓ 
(
ÓÓ  
)
ÓÓ  !
;
ÓÓ! "
}
ÔÔ 	
}
 
}ÒÒ ≈
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 7
)7 8
]8 9
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str E
)E F
]F G
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :ì
äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Routing\FormValueRequiredAttribute.cs
	namespace 	
OrchardCore
 
. 
Routing 
{ 
public 

class &
FormValueRequiredAttribute +
:, -
System. 4
.4 5
	Attribute5 >
{ 
public &
FormValueRequiredAttribute )
() *
string* 0
formKey1 8
)8 9
{ 	
FormKey 
= 
formKey 
; 
} 	
public

 
string

 
FormKey

 
{

 
get

  #
;

# $
}

% &
} 
} §,
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Routing\FormValueRequiredMatcherPolicy.cs
	namespace 	
OrchardCore
 
. 
Routing 
{		 
public

 

class

 *
FormValueRequiredMatcherPolicy

 /
:

0 1
MatcherPolicy

2 ?
,

? @#
IEndpointSelectorPolicy

A X
,

X Y#
IEndpointComparerPolicy

Z q
{ 
public *
FormValueRequiredMatcherPolicy -
(- .
). /
{ 	
} 	
public 
override 
int 
Order !
=>" $
int% (
.( )
MinValue) 1
+2 3
$num4 7
;7 8
public 
bool 
AppliesToEndpoints &
(& '
IReadOnlyList' 4
<4 5
Endpoint5 =
>= >
	endpoints? H
)H I
{ 	
for 
( 
var 
i 
= 
$num 
; 
i 
< 
	endpoints  )
.) *
Count* /
;/ 0
i1 2
++2 4
)4 5
{ 
var 
action 
= 
	endpoints &
[& '
i' (
]( )
.) *
Metadata* 2
.2 3
GetMetadata3 >
<> ?
ActionDescriptor? O
>O P
(P Q
)Q R
;R S
if 
( 
action 
!= 
null "
)" #
{ 
for 
( 
var 
n 
=  
$num! "
;" #
n$ %
<& '
action( .
.. /
EndpointMetadata/ ?
.? @
Count@ E
;E F
nG H
++H J
)J K
{ 
if 
( 
action "
." #
EndpointMetadata# 3
[3 4
n4 5
]5 6
is7 9&
FormValueRequiredAttribute: T
)T U
{ 
return "
true# '
;' (
} 
}   
}!! 
}"" 
return$$ 
false$$ 
;$$ 
}%% 	
public'' 
Task'' 

ApplyAsync'' 
('' 
HttpContext'' *
httpContext''+ 6
,''6 7
CandidateSet''8 D

candidates''E O
)''O P
{(( 	
if)) 
()) 
!)) 
HttpMethods)) 
.)) 
IsPost)) #
())# $
httpContext))$ /
.))/ 0
Request))0 7
.))7 8
Method))8 >
)))> ?
)))? @
{** 
return++ 
Task++ 
.++ 
CompletedTask++ )
;++) *
},, 
for.. 
(.. 
var.. 
i.. 
=.. 
$num.. 
;.. 
i.. 
<.. 

candidates..  *
...* +
Count..+ 0
;..0 1
i..2 3
++..3 5
)..5 6
{// 
if00 
(00 
!00 

candidates00 
.00  
IsValidCandidate00  0
(000 1
i001 2
)002 3
)003 4
{11 
continue22 
;22 
}33 
var55 
required55 
=55 

candidates55 )
[55) *
i55* +
]55+ ,
.55, -
Endpoint55- 5
.555 6
Metadata556 >
.55> ?
GetMetadata55? J
<55J K&
FormValueRequiredAttribute55K e
>55e f
(55f g
)55g h
;55h i
if77 
(77 
required77 
==77 
null77  $
)77$ %
{88 
continue99 
;99 
}:: 
var<< 
value<< 
=<< 
httpContext<< '
.<<' (
Request<<( /
.<</ 0
Form<<0 4
[<<4 5
required<<5 =
.<<= >
FormKey<<> E
]<<E F
;<<F G

candidates>> 
.>> 
SetValidity>> &
(>>& '
i>>' (
,>>( )
!>>* +
string>>+ 1
.>>1 2
IsNullOrEmpty>>2 ?
(>>? @
value>>@ E
)>>E F
)>>F G
;>>G H
}?? 
returnAA 
TaskAA 
.AA 
CompletedTaskAA %
;AA% &
}BB 	
publicDD 
	IComparerDD 
<DD 
EndpointDD !
>DD! "
ComparerDD# +
=>DD, .
newDD/ 2-
!FormValueRequiredEndpointComparerDD3 T
(DDT U
)DDU V
;DDV W
privateFF 
classFF -
!FormValueRequiredEndpointComparerFF 7
:FF8 9$
EndpointMetadataComparerFF: R
<FFR S&
FormValueRequiredAttributeFFS m
>FFm n
{GG 	
	protectedHH 
overrideHH 
intHH "
CompareMetadataHH# 2
(HH2 3&
FormValueRequiredAttributeHH3 M
xHHN O
,HHO P&
FormValueRequiredAttributeHHQ k
yHHl m
)HHm n
{II 
returnJJ 
baseJJ 
.JJ 
CompareMetadataJJ +
(JJ+ ,
xJJ, -
,JJ- .
yJJ/ 0
)JJ0 1
;JJ1 2
}KK 
}LL 	
}MM 
}NN „
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Routing\IShellRouteValuesAddressScheme.cs
	namespace 	
OrchardCore
 
. 
Routing 
{ 
public 

	interface *
IShellRouteValuesAddressScheme 3
:4 5"
IEndpointAddressScheme6 L
<L M
RouteValuesAddressM _
>_ `
{		 
}

 
} ≠+
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Routing\PathStringExtensions.cs
	namespace 	
OrchardCore
 
. 
Routing 
{ 
public 

static 
class  
PathStringExtensions ,
{ 
public 
static 
bool (
StartsWithNormalizedSegments 7
(7 8
this8 <

PathString= G
pathH L
,L M

PathStringN X
otherY ^
)^ _
{		 	
if

 
(

 
other

 
.

 
HasValue

 
&&

 !
other

" '
.

' (
Value

( -
.

- .
EndsWith

. 6
(

6 7
$char

7 :
)

: ;
)

; <
{ 
return 
path 
. 
StartsWithSegments .
(. /
other/ 4
.4 5
Value5 :
.: ;
	Substring; D
(D E
$numE F
,F G
otherH M
.M N
ValueN S
.S T
LengthT Z
-[ \
$num] ^
)^ _
)_ `
;` a
} 
return 
path 
. 
StartsWithSegments *
(* +
other+ 0
)0 1
;1 2
} 	
public 
static 
bool (
StartsWithNormalizedSegments 7
(7 8
this8 <

PathString= G
pathH L
,L M

PathStringN X
otherY ^
,^ _
StringComparison` p
comparisonTypeq 
)	 Ä
{ 	
if 
( 
other 
. 
HasValue 
&& !
other" '
.' (
Value( -
.- .
EndsWith. 6
(6 7
$char7 :
): ;
); <
{ 
return 
path 
. 
StartsWithSegments .
(. /
other/ 4
.4 5
Value5 :
.: ;
	Substring; D
(D E
$numE F
,F G
otherH M
.M N
ValueN S
.S T
LengthT Z
-[ \
$num] ^
)^ _
,_ `
comparisonTypea o
)o p
;p q
} 
return 
path 
. 
StartsWithSegments *
(* +
other+ 0
,0 1
comparisonType2 @
)@ A
;A B
} 	
public 
static 
bool (
StartsWithNormalizedSegments 7
(7 8
this8 <

PathString= G
pathH L
,L M

PathStringN X
otherY ^
,^ _
out` c

PathStringd n
	remainingo x
)x y
{ 	
if 
( 
other 
. 
HasValue 
&& !
other" '
.' (
Value( -
.- .
EndsWith. 6
(6 7
$char7 :
): ;
); <
{ 
return   
path   
.   
StartsWithSegments   .
(  . /
other  / 4
.  4 5
Value  5 :
.  : ;
	Substring  ; D
(  D E
$num  E F
,  F G
other  H M
.  M N
Value  N S
.  S T
Length  T Z
-  [ \
$num  ] ^
)  ^ _
,  _ `
out  a d
	remaining  e n
)  n o
;  o p
}!! 
return## 
path## 
.## 
StartsWithSegments## *
(##* +
other##+ 0
,##0 1
out##2 5
	remaining##6 ?
)##? @
;##@ A
}$$ 	
public&& 
static&& 
bool&& (
StartsWithNormalizedSegments&& 7
(&&7 8
this&&8 <

PathString&&= G
path&&H L
,&&L M

PathString&&N X
other&&Y ^
,&&^ _
StringComparison&&` p
comparisonType&&q 
,	&& Ä
out
&&Å Ñ

PathString
&&Ö è
	remaining
&&ê ô
)
&&ô ö
{'' 	
if(( 
((( 
other(( 
.(( 
HasValue(( 
&&(( !
other((" '
.((' (
Value((( -
.((- .
EndsWith((. 6
(((6 7
$char((7 :
)((: ;
)((; <
{)) 
return** 
path** 
.** 
StartsWithSegments** .
(**. /
other**/ 4
.**4 5
Value**5 :
.**: ;
	Substring**; D
(**D E
$num**E F
,**F G
other**H M
.**M N
Value**N S
.**S T
Length**T Z
-**[ \
$num**] ^
)**^ _
,**_ `
comparisonType**a o
,**o p
out**q t
	remaining**u ~
)**~ 
;	** Ä
}++ 
return-- 
path-- 
.-- 
StartsWithSegments-- *
(--* +
other--+ 0
,--0 1
comparisonType--2 @
,--@ A
out--B E
	remaining--F O
)--O P
;--P Q
}.. 	
}// 
}00 ∫
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Routing\ShellRouteValuesAddressScheme.cs
	namespace 	
OrchardCore
 
. 
Routing 
{		 
public 

sealed 
class )
ShellRouteValuesAddressScheme 5
:6 7"
IEndpointAddressScheme8 N
<N O
RouteValuesAddressO a
>a b
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IEnumerable $
<$ %*
IShellRouteValuesAddressScheme% C
>C D
_schemesE M
;M N
private 
bool %
_defaultSchemeInitialized .
;. /
private "
IEndpointAddressScheme &
<& '
RouteValuesAddress' 9
>9 :
_defaultScheme; I
;I J
public )
ShellRouteValuesAddressScheme ,
(, - 
IHttpContextAccessor- A
httpContextAccessorB U
,U V
IEnumerableW b
<b c+
IShellRouteValuesAddressScheme	c Å
>
Å Ç
schemes
É ä
)
ä ã
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_schemes 
= 
schemes 
; 
} 	
public 
IEnumerable 
< 
Endpoint #
># $
FindEndpoints% 2
(2 3
RouteValuesAddress3 E
addressF M
)M N
{ 	
if 
( 
address 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
address7 >
)> ?
)? @
;@ A
}   
foreach## 
(## 
var## 
scheme## 
in##  "
_schemes### +
)##+ ,
{$$ 
var%% 
	endpoints%% 
=%% 
scheme%%  &
.%%& '
FindEndpoints%%' 4
(%%4 5
address%%5 <
)%%< =
;%%= >
if'' 
('' 
	endpoints'' 
.'' 
Any'' !
(''! "
)''" #
)''# $
{(( 
return)) 
	endpoints)) $
;))$ %
}** 
}++ 
if-- 
(-- 
!-- %
_defaultSchemeInitialized-- *
)--* +
{.. 
lock// 
(// 
this// 
)// 
{00 
_defaultScheme22 "
=22# $ 
_httpContextAccessor22% 9
.229 :
HttpContext22: E
?22E F
.22F G
RequestServices22G V
.33 
GetServices33 $
<33$ %"
IEndpointAddressScheme33% ;
<33; <
RouteValuesAddress33< N
>33N O
>33O P
(33P Q
)33Q R
.44 
Where44 
(44 
scheme44 %
=>44& (
scheme44) /
.44/ 0
GetType440 7
(447 8
)448 9
!=44: <
GetType44= D
(44D E
)44E F
)44F G
.55 
LastOrDefault55 &
(55& '
)55' (
;55( )%
_defaultSchemeInitialized77 -
=77. /
true770 4
;774 5
}88 
}99 
return<< 
_defaultScheme<< !
?<<! "
.<<" #
FindEndpoints<<# 0
(<<0 1
address<<1 8
)<<8 9
??<<: <

Enumerable<<= G
.<<G H
Empty<<H M
<<<M N
Endpoint<<N V
><<V W
(<<W X
)<<X Y
;<<Y Z
}== 	
}>> 
}?? ”
|C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Setup\SetupConstants.cs
	namespace 	
OrchardCore
 
. 
Abstractions "
." #
Setup# (
{ 
public 

static 
class 
SetupConstants &
{ 
public 
const 
string 
SiteName $
=% &
$str' 1
;1 2
public 
const 
string 
AdminUsername )
=* +
$str, ;
;; <
public 
const 
string 
AdminUserId '
=( )
$str* 7
;7 8
public 
const 
string 

AdminEmail &
=' (
$str) 5
;5 6
public		 
const		 
string		 
AdminPassword		 )
=		* +
$str		, ;
;		; <
public

 
const

 
string

 
DatabaseProvider

 ,
=

- .
$str

/ A
;

A B
public 
const 
string $
DatabaseConnectionString 4
=5 6
$str7 Q
;Q R
public 
const 
string 
DatabaseTablePrefix /
=0 1
$str2 G
;G H
public 
const 
string 
DatabaseSchema *
=+ ,
$str- =
;= >
public 
const 
string 
SiteTimeZone (
=) *
$str+ 9
;9 :
public 
const 
string 
FeatureProfile *
=+ ,
$str- =
;= >
} 
} Î
õC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\Extensions\ClonedSingletonDescriptor.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

class %
ClonedSingletonDescriptor *
:+ ,
ServiceDescriptor- >
{ 
public %
ClonedSingletonDescriptor (
(( )
ServiceDescriptor) :
parent; A
,A B
objectC I"
implementationInstanceJ `
)` a
:		 
base		 
(		 
parent		 
.		 
ServiceType		 %
,		% &"
implementationInstance		' =
)		= >
{

 	
Parent 
= 
parent 
; 
} 	
public %
ClonedSingletonDescriptor (
(( )
ServiceDescriptor) :
parent; A
,A B
FuncC G
<G H
IServiceProviderH X
,X Y
objectZ `
>` a!
implementationFactoryb w
)w x
: 
base 
( 
parent 
. 
ServiceType %
,% &!
implementationFactory' <
,< =
ServiceLifetime> M
.M N
	SingletonN W
)W X
{ 	
Parent 
= 
parent 
; 
} 	
public 
ServiceDescriptor  
Parent! '
{( )
get* -
;- .
}/ 0
} 
} ô
ùC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\Extensions\ServiceDescriptorExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

static 
class '
ServiceDescriptorExtensions 3
{ 
public 
static 
Type !
GetImplementationType 0
(0 1
this1 5
ServiceDescriptor6 G

descriptorH R
)R S
{		 	
if

 
(

 

descriptor

 
is

 %
ClonedSingletonDescriptor

 7
cloned

8 >
)

> ?
{ 
return 
cloned 
. 
Parent $
.$ %!
GetImplementationType% :
(: ;
); <
;< =
} 
if 
( 

descriptor 
. 
ImplementationType -
!=. 0
null1 5
)5 6
{ 
return 

descriptor !
.! "
ImplementationType" 4
;4 5
} 
if 
( 

descriptor 
. "
ImplementationInstance 1
!=2 4
null5 9
)9 :
{ 
return 

descriptor !
.! ""
ImplementationInstance" 8
.8 9
GetType9 @
(@ A
)A B
;B C
} 
if 
( 

descriptor 
. !
ImplementationFactory 0
!=1 3
null4 8
)8 9
{ 
return 

descriptor !
.! "!
ImplementationFactory" 7
.7 8
GetType8 ?
(? @
)@ A
.A B 
GenericTypeArgumentsB V
[V W
$numW X
]X Y
;Y Z
} 
return 
null 
; 
}   	
}!! 
}"" ™
õC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\Extensions\ServiceProviderExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

static 
class %
ServiceProviderExtensions 1
{ 
public 
static 
TResult 
CreateInstance ,
<, -
TResult- 4
>4 5
(5 6
this6 :
IServiceProvider; K
providerL T
)T U
whereV [
TResult\ c
:d e
classf k
{ 	
return 
CreateInstance !
<! "
TResult" )
>) *
(* +
provider+ 3
,3 4
typeof5 ;
(; <
TResult< C
)C D
)D E
;E F
} 	
public 
static 
TResult 
CreateInstance ,
<, -
TResult- 4
>4 5
(5 6
this6 :
IServiceProvider; K
providerL T
,T U
TypeV Z
type[ _
)_ `
wherea f
TResultg n
:o p
classq v
{ 	
return 
( 
TResult 
) 
ActivatorUtilities .
.. /
CreateInstance/ =
(= >
provider> F
,F G
typeH L
)L M
;M N
} 	
} 
} ∏
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\ICompositionStrategy.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public

 

	interface

  
ICompositionStrategy

 )
{ 
Task 
< 
ShellBlueprint 
> 
ComposeAsync )
() *
ShellSettings* 7
settings8 @
,@ A
ShellDescriptorB Q

descriptorR \
)\ ]
;] ^
} 
} è
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\IShellContainerFactory.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

	interface "
IShellContainerFactory +
{ 
IServiceProvider 
CreateContainer (
(( )
ShellSettings) 6
settings7 ?
,? @
ShellBlueprintA O
	blueprintP Y
)Y Z
;Z [
}		 
}

 ‰
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\IShellContextFactory.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public

 

	interface

  
IShellContextFactory

 )
{ 
Task 
< 
ShellContext 
> #
CreateShellContextAsync 2
(2 3
ShellSettings3 @
settingsA I
)I J
;J K
Task 
< 
ShellContext 
> #
CreateSetupContextAsync 2
(2 3
ShellSettings3 @
settingsA I
)I J
;J K
Task 
< 
ShellContext 
> '
CreateDescribedContextAsync 6
(6 7
ShellSettings7 D
settingsE M
,M N
ShellDescriptorO ^
shellDescriptor_ n
)n o
;o p
} 
} †
ÖC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\IShellPipeline.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

	interface 
IShellPipeline #
{ 
Task

 
Invoke

 
(

 
object

 
context

 "
)

" #
;

# $
} 
} í
åC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\Models\ShellBlueprint.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
.0 1
Models1 7
{ 
public 

class 
ShellBlueprint 
{ 
public 
ShellSettings 
Settings %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
ShellDescriptor 

Descriptor )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
IDictionary 
< 
Type 
,  
FeatureEntry! -
>- .
Dependencies/ ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
} ÜW
ÉC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\ShellContext.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

class 
ShellContext 
: 
IDisposable  +
{ 
private 
bool 
	_disposed 
; 
private 
List 
< 
WeakReference "
<" #
ShellContext# /
>/ 0
>0 1
_dependents2 =
;= >
private 
readonly 
object 
_synLock  (
=) *
new+ .
object/ 5
(5 6
)6 7
;7 8
internal 
volatile 
int 
	_refCount '
;' (
internal 
volatile 
int 
_terminated )
;) *
internal 
bool 
	_released 
;  
public 
ShellSettings 
Settings %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
ShellBlueprint 
	Blueprint '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
IServiceProvider 
ServiceProvider  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
bool 
IsActivated 
{  !
get" %
;% &
set' *
;* +
}, -
public## 
IShellPipeline## 
Pipeline## &
{##' (
get##) ,
;##, -
set##. 1
;##1 2
}##3 4
public%% 
class%% 
PlaceHolder%%  
:%%! "
ShellContext%%# /
{&& 	
public** 
PlaceHolder** 
(** 
)**  
{++ 
	_released,, 
=,, 
true,,  
;,,  !
	_disposed-- 
=-- 
true--  
;--  !
}.. 
}// 	
public44 

ShellScope44 
CreateScope44 %
(44% &
)44& '
{55 	
if77 
(77 
	_released77 
)77 
{88 
return99 
null99 
;99 
}:: 
var<< 
scope<< 
=<< 
new<< 

ShellScope<< &
(<<& '
this<<' +
)<<+ ,
;<<, -
if?? 
(?? 
	_released?? 
)?? 
{@@ 
scopeBB 
.BB 
TerminateShellAsyncBB )
(BB) *
)BB* +
.BB+ ,

GetAwaiterBB, 6
(BB6 7
)BB7 8
.BB8 9
	GetResultBB9 B
(BBB C
)BBC D
;BBD E
returnCC 
nullCC 
;CC 
}DD 
returnFF 
scopeFF 
;FF 
}GG 	
publicLL 
boolLL 
ReleasedLL 
=>LL 
	_releasedLL  )
;LL) *
publicQQ 
intQQ 
ActiveScopesQQ 
=>QQ  "
	_refCountQQ# ,
;QQ, -
publicVV 
voidVV 
ReleaseVV 
(VV 
)VV 
=>VV  
ReleaseInternalVV! 0
(VV0 1
)VV1 2
;VV2 3
internalXX 
voidXX  
ReleaseFromLastScopeXX *
(XX* +
)XX+ ,
=>XX- /
ReleaseInternalXX0 ?
(XX? @
ReleaseModeXX@ K
.XXK L
FromLastScopeXXL Y
)XXY Z
;XXZ [
internalZZ 
voidZZ !
ReleaseFromDependencyZZ +
(ZZ+ ,
)ZZ, -
=>ZZ. 0
ReleaseInternalZZ1 @
(ZZ@ A
ReleaseModeZZA L
.ZZL M
FromDependencyZZM [
)ZZ[ \
;ZZ\ ]
internal\\ 
void\\ 
ReleaseInternal\\ %
(\\% &
ReleaseMode\\& 1
mode\\2 6
=\\7 8
ReleaseMode\\9 D
.\\D E
Normal\\E K
)\\K L
{]] 	
if^^ 
(^^ 
	_released^^ 
)^^ 
{__ 
returnaa 
;aa 
}bb 
ifee 
(ee 
modeee 
==ee 
ReleaseModeee #
.ee# $
FromDependencyee$ 2
&&ee3 5
Settingsee6 >
.ee> ?
Stateee? D
==eeE G
TenantStateeeH S
.eeS T
DisabledeeT \
&&ee] _
	_refCountee` i
!=eej l
$numeem n
)een o
{ff 
returngg 
;gg 
}hh 

ShellScopeoo 
scopeoo 
=oo 
nulloo #
;oo# $
lockpp 
(pp 
_synLockpp 
)pp 
{qq 
ifrr 
(rr 
	_releasedrr 
)rr 
{ss 
returntt 
;tt 
}uu 
ifww 
(ww 
_dependentsww 
!=ww  "
nullww# '
)ww' (
{xx 
foreachyy 
(yy 
varyy  
	dependentyy! *
inyy+ -
_dependentsyy. 9
)yy9 :
{zz 
if{{ 
({{ 
	dependent{{ %
.{{% &
TryGetTarget{{& 2
({{2 3
out{{3 6
var{{7 :
shellContext{{; G
){{G H
){{H I
{|| 
shellContext}} (
.}}( )!
ReleaseFromDependency}}) >
(}}> ?
)}}? @
;}}@ A
}~~ 
} 
}
ÄÄ 
if
ÇÇ 
(
ÇÇ 
mode
ÇÇ 
!=
ÇÇ 
ReleaseMode
ÇÇ '
.
ÇÇ' (
FromLastScope
ÇÇ( 5
&&
ÇÇ6 8
ServiceProvider
ÇÇ9 H
!=
ÇÇI K
null
ÇÇL P
)
ÇÇP Q
{
ÉÉ 
scope
ÜÜ 
=
ÜÜ 
new
ÜÜ 

ShellScope
ÜÜ  *
(
ÜÜ* +
this
ÜÜ+ /
)
ÜÜ/ 0
;
ÜÜ0 1
}
áá 
	_released
ââ 
=
ââ 
true
ââ  
;
ââ  !
}
ää 
if
åå 
(
åå 
mode
åå 
==
åå 
ReleaseMode
åå #
.
åå# $
FromLastScope
åå$ 1
)
åå1 2
{
çç 
return
éé 
;
éé 
}
èè 
if
ëë 
(
ëë 
scope
ëë 
!=
ëë 
null
ëë 
)
ëë 
{
íí 
scope
îî 
.
îî !
TerminateShellAsync
îî )
(
îî) *
)
îî* +
.
îî+ ,

GetAwaiter
îî, 6
(
îî6 7
)
îî7 8
.
îî8 9
	GetResult
îî9 B
(
îîB C
)
îîC D
;
îîD E
return
ïï 
;
ïï 
}
ññ 
Dispose
òò 
(
òò 
)
òò 
;
òò 
}
ôô 	
internal
õõ 
enum
õõ 
ReleaseMode
õõ !
{
úú 	
Normal
ùù 
,
ùù 
FromLastScope
ûû 
,
ûû 
FromDependency
üü 
}
†† 	
public
•• 
void
•• 
AddDependentShell
•• %
(
••% &
ShellContext
••& 2
shellContext
••3 ?
)
••? @
{
¶¶ 	
if
®® 
(
®® 
shellContext
®® 
.
®® 
Released
®® %
)
®®% &
{
©© 
return
™™ 
;
™™ 
}
´´ 
if
ÆÆ 
(
ÆÆ 
	_released
ÆÆ 
)
ÆÆ 
{
ØØ 
shellContext
±± 
.
±± 
Release
±± $
(
±±$ %
)
±±% &
;
±±& '
return
≤≤ 
;
≤≤ 
}
≥≥ 
lock
µµ 
(
µµ 
_synLock
µµ 
)
µµ 
{
∂∂ 
if
∑∑ 
(
∑∑ 
_dependents
∑∑ 
==
∑∑  "
null
∑∑# '
)
∑∑' (
{
∏∏ 
_dependents
ππ 
=
ππ  !
new
ππ" %
List
ππ& *
<
ππ* +
WeakReference
ππ+ 8
<
ππ8 9
ShellContext
ππ9 E
>
ππE F
>
ππF G
(
ππG H
)
ππH I
;
ππI J
}
∫∫ 
_dependents
ΩΩ 
.
ΩΩ 
	RemoveAll
ΩΩ %
(
ΩΩ% &
x
ΩΩ& '
=>
ΩΩ( *
!
ΩΩ+ ,
x
ΩΩ, -
.
ΩΩ- .
TryGetTarget
ΩΩ. :
(
ΩΩ: ;
out
ΩΩ; >
var
ΩΩ? B
shell
ΩΩC H
)
ΩΩH I
||
ΩΩJ L
shell
ΩΩM R
.
ΩΩR S
Settings
ΩΩS [
.
ΩΩ[ \
Name
ΩΩ\ `
==
ΩΩa c
shellContext
ΩΩd p
.
ΩΩp q
Settings
ΩΩq y
.
ΩΩy z
Name
ΩΩz ~
)
ΩΩ~ 
;ΩΩ Ä
_dependents
øø 
.
øø 
Add
øø 
(
øø  
new
øø  #
WeakReference
øø$ 1
<
øø1 2
ShellContext
øø2 >
>
øø> ?
(
øø? @
shellContext
øø@ L
)
øøL M
)
øøM N
;
øøN O
}
¿¿ 
}
¡¡ 	
public
√√ 
void
√√ 
Dispose
√√ 
(
√√ 
)
√√ 
{
ƒƒ 	
Close
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈ 
GC
∆∆ 
.
∆∆ 
SuppressFinalize
∆∆ 
(
∆∆  
this
∆∆  $
)
∆∆$ %
;
∆∆% &
}
«« 	
public
…… 
void
…… 
Close
…… 
(
…… 
)
…… 
{
   	
if
ÀÀ 
(
ÀÀ 
	_disposed
ÀÀ 
)
ÀÀ 
{
ÃÃ 
return
ÕÕ 
;
ÕÕ 
}
ŒŒ 
	_disposed
–– 
=
–– 
true
–– 
;
–– 
if
”” 
(
”” 
ServiceProvider
”” 
!=
””  "
null
””# '
)
””' (
{
‘‘ 
(
’’ 
ServiceProvider
’’  
as
’’! #
IDisposable
’’$ /
)
’’/ 0
?
’’0 1
.
’’1 2
Dispose
’’2 9
(
’’9 :
)
’’: ;
;
’’; <
ServiceProvider
÷÷ 
=
÷÷  !
null
÷÷" &
;
÷÷& '
}
◊◊ 
IsActivated
ŸŸ 
=
ŸŸ 
false
ŸŸ 
;
ŸŸ  
	Blueprint
⁄⁄ 
=
⁄⁄ 
null
⁄⁄ 
;
⁄⁄ 
Pipeline
€€ 
=
€€ 
null
€€ 
;
€€ 
}
‹‹ 	
~
ﬁﬁ 	
ShellContext
ﬁﬁ	 
(
ﬁﬁ 
)
ﬁﬁ 
{
ﬂﬂ 	
Close
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡ 
}
·· 	
}
‚‚ 
}„„ ô)
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\ShellContextExtensions.cs
	namespace		 	
OrchardCore		
 
.		 
Environment		 !
.		! "
Shell		" '
.		' (
Builders		( 0
{

 
public 

static 
class "
ShellContextExtensions .
{ 
public 
static 
Task 
< 
( 
ILocker #
locker$ *
,* +
bool, 0
locked1 7
)7 8
>8 9,
 TryAcquireShellActivateLockAsync: Z
(Z [
this[ _
ShellContext` l
shellContextm y
)y z
{ 	
var 
lockService 
= 
shellContext *
.* +
Settings+ 3
.3 4
State4 9
==: <
TenantState= H
.H I
InitializingI U
? 
( 
ILock 
) 
shellContext %
.% &
ServiceProvider& 5
.5 6
GetRequiredService6 H
<H I

ILocalLockI S
>S T
(T U
)U V
: 
shellContext 
. 
ServiceProvider .
.. /
GetRequiredService/ A
<A B
IDistributedLockB R
>R S
(S T
)T U
;U V
TimeSpan 
timeout 
, 

expiration (
;( )
if 
( 
lockService 
is 

ILocalLock )
)) *
{ 
timeout 
= 

expiration $
=% &
TimeSpan' /
./ 0
MaxValue0 8
;8 9
} 
else 
{ 
var   
options   
=   
shellContext   *
.  * +
ServiceProvider  + :
.  : ;
GetRequiredService  ; M
<  M N
IOptions  N V
<  V W
ShellContextOptions  W j
>  j k
>  k l
(  l m
)  m n
;  n o
timeout!! 
=!! 
TimeSpan!! "
.!!" #
FromMilliseconds!!# 3
(!!3 4
options!!4 ;
.!!; <
Value!!< A
.!!A B$
ShellActivateLockTimeout!!B Z
)!!Z [
;!![ \

expiration"" 
="" 
TimeSpan"" %
.""% &
FromMilliseconds""& 6
(""6 7
options""7 >
.""> ?
Value""? D
.""D E'
ShellActivateLockExpiration""E `
)""` a
;""a b
}## 
return%% 
lockService%% 
.%% 
TryAcquireLockAsync%% 2
(%%2 3
$str%%3 H
,%%H I
timeout%%J Q
,%%Q R

expiration%%S ]
)%%] ^
;%%^ _
}&& 	
public++ 
static++ 
Task++ 
<++ 
(++ 
ILocker++ #
locker++$ *
,++* +
bool++, 0
locked++1 7
)++7 8
>++8 9,
 TryAcquireShellRemovingLockAsync++: Z
(++Z [
this++[ _
ShellContext++` l
shellContext++m y
)++y z
{,, 	
TimeSpan-- 
timeout-- 
,-- 

expiration-- (
;--( )
var// 
lockService// 
=// 
shellContext// *
.//* +
ServiceProvider//+ :
.//: ;
GetRequiredService//; M
<//M N
IDistributedLock//N ^
>//^ _
(//_ `
)//` a
;//a b
if00 
(00 
lockService00 
is00 

ILocalLock00 )
)00) *
{11 
timeout33 
=33 

expiration33 $
=33% &
TimeSpan33' /
.33/ 0
MaxValue330 8
;338 9
}44 
else55 
{66 
var88 
options88 
=88 
shellContext88 *
.88* +
ServiceProvider88+ :
.88: ;
GetRequiredService88; M
<88M N
IOptions88N V
<88V W
ShellContextOptions88W j
>88j k
>88k l
(88l m
)88m n
;88n o
timeout99 
=99 
TimeSpan99 "
.99" #
FromMilliseconds99# 3
(993 4
options994 ;
.99; <
Value99< A
.99A B$
ShellRemovingLockTimeout99B Z
)99Z [
;99[ \

expiration:: 
=:: 
TimeSpan:: %
.::% &
FromMilliseconds::& 6
(::6 7
options::7 >
.::> ?
Value::? D
.::D E'
ShellRemovingLockExpiration::E `
)::` a
;::a b
};; 
return== 
lockService== 
.== 
TryAcquireLockAsync== 2
(==2 3
$str==3 H
,==H I
timeout==J Q
,==Q R

expiration==S ]
)==] ^
;==^ _
}>> 	
}?? 
}@@ ‘
äC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\ShellContextOptions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

class 
ShellContextOptions $
{ 
public		 
int		 $
ShellActivateLockTimeout		 +
{		, -
get		. 1
;		1 2
set		3 6
;		6 7
}		8 9
public 
int '
ShellActivateLockExpiration .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
int $
ShellRemovingLockTimeout +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
int '
ShellRemovingLockExpiration .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} „
öC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\ConfigurationSectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

static 
class *
ConfigurationSectionExtensions 6
{ 
public 
static !
IConfigurationSection +
GetSectionCompat, <
(< =
this= A
IConfigurationB P
configurationQ ^
,^ _
string` f
keyg j
)j k
{ 	
var 
section 
= 
configuration '
.' (

GetSection( 2
(2 3
key3 6
)6 7
;7 8
return 
section 
. 
Exists !
(! "
)" #
? 
section 
: 
key 
. 
Contains 
( 
$char "
)" #
? 
configuration #
.# $

GetSection$ .
(. /
key/ 2
.2 3
Replace3 :
(: ;
$char; >
,> ?
$char@ C
)C D
)D E
: 
section 
; 
} 	
} 
} ø8
öC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\Internal\UpdatableDataProvider.cs
	namespace

 	
OrchardCore


 
.

 
Environment

 !
.

! "
Shell

" '
.

' (
Configuration

( 5
.

5 6
Internal

6 >
{ 
internal 
class !
UpdatableDataProvider (
:) *"
IConfigurationProvider+ A
,A B
IEnumerableC N
<N O
KeyValuePairO [
<[ \
string\ b
,b c
stringd j
>j k
>k l
{ 
private $
ConfigurationReloadToken (
_reloadToken) 5
=6 7
new8 ;$
ConfigurationReloadToken< T
(T U
)U V
;V W
public !
UpdatableDataProvider $
($ %
IEnumerable% 0
<0 1
KeyValuePair1 =
<= >
string> D
,D E
stringF L
>L M
>M N
initialDataO Z
)Z [
{ 	
Data 
= 
new  
ConcurrentDictionary +
<+ ,
string, 2
,2 3
string4 :
>: ;
(; <
initialData< G
,G H
StringComparerI W
.W X
OrdinalIgnoreCaseX i
)i j
;j k
} 	
	protected 
IDictionary 
< 
string $
,$ %
string& ,
>, -
Data. 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
void 
Add 
( 
string 
key "
," #
string$ *
value+ 0
)0 1
=>2 4
Data5 9
.9 :
Add: =
(= >
key> A
,A B
valueC H
)H I
;I J
public 
IEnumerator 
< 
KeyValuePair '
<' (
string( .
,. /
string0 6
>6 7
>7 8
GetEnumerator9 F
(F G
)G H
=>I K
DataL P
.P Q
GetEnumeratorQ ^
(^ _
)_ `
;` a
IEnumerator 
IEnumerable 
.  
GetEnumerator  -
(- .
). /
=>0 2
GetEnumerator3 @
(@ A
)A B
;B C
public 
virtual 
bool 
TryGet "
(" #
string# )
key* -
,- .
out/ 2
string3 9
value: ?
)? @
=>A C
DataD H
.H I
TryGetValueI T
(T U
keyU X
,X Y
outZ ]
value^ c
)c d
;d e
public 
virtual 
void 
Set 
(  
string  &
key' *
,* +
string, 2
value3 8
)8 9
=>: <
Data= A
[A B
keyB E
]E F
=G H
valueI N
;N O
public!! 
virtual!! 
void!! 
Load!!  
(!!  !
)!!! "
{"" 	
}## 	
public%% 
virtual%% 
IEnumerable%% "
<%%" #
string%%# )
>%%) *
GetChildKeys%%+ 7
(%%7 8
IEnumerable%%8 C
<%%C D
string%%D J
>%%J K
earlierKeys%%L W
,%%W X
string%%Y _

parentPath%%` j
)%%j k
{&& 	
var'' 
prefix'' 
='' 

parentPath'' #
==''$ &
null''' +
?'', -
string''. 4
.''4 5
Empty''5 :
:''; <

parentPath''= G
+''H I
ConfigurationPath''J [
.''[ \
KeyDelimiter''\ h
;''h i
return)) 
Data)) 
.** 
Where** 
(** 
kv** 
=>** 
kv** 
.**  
Key**  #
.**# $

StartsWith**$ .
(**. /
prefix**/ 5
,**5 6
StringComparison**7 G
.**G H
OrdinalIgnoreCase**H Y
)**Y Z
)**Z [
.++ 
Select++ 
(++ 
kv++ 
=>++ 
Segment++ %
(++% &
kv++& (
.++( )
Key++) ,
,++, -
prefix++. 4
.++4 5
Length++5 ;
)++; <
)++< =
.,, 
Concat,, 
(,, 
earlierKeys,, #
),,# $
.-- 
OrderBy-- 
(-- 
k-- 
=>-- 
k-- 
,--  $
ConfigurationKeyComparer--! 9
.--9 :
Instance--: B
)--B C
;--C D
}.. 	
private00 
static00 
string00 
Segment00 %
(00% &
string00& ,
key00- 0
,000 1
int002 5
prefixLength006 B
)00B C
{11 	
var22 
indexOf22 
=22 
key22 
.22 
IndexOf22 %
(22% &
ConfigurationPath22& 7
.227 8
KeyDelimiter228 D
,22D E
prefixLength22F R
,22R S
StringComparison22T d
.22d e
OrdinalIgnoreCase22e v
)22v w
;22w x
return33 
indexOf33 
<33 
$num33 
?33  
key33! $
.33$ %
	Substring33% .
(33. /
prefixLength33/ ;
)33; <
:33= >
key33? B
.33B C
	Substring33C L
(33L M
prefixLength33M Y
,33Y Z
indexOf33[ b
-33c d
prefixLength33e q
)33q r
;33r s
}44 	
public66 
IChangeToken66 
GetReloadToken66 *
(66* +
)66+ ,
{77 	
return88 
_reloadToken88 
;88  
}99 	
	protected;; 
void;; 
OnReload;; 
(;;  
);;  !
{<< 	
var== 
previousToken== 
=== 
Interlocked==  +
.==+ ,
Exchange==, 4
(==4 5
ref==5 8
_reloadToken==9 E
,==E F
new==G J$
ConfigurationReloadToken==K c
(==c d
)==d e
)==e f
;==f g
previousToken>> 
.>> 
OnReload>> "
(>>" #
)>># $
;>>$ %
}?? 	
publicAA 
overrideAA 
stringAA 
ToStringAA '
(AA' (
)AA( )
=>AA* ,
$"AA- /
{AA/ 0
GetTypeAA0 7
(AA7 8
)AA8 9
.AA9 :
NameAA: >
}AA> ?
"AA? @
;AA@ A
}BB 
}CC „
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\IShellConfiguration.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

	interface 
IShellConfiguration (
:) *
IConfiguration+ 9
{ 
} 
} “
ñC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\IShellConfigurationSources.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

	interface &
IShellConfigurationSources /
{ 
Task		 
AddSourcesAsync		 
(		 
string		 #
tenant		$ *
,		* +!
IConfigurationBuilder		, A
builder		B I
)		I J
;		J K
Task

 
	SaveAsync

 
(

 
string

 
tenant

 $
,

$ %
IDictionary

& 1
<

1 2
string

2 8
,

8 9
string

: @
>

@ A
data

B F
)

F G
;

G H
Task 
RemoveAsync 
( 
string 
tenant  &
)& '
;' (
} 
public 

static 
class /
#ShellConfigurationSourcesExtensions ;
{ 
public 
static 
async 
Task  
<  !!
IConfigurationBuilder! 6
>6 7
AddSourcesAsync8 G
(G H
thisH L!
IConfigurationBuilderM b
builderc j
,j k
stringl r
tenants y
,y z'
IShellConfigurationSources	{ ï
sources
ñ ù
)
ù û
{ 	
await 
sources 
. 
AddSourcesAsync )
() *
tenant* 0
,0 1
builder2 9
)9 :
;: ;
return 
builder 
; 
} 	
} 
} ∏

óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\IShellsConfigurationSources.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

	interface '
IShellsConfigurationSources 0
{ 
Task 
AddSourcesAsync 
( !
IConfigurationBuilder 2
builder3 :
): ;
;; <
}		 
public 

static 
class 0
$ShellsConfigurationSourcesExtensions <
{ 
public 
static 
async 
Task  
<  !!
IConfigurationBuilder! 6
>6 7
AddSourcesAsync8 G
(G H
thisH L!
IConfigurationBuilderM b
builderc j
,j k(
IShellsConfigurationSources	l á
sources
à è
)
è ê
{ 	
await 
sources 
. 
AddSourcesAsync )
() *
builder* 1
)1 2
;2 3
return 
builder 
; 
} 	
} 
} ¢
íC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\IShellsSettingsSources.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

	interface "
IShellsSettingsSources +
{ 
Task		 
AddSourcesAsync		 
(		 !
IConfigurationBuilder		 2
builder		3 :
)		: ;
;		; <
Task

 
AddSourcesAsync

 
(

 
string

 #
tenant

$ *
,

* +!
IConfigurationBuilder

, A
builder

B I
)

I J
;

J K
Task 
	SaveAsync 
( 
string 
tenant $
,$ %
IDictionary& 1
<1 2
string2 8
,8 9
string: @
>@ A
dataB F
)F G
;G H
Task 
RemoveAsync 
( 
string 
tenant  &
)& '
;' (
} 
public 

static 
class +
ShellsSettingsSourcesExtensions 7
{ 
public 
static 
async 
Task  
<  !!
IConfigurationBuilder! 6
>6 7
AddSourcesAsync8 G
(G H
thisH L!
IConfigurationBuilderM b
builderc j
,j k#
IShellsSettingsSources	l Ç
sources
É ä
)
ä ã
{ 	
await 
sources 
. 
AddSourcesAsync )
() *
builder* 1
)1 2
;2 3
return 
builder 
; 
} 	
public 
static 
async 
Task  
<  !!
IConfigurationBuilder! 6
>6 7
AddSourcesAsync8 G
(G H
thisH L!
IConfigurationBuilderM b
builderc j
,j k
stringl r
tenants y
,y z#
IShellsSettingsSources	{ ë
sources
í ô
)
ô ö
{ 	
await 
sources 
. 
AddSourcesAsync )
() *
tenant* 0
,0 1
builder2 9
)9 :
;: ;
return 
builder 
; 
} 	
} 
} ÛR
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\ShellConfiguration.cs
	namespace

 	
OrchardCore


 
.

 
Environment

 !
.

! "
Shell

" '
.

' (
Configuration

( 5
{ 
public 

class 
ShellConfiguration #
:$ %
IShellConfiguration& 9
{ 
private 
IConfigurationRoot "
_configuration# 1
;1 2
private !
UpdatableDataProvider %
_updatableData& 4
;4 5
private 
readonly 
IEnumerable $
<$ %
KeyValuePair% 1
<1 2
string2 8
,8 9
string: @
>@ A
>A B
_initialDataC O
;O P
private 
readonly 
string 
_name  %
;% &
private 
Func 
< 
string 
, 
Task !
<! "!
IConfigurationBuilder" 7
>7 8
>8 9!
_configBuilderFactory: O
;O P
private 
readonly 
IEnumerable $
<$ %"
IConfigurationProvider% ;
>; <#
_configurationProviders= T
;T U
private 
SemaphoreSlim 

_semaphore (
=) *
new+ .
SemaphoreSlim/ <
(< =
$num= >
)> ?
;? @
public 
ShellConfiguration !
(! "
)" #
{ 	
} 	
public   
ShellConfiguration   !
(  ! "
IConfiguration  " 0
configuration  1 >
)  > ?
{!! 	#
_configurationProviders"" #
=""$ %
new""& ) 
ConfigurationBuilder""* >
(""> ?
)""? @
.## 
AddConfiguration## !
(##! "
configuration##" /
)##/ 0
.$$ 
Build$$ 
($$ 
)$$ 
.$$ 
	Providers$$ "
;$$" #
}%% 	
public'' 
ShellConfiguration'' !
(''! "
string''" (
name'') -
,''- .
Func''/ 3
<''3 4
string''4 :
,'': ;
Task''< @
<''@ A!
IConfigurationBuilder''A V
>''V W
>''W X
factory''Y `
)''` a
{(( 	
_name)) 
=)) 
name)) 
;)) !
_configBuilderFactory** !
=**" #
factory**$ +
;**+ ,
}++ 	
public-- 
ShellConfiguration-- !
(--! "
ShellConfiguration--" 4
configuration--5 B
)--B C
:--D E
this--F J
(--J K
null--K O
,--O P
configuration--Q ^
)--^ _
{.. 	
}// 	
public11 
ShellConfiguration11 !
(11! "
string11" (
name11) -
,11- .
ShellConfiguration11/ A
configuration11B O
)11O P
{22 	
_name33 
=33 
name33 
;33 
if55 
(55 
configuration55 
.55 
_configuration55 ,
!=55- /
null550 4
)554 5
{66 #
_configurationProviders77 '
=77( )
configuration77* 7
.777 8
_configuration778 F
.77F G
	Providers77G P
.88 
Where88 
(88 
p88 
=>88 
!88  !
(88! "
p88" #
is88$ &!
UpdatableDataProvider88' <
)88< =
)88= >
.88> ?
ToArray88? F
(88F G
)88G H
;88H I
_initialData:: 
=:: 
configuration:: ,
.::, -
_updatableData::- ;
.::; <
ToArray::< C
(::C D
)::D E
;::E F
return<< 
;<< 
}== 
if?? 
(?? 
name?? 
==?? 
null?? 
)?? 
{@@ #
_configurationProvidersAA '
=AA( )
configurationAA* 7
.AA7 8#
_configurationProvidersAA8 O
;AAO P
_initialDataBB 
=BB 
configurationBB ,
.BB, -
_initialDataBB- 9
;BB9 :
returnCC 
;CC 
}DD !
_configBuilderFactoryFF !
=FF" #
configurationFF$ 1
.FF1 2!
_configBuilderFactoryFF2 G
;FFG H
}GG 	
privateII 
voidII 
EnsureConfigurationII (
(II( )
)II) *
{JJ 	
ifKK 
(KK 
_configurationKK 
!=KK !
nullKK" &
)KK& '
{LL 
returnMM 
;MM 
}NN $
EnsureConfigurationAsyncPP $
(PP$ %
)PP% &
.PP& '

GetAwaiterPP' 1
(PP1 2
)PP2 3
.PP3 4
	GetResultPP4 =
(PP= >
)PP> ?
;PP? @
}QQ 	
internalSS 
asyncSS 
TaskSS $
EnsureConfigurationAsyncSS 4
(SS4 5
)SS5 6
{TT 	
ifUU 
(UU 
_configurationUU 
!=UU !
nullUU" &
)UU& '
{VV 
returnWW 
;WW 
}XX 
awaitZZ 

_semaphoreZZ 
.ZZ 
	WaitAsyncZZ &
(ZZ& '
)ZZ' (
;ZZ( )
try[[ 
{\\ 
if]] 
(]] 
_configuration]] "
!=]]# %
null]]& *
)]]* +
{^^ 
return__ 
;__ 
}`` 
varbb 
	providersbb 
=bb 
newbb  #
Listbb$ (
<bb( )"
IConfigurationProviderbb) ?
>bb? @
(bb@ A
)bbA B
;bbB C
ifdd 
(dd !
_configBuilderFactorydd )
!=dd* ,
nulldd- 1
)dd1 2
{ee 
	providersff 
.ff 
AddRangeff &
(ff& '
newff' * 
ConfigurationBuilderff+ ?
(ff? @
)ff@ A
.gg 
AddConfigurationgg )
(gg) *
(gg* +
awaitgg+ 0!
_configBuilderFactorygg1 F
.ggF G
InvokeggG M
(ggM N
_nameggN S
)ggS T
)ggT U
.ggU V
BuildggV [
(gg[ \
)gg\ ]
)gg] ^
.hh 
Buildhh 
(hh 
)hh  
.hh  !
	Providershh! *
)hh* +
;hh+ ,
}ii 
ifkk 
(kk #
_configurationProviderskk +
!=kk, .
nullkk/ 3
)kk3 4
{ll 
	providersmm 
.mm 
AddRangemm &
(mm& '#
_configurationProvidersmm' >
)mm> ?
;mm? @
}nn 
_updatableDatapp 
=pp  
newpp! $!
UpdatableDataProviderpp% :
(pp: ;
_initialDatapp; G
??ppH J

EnumerableppK U
.ppU V
EmptyppV [
<pp[ \
KeyValuePairpp\ h
<pph i
stringppi o
,ppo p
stringppq w
>ppw x
>ppx y
(ppy z
)ppz {
)pp{ |
;pp| }
	providersrr 
.rr 
Addrr 
(rr 
_updatableDatarr ,
)rr, -
;rr- .
_configurationtt 
=tt  
newtt! $
ConfigurationRoottt% 6
(tt6 7
	providerstt7 @
)tt@ A
;ttA B
}uu 
finallyvv 
{ww 

_semaphorexx 
.xx 
Releasexx "
(xx" #
)xx# $
;xx$ %
}yy 
}zz 	
private 
IConfiguration 
Configuration ,
{
ÄÄ 	
get
ÅÅ 
{
ÇÇ !
EnsureConfiguration
ÉÉ #
(
ÉÉ# $
)
ÉÉ$ %
;
ÉÉ% &
return
ÑÑ 
_configuration
ÑÑ %
;
ÑÑ% &
}
ÖÖ 
}
ÜÜ 	
public
àà 
string
àà 
this
àà 
[
àà 
string
àà !
key
àà" %
]
àà% &
{
ââ 	
get
ää 
{
ãã 
var
åå 
value
åå 
=
åå 
Configuration
åå )
[
åå) *
key
åå* -
]
åå- .
;
åå. /
return
éé 
value
éé 
??
éé 
(
éé  !
key
éé! $
.
éé$ %
Contains
éé% -
(
éé- .
$char
éé. 1
)
éé1 2
?
èè 
Configuration
èè #
[
èè# $
key
èè$ '
.
èè' (
Replace
èè( /
(
èè/ 0
$char
èè0 3
,
èè3 4
$char
èè5 8
)
èè8 9
]
èè9 :
:
êê 
null
êê 
)
êê 
;
êê 
}
ëë 
set
íí 
{
ìì !
EnsureConfiguration
îî #
(
îî# $
)
îî$ %
;
îî% &
_updatableData
ïï 
.
ïï 
Set
ïï "
(
ïï" #
key
ïï# &
,
ïï& '
value
ïï( -
)
ïï- .
;
ïï. /
}
ññ 
}
óó 	
public
ôô #
IConfigurationSection
ôô $

GetSection
ôô% /
(
ôô/ 0
string
ôô0 6
key
ôô7 :
)
ôô: ;
{
öö 	
return
õõ 
Configuration
õõ  
.
õõ  !
GetSectionCompat
õõ! 1
(
õõ1 2
key
õõ2 5
)
õõ5 6
;
õõ6 7
}
úú 	
public
ûû 
IEnumerable
ûû 
<
ûû #
IConfigurationSection
ûû 0
>
ûû0 1
GetChildren
ûû2 =
(
ûû= >
)
ûû> ?
{
üü 	
return
†† 
Configuration
††  
.
††  !
GetChildren
††! ,
(
††, -
)
††- .
;
††. /
}
°° 	
public
££ 
IChangeToken
££ 
GetReloadToken
££ *
(
££* +
)
££+ ,
{
§§ 	
return
•• 
Configuration
••  
.
••  !
GetReloadToken
••! /
(
••/ 0
)
••0 1
;
••1 2
}
¶¶ 	
}
ßß 
}®® Ì
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Descriptor\IShellDescriptorManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
{ 
public

 

	interface

 #
IShellDescriptorManager

 ,
{ 
Task 
< 
ShellDescriptor 
> #
GetShellDescriptorAsync 5
(5 6
)6 7
;7 8
Task &
UpdateShellDescriptorAsync '
(' (
int( +
priorSerialNumber, =
,= >
IEnumerable? J
<J K
ShellFeatureK W
>W X
enabledFeaturesY h
)h i
;i j
} 
} ¬

èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Descriptor\Models\ShellDescriptor.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
.2 3
Models3 9
{ 
public

 

class

 
ShellDescriptor

  
{ 
public 
int 
SerialNumber 
{  !
get" %
;% &
set' *
;* +
}, -
public 
IList 
< 
ShellFeature !
>! "
Features# +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
new< ?
List@ D
<D E
ShellFeatureE Q
>Q R
(R S
)S T
;T U
public 
IList 
< 
ShellFeature !
>! "
	Installed# ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
new= @
ListA E
<E F
ShellFeatureF R
>R S
(S T
)T U
;U V
} 
} ï
åC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Descriptor\Models\ShellFeature.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
.2 3
Models3 9
{ 
public 

class 
ShellFeature 
: 

IEquatable  *
<* +
ShellFeature+ 7
>7 8
{ 
public 
ShellFeature 
( 
) 
{		 	
}

 	
public 
ShellFeature 
( 
string "
id# %
,% &
bool' +
alwaysEnabled, 9
=: ;
false< A
)A B
{ 	
Id 
= 
id 
; 
AlwaysEnabled 
= 
alwaysEnabled )
;) *
} 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
[ 	

JsonIgnore	 
] 
public 
bool 
AlwaysEnabled !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Equals 
( 
ShellFeature '
other( -
)- .
{ 	
if 
( 
other 
== 
null 
) 
{ 
return 
false 
; 
} 
return 
Id 
== 
other 
. 
Id !
;! "
} 	
public!! 
override!! 
bool!! 
Equals!! #
(!!# $
object!!$ *
obj!!+ .
)!!. /
{"" 	
return## 
Equals## 
(## 
obj## 
as##  
ShellFeature##! -
)##- .
;##. /
}$$ 	
public&& 
override&& 
int&& 
GetHashCode&& '
(&&' (
)&&( )
{'' 	
return(( 
Id(( 
.(( 
GetHashCode(( !
(((! "
)((" #
;((# $
})) 	
}** 
}++ ƒ
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Distributed\DistributedShellMarkerService.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Distributed( 3
{ 
public 

class )
DistributedShellMarkerService .
{ 
} 
} ‚
ÅC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Events\IShellEvents.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Events( .
{ 
public 

	interface 
IShellEvents !
{ 
ShellsEvent 
LoadingAsync  
{! "
get# &
;& '
set( +
;+ ,
}- .

ShellEvent 
ReleasingAsync !
{" #
get$ '
;' (
set) ,
;, -
}. /

ShellEvent 
ReloadingAsync !
{" #
get$ '
;' (
set) ,
;, -
}. /

ShellEvent 
RemovingAsync  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ›
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Events\ShellEvent.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Events( .
{ 
public 

delegate 
Task 

ShellEvent #
(# $
string$ *
name+ /
)/ 0
;0 1
}		 ∫
ÄC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Events\ShellsEvent.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Events( .
{ 
public 

delegate 
Task 
ShellsEvent $
($ %
)% &
;& '
}		 Á
ñC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Extensions\ShellContextFactoryExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
;' (
public		 
static		 
class		 )
ShellContextFactoryExtensions		 1
{

 
public 

static 
async 
Task 
< 
ShellContext )
>) *%
CreateMaximumContextAsync+ D
(D E
thisE I 
IShellContextFactoryJ ^
shellContextFactory_ r
,r s
ShellSettings	t Å
shellSettings
Ç è
)
è ê
{ 
var 
shellDescriptor 
= 
await #
shellContextFactory$ 7
.7 8#
GetShellDescriptorAsync8 O
(O P
shellSettingsP ]
)] ^
;^ _
if 

( 
shellDescriptor 
== 
null #
)# $
{ 	
return 
await 
shellContextFactory ,
., -%
CreateMinimumContextAsync- F
(F G
shellSettingsG T
)T U
;U V
} 	
shellDescriptor 
= 
new 
ShellDescriptor -
{. /
Features0 8
=9 :
shellDescriptor; J
.J K
	InstalledK T
}U V
;V W
return 
await 
shellContextFactory (
.( )'
CreateDescribedContextAsync) D
(D E
shellSettingsE R
,R S
shellDescriptorT c
)c d
;d e
} 
public 

static 
Task 
< 
ShellContext #
># $%
CreateMinimumContextAsync% >
(> ?
this? C 
IShellContextFactoryD X
shellContextFactoryY l
,l m
ShellSettingsn {
shellSettings	| â
)
â ä
=>
ã ç
shellContextFactory 
. '
CreateDescribedContextAsync 7
(7 8
shellSettings8 E
,E F
newG J
ShellDescriptorK Z
(Z [
)[ \
)\ ]
;] ^
private!! 
static!! 
async!! 
Task!! 
<!! 
ShellDescriptor!! -
>!!- .#
GetShellDescriptorAsync!!/ F
(!!F G
this!!G K 
IShellContextFactory!!L `
shellContextFactory!!a t
,!!t u
ShellSettings	!!v É
shellSettings
!!Ñ ë
)
!!ë í
{"" 
ShellDescriptor## 
shellDescriptor## '
=##( )
null##* .
;##. /
using%% 
var%% 
shellContext%% 
=%%  
await%%! &
shellContextFactory%%' :
.%%: ;%
CreateMinimumContextAsync%%; T
(%%T U
shellSettings%%U b
)%%b c
;%%c d
await&& 
shellContext&& 
.&& 
CreateScope&& &
(&&& '
)&&' (
.&&( )"
UsingServiceScopeAsync&&) ?
(&&? @
async&&@ E
scope&&F K
=>&&L N
{'' 	
var(( "
shellDescriptorManager(( &
=((' (
scope(() .
.((. /
ServiceProvider((/ >
.((> ?
GetRequiredService((? Q
<((Q R#
IShellDescriptorManager((R i
>((i j
(((j k
)((k l
;((l m
shellDescriptor)) 
=)) 
await)) #"
shellDescriptorManager))$ :
.)): ;#
GetShellDescriptorAsync)); R
())R S
)))S T
;))T U
}** 	
)**	 

;**
 
return,, 
shellDescriptor,, 
;,, 
}-- 
}.. Ú
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Extensions\ShellFeaturesManagerExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

static 
class *
ShellFeaturesManagerExtensions 6
{		 
public

 
static

 
Task

 
<

 
IEnumerable

 &
<

& '
IFeatureInfo

' 3
>

3 4
>

4 5
EnableFeaturesAsync

6 I
(

I J
this

J N!
IShellFeaturesManager

O d 
shellFeaturesManager

e y
,

y z
IEnumerable 
< 
IFeatureInfo $
>$ %
features& .
). /
{ 	
return  
shellFeaturesManager '
.' (
EnableFeaturesAsync( ;
(; <
features< D
,D E
falseF K
)K L
;L M
} 	
public 
static 
async 
Task  
<  !
IEnumerable! ,
<, -
IFeatureInfo- 9
>9 :
>: ;
EnableFeaturesAsync< O
(O P
thisP T!
IShellFeaturesManagerU j 
shellFeaturesManagerk 
,	 Ä
IEnumerable 
< 
IFeatureInfo $
>$ %
features& .
,. /
bool0 4
force5 :
): ;
{ 	
var 
( 
_ 
, 
featuresToEnable $
)$ %
=& '
await( - 
shellFeaturesManager. B
.B C
UpdateFeaturesAsyncC V
(V W
ArrayW \
.\ ]
Empty] b
<b c
IFeatureInfoc o
>o p
(p q
)q r
,r s
featurest |
,| }
force	~ É
)
É Ñ
;
Ñ Ö
return 
featuresToEnable #
;# $
} 	
public 
static 
Task 
< 
IEnumerable &
<& '
IFeatureInfo' 3
>3 4
>4 5 
DisableFeaturesAsync6 J
(J K
thisK O!
IShellFeaturesManagerP e 
shellFeaturesManagerf z
,z {
IEnumerable 
< 
IFeatureInfo $
>$ %
features& .
). /
{ 	
return  
shellFeaturesManager '
.' ( 
DisableFeaturesAsync( <
(< =
features= E
,E F
falseG L
)L M
;M N
} 	
public 
static 
async 
Task  
<  !
IEnumerable! ,
<, -
IFeatureInfo- 9
>9 :
>: ; 
DisableFeaturesAsync< P
(P Q
thisQ U!
IShellFeaturesManagerV k!
shellFeaturesManager	l Ä
,
Ä Å
IEnumerable 
< 
IFeatureInfo $
>$ %
features& .
,. /
bool0 4
force5 :
): ;
{ 	
var   
(   
featuresToDisable   "
,  " #
_  $ %
)  % &
=  ' (
await  ) . 
shellFeaturesManager  / C
.  C D
UpdateFeaturesAsync  D W
(  W X
features  X `
,  ` a
Array  b g
.  g h
Empty  h m
<  m n
IFeatureInfo  n z
>  z {
(  { |
)  | }
,  } ~
force	   Ñ
)
  Ñ Ö
;
  Ö Ü
return!! 
featuresToDisable!! $
;!!$ %
}"" 	
}## 
}$$ î
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Extensions\ShellHelper.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

static 
class 
ShellHelper #
{ 
public 
const 
string 
DefaultShellName ,
=- .
$str/ 8
;8 9
} 
} ˝
åC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Extensions\ShellHostExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

static 
class 
ShellHostExtensions +
{ 
public 
static 
Task 
< 

ShellScope %
>% &
GetScopeAsync' 4
(4 5
this5 9

IShellHost: D
	shellHostE N
,N O
stringP V
tenantW ]
)] ^
{ 	
return 
	shellHost 
. 
GetScopeAsync *
(* +
	shellHost+ 4
.4 5
GetSettings5 @
(@ A
tenantA G
)G H
)H I
;I J
} 	
public 
async 
static 
Task  '
ReloadAllShellContextsAsync! <
(< =
this= A

IShellHostB L
	shellHostM V
)V W
{ 	
foreach 
( 
var 
settings !
in" $
	shellHost% .
.. /
GetAllSettings/ =
(= >
)> ?
)? @
{ 
await 
	shellHost 
.  #
ReloadShellContextAsync  7
(7 8
settings8 @
)@ A
;A B
} 
} 	
public!! 
async!! 
static!! 
Task!!  (
ReleaseAllShellContextsAsync!!! =
(!!= >
this!!> B

IShellHost!!C M
	shellHost!!N W
)!!W X
{"" 	
foreach## 
(## 
var## 
settings## !
in##" $
	shellHost##% .
.##. /
GetAllSettings##/ =
(##= >
)##> ?
)##? @
{$$ 
await%% 
	shellHost%% 
.%%  $
ReleaseShellContextAsync%%  8
(%%8 9
settings%%9 A
)%%A B
;%%B C
}&& 
}'' 	
public,, 
static,, 
ShellSettings,, #
GetSettings,,$ /
(,,/ 0
this,,0 4

IShellHost,,5 ?
	shellHost,,@ I
,,,I J
string,,K Q
tenant,,R X
),,X Y
{-- 	
if.. 
(.. 
!.. 
	shellHost.. 
... 
TryGetSettings.. )
(..) *
tenant..* 0
,..0 1
out..2 5
var..6 9
settings..: B
)..B C
)..C D
{// 
throw00 
new00 
ArgumentException00 +
(00+ ,
$str00, U
,00U V
nameof00W ]
(00] ^
tenant00^ d
)00d e
)00e f
;00f g
}11 
return33 
settings33 
;33 
}44 	
}55 
}66 ‘
ÇC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IFeatureEventHandler.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface  
IFeatureEventHandler )
{ 
Task 
InstallingAsync 
( 
IFeatureInfo )
feature* 1
)1 2
;2 3
Task		 
InstalledAsync		 
(		 
IFeatureInfo		 (
feature		) 0
)		0 1
;		1 2
Task

 
EnablingAsync

 
(

 
IFeatureInfo

 '
feature

( /
)

/ 0
;

0 1
Task 
EnabledAsync 
( 
IFeatureInfo &
feature' .
). /
;/ 0
Task 
DisablingAsync 
( 
IFeatureInfo (
feature) 0
)0 1
;1 2
Task 
DisabledAsync 
( 
IFeatureInfo '
feature( /
)/ 0
;0 1
Task 
UninstallingAsync 
( 
IFeatureInfo +
feature, 3
)3 4
;4 5
Task 
UninstalledAsync 
( 
IFeatureInfo *
feature+ 2
)2 3
;3 4
} 
} Ä
ÖC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IFeatureProfilesService.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface #
IFeatureProfilesService ,
{ 
Task		 
<		 
IDictionary		 
<		 
string		 
,		  
FeatureProfile		! /
>		/ 0
>		0 1#
GetFeatureProfilesAsync		2 I
(		I J
)		J K
;		K L
}

 
} «
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IFeatureValidationProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface &
IFeatureValidationProvider /
{		 
	ValueTask

 
<

 
bool

 
>

 
IsFeatureValidAsync

 +
(

+ ,
string

, 2
id

3 5
)

5 6
;

6 7
} 
} ¢
ÄC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IRunningShellTable.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface 
IRunningShellTable '
{ 
void 
Add 
( 
ShellSettings 
settings '
)' (
;( )
void 
Remove 
( 
ShellSettings !
settings" *
)* +
;+ ,
ShellSettings		 
Match		 
(		 

HostString		 &
host		' +
,		+ ,

PathString		- 7
path		8 <
,		< =
bool		> B
fallbackToDefault		C T
=		U V
true		W [
)		[ \
;		\ ]
}

 
} ¯
ÅC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellContextEvents.cs
	namespace 	
OrchardCore
 
. 
Abstractions "
." #
Shell# (
;( )
public 
	interface 
IShellContextEvents $
{ 
Task 
CreatedAsync	 
( 
ShellContext "
context# *
)* +
;+ ,
}		 ◊
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellDescriptorFeaturesManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

delegate 
void 0
$FeatureDependencyNotificationHandler =
(= >
string> D
messageFormatE R
,R S
IFeatureInfoT `
featurea h
,h i
IEnumerablej u
<u v
IFeatureInfo	v Ç
>
Ç É
features
Ñ å
)
å ç
;
ç é
public

 

	interface

 +
IShellDescriptorFeaturesManager

 4
{ 
Task 
< 
( 
IEnumerable 
< 
IFeatureInfo &
>& '
,' (
IEnumerable) 4
<4 5
IFeatureInfo5 A
>A B
)B C
>C D
UpdateFeaturesAsyncE X
(X Y
ShellDescriptorY h
shellDescriptori x
,x y
IEnumerable 
< 
IFeatureInfo $
>$ %
featuresToDisable& 7
,7 8
IEnumerable9 D
<D E
IFeatureInfoE Q
>Q R
featuresToEnableS c
,c d
boole i
forcej o
)o p
;p q
} 
} Ó
ëC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellDescriptorManagerEventHandler.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public		 

	interface		 /
#IShellDescriptorManagerEventHandler		 8
{

 
Task 
ChangedAsync 
( 
ShellDescriptor )

descriptor* 4
,4 5
ShellSettings6 C
settingsD L
)L M
;M N
} 
} ü
ÉC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellFeaturesManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface !
IShellFeaturesManager *
{		 
Task

 
<

 
IEnumerable

 
<

 
IFeatureInfo

 %
>

% &
>

& '%
GetAvailableFeaturesAsync

( A
(

A B
)

B C
;

C D
Task 
< 
IEnumerable 
< 
IFeatureInfo %
>% &
>& '#
GetEnabledFeaturesAsync( ?
(? @
)@ A
;A B
Task 
< 
IEnumerable 
< 
IFeatureInfo %
>% &
>& ')
GetAlwaysEnabledFeaturesAsync( E
(E F
)F G
;G H
Task 
< 
IEnumerable 
< 
IFeatureInfo %
>% &
>& '$
GetDisabledFeaturesAsync( @
(@ A
)A B
;B C
Task 
< 
( 
IEnumerable 
< 
IFeatureInfo &
>& '
,' (
IEnumerable) 4
<4 5
IFeatureInfo5 A
>A B
)B C
>C D
UpdateFeaturesAsyncE X
(X Y
IEnumerable 
< 
IFeatureInfo $
>$ %
featuresToDisable& 7
,7 8
IEnumerable9 D
<D E
IFeatureInfoE Q
>Q R
featuresToEnableS c
,c d
boole i
forcej o
)o p
;p q
Task 
< 
IEnumerable 
< 
IExtensionInfo '
>' (
>( )%
GetEnabledExtensionsAsync* C
(C D
)D E
;E F
} 
} •
xC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellHost.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public		 

	interface		 

IShellHost		 
:		  !
IShellEvents		" .
,		. //
#IShellDescriptorManagerEventHandler		0 S
{

 
Task 
InitializeAsync 
( 
) 
; 
Task 
< 
ShellContext 
> (
GetOrCreateShellContextAsync 7
(7 8
ShellSettings8 E
settingsF N
)N O
;O P
Task 
< 

ShellScope 
> 
GetScopeAsync &
(& '
ShellSettings' 4
settings5 =
)= >
;> ?
Task $
UpdateShellSettingsAsync %
(% &
ShellSettings& 3
settings4 <
)< =
;= >
Task'' #
ReloadShellContextAsync'' $
(''$ %
ShellSettings''% 2
settings''3 ;
,''; <
bool''= A
eventSource''B M
=''N O
true''P T
)''T U
;''U V
Task11 $
ReleaseShellContextAsync11 %
(11% &
ShellSettings11& 3
settings114 <
,11< =
bool11> B
eventSource11C N
=11O P
true11Q U
)11U V
;11V W
IEnumerable88 
<88 
ShellContext88  
>88  !
ListShellContexts88" 3
(883 4
)884 5
;885 6
bool>> 
TryGetShellContext>> 
(>>  
string>>  &
name>>' +
,>>+ ,
out>>- 0
ShellContext>>1 =
shellContext>>> J
)>>J K
;>>K L
boolCC 
TryGetSettingsCC 
(CC 
stringCC "
nameCC# '
,CC' (
outCC) ,
ShellSettingsCC- :
settingsCC; C
)CCC D
;CCD E
IEnumerableHH 
<HH 
ShellSettingsHH !
>HH! "
GetAllSettingsHH# 1
(HH1 2
)HH2 3
;HH3 4
TaskMM $
RemoveShellSettingsAsyncMM %
(MM% &
ShellSettingsMM& 3
settingsMM4 <
)MM< =
;MM= >
TaskRR #
RemoveShellContextAsyncRR $
(RR$ %
ShellSettingsRR% 2
settingsRR3 ;
,RR; <
boolRR= A
eventSourceRRB M
=RRN O
trueRRP T
)RRT U
;RRU V
}SS 
}TT Ë

ÉC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellSettingsManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface !
IShellSettingsManager *
{ 
ShellSettings !
CreateDefaultSettings +
(+ ,
), -
;- .
Task 
< 
IEnumerable 
< 
ShellSettings &
>& '
>' (
LoadSettingsAsync) :
(: ;
); <
;< =
Task 
< 
IEnumerable 
< 
string 
>  
>  !"
LoadSettingsNamesAsync" 8
(8 9
)9 :
;: ;
Task 
< 
ShellSettings 
> 
LoadSettingsAsync -
(- .
string. 4
tenant5 ;
); <
;< =
Task## 
SaveSettingsAsync## 
(## 
ShellSettings## ,
settings##- 5
)##5 6
;##6 7
Task)) 
RemoveSettingsAsync))  
())  !
ShellSettings))! .
settings))/ 7
)))7 8
;))8 9
}** 
}++ ”
ÉC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Models\FeatureProfile.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Models( .
{ 
public 

class 
FeatureProfile 
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
List 
< 
FeatureRule 
>  
FeatureRules! -
=. /
new0 3
List4 8
<8 9
FeatureRule9 D
>D E
(E F
)F G
;G H
} 
public 

class 
FeatureRule 
{ 
[ 	
Required	 
] 
public 
string 
Rule 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 

Expression  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ˇ	
èC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Models\FeatureProfilesRuleOptions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Models( .
{ 
public		 

class		 &
FeatureProfilesRuleOptions		 +
{

 
public 

Dictionary 
< 
string  
,  !
Func" &
<& '
string' -
,- .
string/ 5
,5 6
(7 8
bool8 <
isMatch= D
,D E
boolF J
	isAllowedK T
)T U
>U V
>V W
RulesX ]
=^ _
new` c

Dictionaryd n
<n o
stringo u
,u v
Funcw {
<{ |
string	| Ç
,
Ç É
string
Ñ ä
,
ä ã
(
å ç
bool
ç ë
,
ë í
bool
ì ó
)
ó ò
>
ò ô
>
ô ö
(
ö õ
StringComparer
õ ©
.
© ™
OrdinalIgnoreCase
™ ª
)
ª º
;
º Ω
} 
} ∆
ÄC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Models\TenantState.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Models( .
{ 
public 

enum 
TenantState 
{ 
Uninitialized 
, 
Initializing 
, 
Running 
, 
Disabled 
, 
Invalid 
}   
}!! –
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Removing\IShellRemovalManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Removing( 0
;0 1
public 
	interface  
IShellRemovalManager %
{		 
Task 
< 	 
ShellRemovingContext	 
> 
RemoveAsync *
(* +
ShellSettings+ 8
shellSettings9 F
,F G
boolH L
localResourcesOnlyM _
=` a
falseb g
)g h
;h i
} ≤
åC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Removing\IShellRemovingHandler.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Removing( 0
;0 1
public 
	interface !
IShellRemovingHandler &
{		 
Task 
RemovingAsync	 
(  
ShellRemovingContext +
context, 3
)3 4
;4 5
} Ê
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Removing\ShellRemovingContext.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Removing( 0
;0 1
public 
class  
ShellRemovingContext !
{ 
private 
string 
_errorMessage  
;  !
public		 

ShellSettings		 
ShellSettings		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 

bool

 
LocalResourcesOnly

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 

bool 
FailedOnLockTimeout #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

bool 
Success 
=> 
_errorMessage (
==) +
null, 0
;0 1
public 

string 
ErrorMessage 
{ 
get 
=> 
Error 
!= 
null 
? 
$" !
{! "
_errorMessage" /
}/ 0
$str0 1
{1 2
Error2 7
.7 8
GetType8 ?
(? @
)@ A
.A B
FullNameB J
}J K
$strK M
{M N
ErrorN S
.S T
MessageT [
}[ \
"\ ]
:^ _
_errorMessage` m
;m n
set 
=> 
_errorMessage 
= 
value $
;$ %
} 
public 

	Exception 
Error 
{ 
get  
;  !
set" %
;% &
}' (
} ∏
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Removing\ShellSettingsExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Removing( 0
;0 1
public 
static 
class #
ShellSettingsExtensions +
{ 
public 

static 
bool 
IsRemovable "
(" #
this# '
ShellSettings( 5
shellSettings6 C
)C D
=>E G
shellSettings 
. 
State 
== 
TenantState *
.* +
Disabled+ 3
||4 6
shellSettings		 
.		 
State		 
==		 
TenantState		 *
.		* +
Uninitialized		+ 8
;		8 9
}

 áö
~C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Scope\ShellScope.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Scope( -
{ 
public 

class 

ShellScope 
: 
IServiceScope +
{ 
private 
static 
readonly 

AsyncLocal  *
<* +
ShellScopeHolder+ ;
>; <
_current= E
=F G
newH K

AsyncLocalL V
<V W
ShellScopeHolderW g
>g h
(h i
)i j
;j k
private 
readonly 
IServiceScope &
_serviceScope' 4
;4 5
private 
readonly 

Dictionary #
<# $
object$ *
,* +
object, 2
>2 3
_items4 :
=; <
new= @

DictionaryA K
<K L
objectL R
,R S
objectT Z
>Z [
([ \
)\ ]
;] ^
private 
readonly 
List 
< 
Func "
<" #

ShellScope# -
,- .
Task/ 3
>3 4
>4 5
_beforeDispose6 D
=E F
newG J
ListK O
<O P
FuncP T
<T U

ShellScopeU _
,_ `
Taska e
>e f
>f g
(g h
)h i
;i j
private 
readonly 
HashSet  
<  !
string! '
>' (
_deferredSignals) 9
=: ;
new< ?
HashSet@ G
<G H
stringH N
>N O
(O P
)P Q
;Q R
private 
readonly 
List 
< 
Func "
<" #

ShellScope# -
,- .
Task/ 3
>3 4
>4 5
_deferredTasks6 D
=E F
newG J
ListK O
<O P
FuncP T
<T U

ShellScopeU _
,_ `
Taska e
>e f
>f g
(g h
)h i
;i j
private 
readonly 
List 
< 
Func "
<" #

ShellScope# -
,- .
	Exception/ 8
,8 9
Task: >
>> ?
>? @
_exceptionHandlersA S
=T U
newV Y
ListZ ^
<^ _
Func_ c
<c d

ShellScoped n
,n o
	Exceptionp y
,y z
Task{ 
>	 Ä
>
Ä Å
(
Å Ç
)
Ç É
;
É Ñ
private 
bool 
_serviceScopeOnly &
;& '
private 
bool 
_shellTerminated %
;% &
private 
bool 
_terminated  
;  !
private   
bool   
	_disposed   
;   
public"" 

ShellScope"" 
("" 
ShellContext"" &
shellContext""' 3
)""3 4
{## 	
Interlocked%% 
.%% 
	Increment%% !
(%%! "
ref%%" %
shellContext%%& 2
.%%2 3
	_refCount%%3 <
)%%< =
;%%= >
ShellContext&& 
=&& 
shellContext&& '
;&&' (
if** 
(** 
shellContext** 
.** 
ServiceProvider** ,
==**- /
null**0 4
)**4 5
{++ 
Interlocked-- 
.-- 
	Decrement-- %
(--% &
ref--& )
shellContext--* 6
.--6 7
	_refCount--7 @
)--@ A
;--A B
throw// 
new// !
ArgumentNullException// /
(/// 0
nameof//0 6
(//6 7
shellContext//7 C
.//C D
ServiceProvider//D S
)//S T
,//T U
$"00 
$str00 7
{007 8
shellContext008 D
.00D E
Settings00E M
.00M N
Name00N R
}00R S
"00S T
)00T U
;00U V
}11 
_serviceScope33 
=33 
shellContext33 (
.33( )
ServiceProvider33) 8
.338 9
CreateScope339 D
(33D E
)33E F
;33F G
ServiceProvider44 
=44 
_serviceScope44 +
.44+ ,
ServiceProvider44, ;
;44; <
}55 	
public77 
ShellContext77 
ShellContext77 (
{77) *
get77+ .
;77. /
}770 1
public88 
IServiceProvider88 
ServiceProvider88  /
{880 1
get882 5
;885 6
}887 8
public== 
static== 
ShellContext== "
Context==# *
=>==+ -
Current==. 5
?==5 6
.==6 7
ShellContext==7 C
;==C D
publicBB 
staticBB 
IServiceProviderBB &
ServicesBB' /
=>BB0 2
CurrentBB3 :
?BB: ;
.BB; <
ServiceProviderBB< K
;BBK L
publicGG 
staticGG 

ShellScopeGG  
CurrentGG! (
=>GG) +
_currentGG, 4
.GG4 5
ValueGG5 :
?GG: ;
.GG; <
ScopeGG< A
;GGA B
publicLL 
staticLL 
voidLL 
SetLL 
(LL 
objectLL %
keyLL& )
,LL) *
objectLL+ 1
valueLL2 7
)LL7 8
{MM 	
ifNN 
(NN 
CurrentNN 
!=NN 
nullNN 
)NN  
{OO 
CurrentPP 
.PP 
_itemsPP 
[PP 
keyPP "
]PP" #
=PP$ %
valuePP& +
;PP+ ,
}QQ 
}RR 	
publicWW 
staticWW 
objectWW 
GetWW  
(WW  !
objectWW! '
keyWW( +
)WW+ ,
=>WW- /
CurrentWW0 7
==WW8 :
nullWW; ?
?WW@ A
nullWWB F
:WWG H
CurrentWWI P
.WWP Q
_itemsWWQ W
.WWW X
TryGetValueWWX c
(WWc d
keyWWd g
,WWg h
outWWi l
varWWm p
valueWWq v
)WWv w
?WWx y
valueWWz 
:
WWÄ Å
null
WWÇ Ü
;
WWÜ á
public\\ 
static\\ 
T\\ 
Get\\ 
<\\ 
T\\ 
>\\ 
(\\ 
object\\ %
key\\& )
)\\) *
=>\\+ -
Current\\. 5
==\\6 8
null\\9 =
?\\> ?
default\\@ G
:\\H I
Current\\J Q
.\\Q R
_items\\R X
.\\X Y
TryGetValue\\Y d
(\\d e
key\\e h
,\\h i
out\\j m
var\\n q
value\\r w
)\\w x
?\\y z
value	\\{ Ä
is
\\Å É
T
\\Ñ Ö
item
\\Ü ä
?
\\ã å
item
\\ç ë
:
\\í ì
default
\\î õ
:
\\ú ù
default
\\û •
;
\\• ¶
publicaa 
staticaa 
Taa 
GetOrCreateaa #
<aa# $
Taa$ %
>aa% &
(aa& '
objectaa' -
keyaa. 1
,aa1 2
Funcaa3 7
<aa7 8
Taa8 9
>aa9 :
factoryaa; B
)aaB C
{bb 	
ifcc 
(cc 
Currentcc 
==cc 
nullcc 
)cc  
{dd 
returnee 
factoryee 
(ee 
)ee  
;ee  !
}ff 
ifhh 
(hh 
!hh 
Currenthh 
.hh 
_itemshh 
.hh  
TryGetValuehh  +
(hh+ ,
keyhh, /
,hh/ 0
outhh1 4
varhh5 8
valuehh9 >
)hh> ?
||hh@ B
!hhC D
(hhD E
valuehhE J
ishhK M
ThhN O
itemhhP T
)hhT U
)hhU V
{ii 
Currentjj 
.jj 
_itemsjj 
[jj 
keyjj "
]jj" #
=jj$ %
itemjj& *
=jj+ ,
factoryjj- 4
(jj4 5
)jj5 6
;jj6 7
}kk 
returnmm 
itemmm 
;mm 
}nn 	
publicss 
staticss 
Tss 
GetOrCreatess #
<ss# $
Tss$ %
>ss% &
(ss& '
objectss' -
keyss. 1
)ss1 2
wheress3 8
Tss9 :
:ss; <
classss= B
,ssB C
newssD G
(ssG H
)ssH I
{tt 	
ifuu 
(uu 
Currentuu 
==uu 
nulluu 
)uu  
{vv 
returnww 
newww 
Tww 
(ww 
)ww 
;ww 
}xx 
ifzz 
(zz 
!zz 
Currentzz 
.zz 
_itemszz 
.zz  
TryGetValuezz  +
(zz+ ,
keyzz, /
,zz/ 0
outzz1 4
varzz5 8
valuezz9 >
)zz> ?
||zz@ B
!zzC D
(zzD E
valuezzE J
iszzK M
TzzN O
itemzzP T
)zzT U
)zzU V
{{{ 
Current|| 
.|| 
_items|| 
[|| 
key|| "
]||" #
=||$ %
item||& *
=||+ ,
new||- 0
T||1 2
(||2 3
)||3 4
;||4 5
}}} 
return 
item 
; 
}
ÄÄ 	
public
ÖÖ 
static
ÖÖ 
void
ÖÖ 

SetFeature
ÖÖ %
<
ÖÖ% &
T
ÖÖ& '
>
ÖÖ' (
(
ÖÖ( )
T
ÖÖ) *
value
ÖÖ+ 0
)
ÖÖ0 1
=>
ÖÖ2 4
Set
ÖÖ5 8
(
ÖÖ8 9
typeof
ÖÖ9 ?
(
ÖÖ? @
T
ÖÖ@ A
)
ÖÖA B
,
ÖÖB C
value
ÖÖD I
)
ÖÖI J
;
ÖÖJ K
public
ää 
static
ää 
T
ää 

GetFeature
ää "
<
ää" #
T
ää# $
>
ää$ %
(
ää% &
)
ää& '
=>
ää( *
Get
ää+ .
<
ää. /
T
ää/ 0
>
ää0 1
(
ää1 2
typeof
ää2 8
(
ää8 9
T
ää9 :
)
ää: ;
)
ää; <
;
ää< =
public
èè 
static
èè 
T
èè  
GetOrCreateFeature
èè *
<
èè* +
T
èè+ ,
>
èè, -
(
èè- .
Func
èè. 2
<
èè2 3
T
èè3 4
>
èè4 5
factory
èè6 =
)
èè= >
=>
èè? A
GetOrCreate
èèB M
(
èèM N
typeof
èèN T
(
èèT U
T
èèU V
)
èèV W
,
èèW X
factory
èèY `
)
èè` a
;
èèa b
public
îî 
static
îî 
T
îî  
GetOrCreateFeature
îî *
<
îî* +
T
îî+ ,
>
îî, -
(
îî- .
)
îî. /
where
îî0 5
T
îî6 7
:
îî8 9
class
îî: ?
,
îî? @
new
îîA D
(
îîD E
)
îîE F
=>
îîG I
GetOrCreate
îîJ U
<
îîU V
T
îîV W
>
îîW X
(
îîX Y
typeof
îîY _
(
îî_ `
T
îî` a
)
îîa b
)
îîb c
;
îîc d
public
ôô 
static
ôô 
Task
ôô 
<
ôô 

ShellScope
ôô %
>
ôô% &#
CreateChildScopeAsync
ôô' <
(
ôô< =
)
ôô= >
{
öö 	
var
õõ 
	shellHost
õõ 
=
õõ 
Services
õõ $
.
õõ$ % 
GetRequiredService
õõ% 7
<
õõ7 8

IShellHost
õõ8 B
>
õõB C
(
õõC D
)
õõD E
;
õõE F
return
úú 
	shellHost
úú 
.
úú 
GetScopeAsync
úú *
(
úú* +
Context
úú+ 2
.
úú2 3
Settings
úú3 ;
)
úú; <
;
úú< =
}
ùù 	
public
¢¢ 
static
¢¢ 
Task
¢¢ 
<
¢¢ 

ShellScope
¢¢ %
>
¢¢% &#
CreateChildScopeAsync
¢¢' <
(
¢¢< =
ShellSettings
¢¢= J
settings
¢¢K S
)
¢¢S T
{
££ 	
var
§§ 
	shellHost
§§ 
=
§§ 
Services
§§ $
.
§§$ % 
GetRequiredService
§§% 7
<
§§7 8

IShellHost
§§8 B
>
§§B C
(
§§C D
)
§§D E
;
§§E F
return
•• 
	shellHost
•• 
.
•• 
GetScopeAsync
•• *
(
••* +
settings
••+ 3
)
••3 4
;
••4 5
}
¶¶ 	
public
´´ 
static
´´ 
Task
´´ 
<
´´ 

ShellScope
´´ %
>
´´% &#
CreateChildScopeAsync
´´' <
(
´´< =
string
´´= C
tenant
´´D J
)
´´J K
{
¨¨ 	
var
≠≠ 
	shellHost
≠≠ 
=
≠≠ 
Services
≠≠ $
.
≠≠$ % 
GetRequiredService
≠≠% 7
<
≠≠7 8

IShellHost
≠≠8 B
>
≠≠B C
(
≠≠C D
)
≠≠D E
;
≠≠E F
return
ÆÆ 
	shellHost
ÆÆ 
.
ÆÆ 
GetScopeAsync
ÆÆ *
(
ÆÆ* +
tenant
ÆÆ+ 1
)
ÆÆ1 2
;
ÆÆ2 3
}
ØØ 	
public
¥¥ 
static
¥¥ 
async
¥¥ 
Task
¥¥  "
UsingChildScopeAsync
¥¥! 5
(
¥¥5 6
Func
¥¥6 :
<
¥¥: ;

ShellScope
¥¥; E
,
¥¥E F
Task
¥¥G K
>
¥¥K L
execute
¥¥M T
,
¥¥T U
bool
¥¥V Z
activateShell
¥¥[ h
=
¥¥i j
true
¥¥k o
)
¥¥o p
{
µµ 	
await
∂∂ 
(
∂∂ 
await
∂∂ #
CreateChildScopeAsync
∂∂ .
(
∂∂. /
)
∂∂/ 0
)
∂∂0 1
.
∂∂1 2

UsingAsync
∂∂2 <
(
∂∂< =
execute
∂∂= D
,
∂∂D E
activateShell
∂∂F S
)
∂∂S T
;
∂∂T U
}
∑∑ 	
public
ºº 
static
ºº 
async
ºº 
Task
ºº  "
UsingChildScopeAsync
ºº! 5
(
ºº5 6
ShellSettings
ºº6 C
settings
ººD L
,
ººL M
Func
ººN R
<
ººR S

ShellScope
ººS ]
,
ºº] ^
Task
ºº_ c
>
ººc d
execute
ººe l
,
ººl m
bool
ººn r
activateShellººs Ä
=ººÅ Ç
trueººÉ á
)ººá à
{
ΩΩ 	
await
ææ 
(
ææ 
await
ææ #
CreateChildScopeAsync
ææ .
(
ææ. /
settings
ææ/ 7
)
ææ7 8
)
ææ8 9
.
ææ9 :

UsingAsync
ææ: D
(
ææD E
execute
ææE L
,
ææL M
activateShell
ææN [
)
ææ[ \
;
ææ\ ]
}
øø 	
public
ƒƒ 
static
ƒƒ 
async
ƒƒ 
Task
ƒƒ  "
UsingChildScopeAsync
ƒƒ! 5
(
ƒƒ5 6
string
ƒƒ6 <
tenant
ƒƒ= C
,
ƒƒC D
Func
ƒƒE I
<
ƒƒI J

ShellScope
ƒƒJ T
,
ƒƒT U
Task
ƒƒV Z
>
ƒƒZ [
execute
ƒƒ\ c
,
ƒƒc d
bool
ƒƒe i
activateShell
ƒƒj w
=
ƒƒx y
true
ƒƒz ~
)
ƒƒ~ 
{
≈≈ 	
await
∆∆ 
(
∆∆ 
await
∆∆ #
CreateChildScopeAsync
∆∆ .
(
∆∆. /
tenant
∆∆/ 5
)
∆∆5 6
)
∆∆6 7
.
∆∆7 8

UsingAsync
∆∆8 B
(
∆∆B C
execute
∆∆C J
,
∆∆J K
activateShell
∆∆L Y
)
∆∆Y Z
;
∆∆Z [
}
«« 	
public
ÃÃ 
void
ÃÃ 
StartAsyncFlow
ÃÃ "
(
ÃÃ" #
)
ÃÃ# $
=>
œœ 
_current
œœ 
.
œœ 
Value
œœ 
=
œœ 
new
œœ  #
ShellScopeHolder
œœ$ 4
{
œœ5 6
Scope
œœ7 <
=
œœ= >
this
œœ? C
}
œœD E
;
œœE F
public
÷÷ 
Task
÷÷ $
UsingServiceScopeAsync
÷÷ *
(
÷÷* +
Func
÷÷+ /
<
÷÷/ 0

ShellScope
÷÷0 :
,
÷÷: ;
Task
÷÷< @
>
÷÷@ A
execute
÷÷B I
)
÷÷I J
{
◊◊ 	
_serviceScopeOnly
ÿÿ 
=
ÿÿ 
true
ÿÿ  $
;
ÿÿ$ %
return
ŸŸ 

UsingAsync
ŸŸ 
(
ŸŸ 
execute
ŸŸ %
)
ŸŸ% &
;
ŸŸ& '
}
⁄⁄ 	
public
‡‡ 
async
‡‡ 
Task
‡‡ 

UsingAsync
‡‡ $
(
‡‡$ %
Func
‡‡% )
<
‡‡) *

ShellScope
‡‡* 4
,
‡‡4 5
Task
‡‡6 :
>
‡‡: ;
execute
‡‡< C
,
‡‡C D
bool
‡‡E I
activateShell
‡‡J W
=
‡‡X Y
true
‡‡Z ^
)
‡‡^ _
{
·· 	
if
‚‚ 
(
‚‚ 
Current
‚‚ 
==
‚‚ 
this
‚‚ 
)
‚‚  
{
„„ 
await
‰‰ 
execute
‰‰ 
(
‰‰ 
Current
‰‰ %
)
‰‰% &
;
‰‰& '
return
ÂÂ 
;
ÂÂ 
}
ÊÊ 
using
ËË 
(
ËË 
this
ËË 
)
ËË 
{
ÈÈ 
StartAsyncFlow
ÍÍ 
(
ÍÍ 
)
ÍÍ  
;
ÍÍ  !
try
ÎÎ 
{
ÏÏ 
try
ÌÌ 
{
ÓÓ 
if
ÔÔ 
(
ÔÔ 
activateShell
ÔÔ )
)
ÔÔ) *
{
 
await
ÒÒ !(
ActivateShellInternalAsync
ÒÒ" <
(
ÒÒ< =
)
ÒÒ= >
;
ÒÒ> ?
}
ÚÚ 
await
ÙÙ 
execute
ÙÙ %
(
ÙÙ% &
this
ÙÙ& *
)
ÙÙ* +
;
ÙÙ+ ,
}
ıı 
finally
ˆˆ 
{
˜˜ 
await
¯¯ )
TerminateShellInternalAsync
¯¯ 9
(
¯¯9 :
)
¯¯: ;
;
¯¯; <
}
˘˘ 
}
˙˙ 
catch
˚˚ 
(
˚˚ 
	Exception
˚˚  
e
˚˚! "
)
˚˚" #
{
¸¸ 
await
˝˝ "
HandleExceptionAsync
˝˝ .
(
˝˝. /
e
˝˝/ 0
)
˝˝0 1
;
˝˝1 2
throw
˛˛ 
;
˛˛ 
}
ˇˇ 
finally
ÄÄ 
{
ÅÅ 
await
ÇÇ  
BeforeDisposeAsync
ÇÇ ,
(
ÇÇ, -
)
ÇÇ- .
;
ÇÇ. /
}
ÉÉ 
}
ÑÑ 
}
ÖÖ 	
internal
ää 
async
ää 
Task
ää !
TerminateShellAsync
ää /
(
ää/ 0
)
ää0 1
{
ãã 	
using
åå 
(
åå 
this
åå 
)
åå 
{
çç 
StartAsyncFlow
éé 
(
éé 
)
éé  
;
éé  !
await
èè )
TerminateShellInternalAsync
èè 1
(
èè1 2
)
èè2 3
;
èè3 4
await
êê  
BeforeDisposeAsync
êê (
(
êê( )
)
êê) *
;
êê* +
}
ëë 
}
íí 	
internal
óó 
async
óó 
Task
óó (
ActivateShellInternalAsync
óó 6
(
óó6 7
)
óó7 8
{
òò 	
if
ôô 
(
ôô 
ShellContext
ôô 
.
ôô 
IsActivated
ôô (
)
ôô( )
{
öö 
return
õõ 
;
õõ 
}
úú 
if
ûû 
(
ûû 
_serviceScopeOnly
ûû !
)
ûû! "
{
üü 
return
†† 
;
†† 
}
°° 
(
§§ 
var
§§ 
locker
§§ 
,
§§ 
var
§§ 
locked
§§ #
)
§§# $
=
§§% &
await
§§' ,
ShellContext
§§- 9
.
§§9 :.
 TryAcquireShellActivateLockAsync
§§: Z
(
§§Z [
)
§§[ \
;
§§\ ]
if
•• 
(
•• 
!
•• 
locked
•• 
)
•• 
{
¶¶ 
throw
ßß 
new
ßß 
TimeoutException
ßß *
(
ßß* +
$"
ßß+ -
$str
ßß- d
{
ßßd e
ShellContext
ßße q
.
ßßq r
Settings
ßßr z
.
ßßz {
Name
ßß{ 
}ßß Ä
"ßßÄ Å
)ßßÅ Ç
;ßßÇ É
}
®® 
await
™™ 
using
™™ 
var
™™ 
acquiredLock
™™ (
=
™™) *
locker
™™+ 1
;
™™1 2
if
≠≠ 
(
≠≠ 
!
≠≠ 
ShellContext
≠≠ 
.
≠≠ 
IsActivated
≠≠ )
)
≠≠) *
{
ÆÆ 
await
ØØ 
new
ØØ 

ShellScope
ØØ $
(
ØØ$ %
ShellContext
ØØ% 1
)
ØØ1 2
.
ØØ2 3

UsingAsync
ØØ3 =
(
ØØ= >
async
ØØ> C
scope
ØØD I
=>
ØØJ L
{
∞∞ 
var
±± 
tenantEvents
±± $
=
±±% &
scope
±±' ,
.
±±, -
ServiceProvider
±±- <
.
±±< =
GetServices
±±= H
<
±±H I"
IModularTenantEvents
±±I ]
>
±±] ^
(
±±^ _
)
±±_ `
;
±±` a
foreach
≤≤ 
(
≤≤ 
var
≤≤  
tenantEvent
≤≤! ,
in
≤≤- /
tenantEvents
≤≤0 <
)
≤≤< =
{
≥≥ 
await
¥¥ 
tenantEvent
¥¥ )
.
¥¥) *
ActivatingAsync
¥¥* 9
(
¥¥9 :
)
¥¥: ;
;
¥¥; <
}
µµ 
foreach
∑∑ 
(
∑∑ 
var
∑∑  
tenantEvent
∑∑! ,
in
∑∑- /
tenantEvents
∑∑0 <
.
∑∑< =
Reverse
∑∑= D
(
∑∑D E
)
∑∑E F
)
∑∑F G
{
∏∏ 
await
ππ 
tenantEvent
ππ )
.
ππ) *
ActivatedAsync
ππ* 8
(
ππ8 9
)
ππ9 :
;
ππ: ;
}
∫∫ 
}
ªª 
,
ªª 
activateShell
ªª  
:
ªª  !
false
ªª" '
)
ªª' (
;
ªª( )
ShellContext
ΩΩ 
.
ΩΩ 
IsActivated
ΩΩ (
=
ΩΩ) *
true
ΩΩ+ /
;
ΩΩ/ 0
}
ææ 
}
øø 	
internal
ƒƒ 
void
ƒƒ 
BeforeDispose
ƒƒ #
(
ƒƒ# $
Func
ƒƒ$ (
<
ƒƒ( )

ShellScope
ƒƒ) 3
,
ƒƒ3 4
Task
ƒƒ5 9
>
ƒƒ9 :
callback
ƒƒ; C
)
ƒƒC D
=>
ƒƒE G
_beforeDispose
ƒƒH V
.
ƒƒV W
Insert
ƒƒW ]
(
ƒƒ] ^
$num
ƒƒ^ _
,
ƒƒ_ `
callback
ƒƒa i
)
ƒƒi j
;
ƒƒj k
internal
…… 
void
…… 
DeferredSignal
…… $
(
……$ %
string
……% +
key
……, /
)
……/ 0
=>
……1 3
_deferredSignals
……4 D
.
……D E
Add
……E H
(
……H I
key
……I L
)
……L M
;
……M N
internal
ŒŒ 
void
ŒŒ 
DeferredTask
ŒŒ "
(
ŒŒ" #
Func
ŒŒ# '
<
ŒŒ' (

ShellScope
ŒŒ( 2
,
ŒŒ2 3
Task
ŒŒ4 8
>
ŒŒ8 9
task
ŒŒ: >
)
ŒŒ> ?
=>
ŒŒ@ B
_deferredTasks
ŒŒC Q
.
ŒŒQ R
Add
ŒŒR U
(
ŒŒU V
task
ŒŒV Z
)
ŒŒZ [
;
ŒŒ[ \
internal
”” 
void
”” 
ExceptionHandler
”” &
(
””& '
Func
””' +
<
””+ ,

ShellScope
””, 6
,
””6 7
	Exception
””8 A
,
””A B
Task
””C G
>
””G H
callback
””I Q
)
””Q R
=>
””S U 
_exceptionHandlers
””V h
.
””h i
Add
””i l
(
””l m
callback
””m u
)
””u v
;
””v w
public
ÿÿ 
static
ÿÿ 
void
ÿÿ #
RegisterBeforeDispose
ÿÿ 0
(
ÿÿ0 1
Func
ÿÿ1 5
<
ÿÿ5 6

ShellScope
ÿÿ6 @
,
ÿÿ@ A
Task
ÿÿB F
>
ÿÿF G
callback
ÿÿH P
)
ÿÿP Q
=>
ÿÿR T
Current
ÿÿU \
?
ÿÿ\ ]
.
ÿÿ] ^
BeforeDispose
ÿÿ^ k
(
ÿÿk l
callback
ÿÿl t
)
ÿÿt u
;
ÿÿu v
public
›› 
static
›› 
void
›› 
AddDeferredSignal
›› ,
(
››, -
string
››- 3
key
››4 7
)
››7 8
=>
››9 ;
Current
››< C
?
››C D
.
››D E
DeferredSignal
››E S
(
››S T
key
››T W
)
››W X
;
››X Y
public
‚‚ 
static
‚‚ 
void
‚‚ 
AddDeferredTask
‚‚ *
(
‚‚* +
Func
‚‚+ /
<
‚‚/ 0

ShellScope
‚‚0 :
,
‚‚: ;
Task
‚‚< @
>
‚‚@ A
task
‚‚B F
)
‚‚F G
=>
‚‚H J
Current
‚‚K R
?
‚‚R S
.
‚‚S T
DeferredTask
‚‚T `
(
‚‚` a
task
‚‚a e
)
‚‚e f
;
‚‚f g
public
ÁÁ 
static
ÁÁ 
void
ÁÁ !
AddExceptionHandler
ÁÁ .
(
ÁÁ. /
Func
ÁÁ/ 3
<
ÁÁ3 4

ShellScope
ÁÁ4 >
,
ÁÁ> ?
	Exception
ÁÁ@ I
,
ÁÁI J
Task
ÁÁK O
>
ÁÁO P
handler
ÁÁQ X
)
ÁÁX Y
=>
ÁÁZ \
Current
ÁÁ] d
?
ÁÁd e
.
ÁÁe f
ExceptionHandler
ÁÁf v
(
ÁÁv w
handler
ÁÁw ~
)
ÁÁ~ 
;ÁÁ Ä
public
ÈÈ 
async
ÈÈ 
Task
ÈÈ "
HandleExceptionAsync
ÈÈ .
(
ÈÈ. /
	Exception
ÈÈ/ 8
e
ÈÈ9 :
)
ÈÈ: ;
{
ÍÍ 	
foreach
ÎÎ 
(
ÎÎ 
var
ÎÎ 
callback
ÎÎ !
in
ÎÎ" $ 
_exceptionHandlers
ÎÎ% 7
)
ÎÎ7 8
{
ÏÏ 
await
ÌÌ 
callback
ÌÌ 
(
ÌÌ 
this
ÌÌ #
,
ÌÌ# $
e
ÌÌ% &
)
ÌÌ& '
;
ÌÌ' (
}
ÓÓ 
}
ÔÔ 	
internal
ÒÒ 
async
ÒÒ 
Task
ÒÒ  
BeforeDisposeAsync
ÒÒ .
(
ÒÒ. /
)
ÒÒ/ 0
{
ÚÚ 	
foreach
ÛÛ 
(
ÛÛ 
var
ÛÛ 
callback
ÛÛ !
in
ÛÛ" $
_beforeDispose
ÛÛ% 3
)
ÛÛ3 4
{
ÙÙ 
await
ıı 
callback
ıı 
(
ıı 
this
ıı #
)
ıı# $
;
ıı$ %
}
ˆˆ 
if
¯¯ 
(
¯¯ 
_serviceScopeOnly
¯¯ !
)
¯¯! "
{
˘˘ 
return
˙˙ 
;
˙˙ 
}
˚˚ 
if
˝˝ 
(
˝˝ 
_deferredSignals
˝˝  
.
˝˝  !
Any
˝˝! $
(
˝˝$ %
)
˝˝% &
)
˝˝& '
{
˛˛ 
var
ˇˇ 
signal
ˇˇ 
=
ˇˇ 
ShellContext
ˇˇ )
.
ˇˇ) *
ServiceProvider
ˇˇ* 9
.
ˇˇ9 : 
GetRequiredService
ˇˇ: L
<
ˇˇL M
ISignal
ˇˇM T
>
ˇˇT U
(
ˇˇU V
)
ˇˇV W
;
ˇˇW X
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
key
ÄÄ  
in
ÄÄ! #
_deferredSignals
ÄÄ$ 4
)
ÄÄ4 5
{
ÅÅ 
await
ÇÇ 
signal
ÇÇ  
.
ÇÇ  !
SignalTokenAsync
ÇÇ! 1
(
ÇÇ1 2
key
ÇÇ2 5
)
ÇÇ5 6
;
ÇÇ6 7
}
ÉÉ 
}
ÑÑ 
if
ÜÜ 
(
ÜÜ 
_deferredTasks
ÜÜ 
.
ÜÜ 
Any
ÜÜ "
(
ÜÜ" #
)
ÜÜ# $
)
ÜÜ$ %
{
áá 
var
àà 
	shellHost
àà 
=
àà 
ShellContext
àà  ,
.
àà, -
ServiceProvider
àà- <
.
àà< = 
GetRequiredService
àà= O
<
ààO P

IShellHost
ààP Z
>
ààZ [
(
àà[ \
)
àà\ ]
;
àà] ^
foreach
ää 
(
ää 
var
ää 
task
ää !
in
ää" $
_deferredTasks
ää% 3
)
ää3 4
{
ãã 

ShellScope
çç 
scope
çç $
;
çç$ %
try
éé 
{
èè 
scope
ëë 
=
ëë 
await
ëë  %
	shellHost
ëë& /
.
ëë/ 0
GetScopeAsync
ëë0 =
(
ëë= >
ShellContext
ëë> J
.
ëëJ K
Settings
ëëK S
)
ëëS T
;
ëëT U
}
íí 
catch
ìì 
{
îî 
scope
ññ 
=
ññ 
new
ññ  #

ShellScope
ññ$ .
(
ññ. /
ShellContext
ññ/ ;
)
ññ; <
;
ññ< =
}
óó 
await
õõ 
scope
õõ 
.
õõ  

UsingAsync
õõ  *
(
õõ* +
async
õõ+ 0
scope
õõ1 6
=>
õõ7 9
{
úú 
var
ùù 
logger
ùù "
=
ùù# $
scope
ùù% *
.
ùù* +
ServiceProvider
ùù+ :
.
ùù: ;

GetService
ùù; E
<
ùùE F
ILogger
ùùF M
<
ùùM N

ShellScope
ùùN X
>
ùùX Y
>
ùùY Z
(
ùùZ [
)
ùù[ \
;
ùù\ ]
try
üü 
{
†† 
await
°° !
task
°°" &
(
°°& '
scope
°°' ,
)
°°, -
;
°°- .
}
¢¢ 
catch
££ 
(
££ 
	Exception
££ (
e
££) *
)
££* +
{
§§ 
logger
•• "
?
••" #
.
••# $
LogError
••$ ,
(
••, -
e
••- .
,
••. /
$str
¶¶  m
,
¶¶m n
task
ßß  $
.
ßß$ %
GetType
ßß% ,
(
ßß, -
)
ßß- .
.
ßß. /
FullName
ßß/ 7
,
ßß7 8
ShellContext
ßß9 E
.
ßßE F
Settings
ßßF N
.
ßßN O
Name
ßßO S
)
ßßS T
;
ßßT U
await
©© !
scope
©©" '
.
©©' ("
HandleExceptionAsync
©©( <
(
©©< =
e
©©= >
)
©©> ?
;
©©? @
}
™™ 
}
´´ 
,
´´ 
activateShell
¨¨ !
:
¨¨! "
false
¨¨# (
)
¨¨( )
;
¨¨) *
}
≠≠ 
}
ÆÆ 
}
ØØ 	
internal
µµ 
async
µµ 
Task
µµ )
TerminateShellInternalAsync
µµ 7
(
µµ7 8
)
µµ8 9
{
∂∂ 	
if
∑∑ 
(
∑∑ 
_serviceScopeOnly
∑∑ !
)
∑∑! "
{
∏∏ 
return
ππ 
;
ππ 
}
∫∫ 
_terminated
ºº 
=
ºº 
true
ºº 
;
ºº 
if
¬¬ 
(
¬¬ 
Interlocked
¬¬ 
.
¬¬ 
	Decrement
¬¬ %
(
¬¬% &
ref
¬¬& )
ShellContext
¬¬* 6
.
¬¬6 7
	_refCount
¬¬7 @
)
¬¬@ A
==
¬¬B D
$num
¬¬E F
)
¬¬F G
{
√√ 
if
≈≈ 
(
≈≈ 
ShellContext
≈≈  
.
≈≈  !
Settings
≈≈! )
.
≈≈) *
State
≈≈* /
==
≈≈0 2
TenantState
≈≈3 >
.
≈≈> ?
Disabled
≈≈? G
)
≈≈G H
{
∆∆ 
ShellContext
««  
.
««  !"
ReleaseFromLastScope
««! 5
(
««5 6
)
««6 7
;
««7 8
}
»» 
if
   
(
   
!
   
ShellContext
   !
.
  ! "
	_released
  " +
)
  + ,
{
ÀÀ 
return
ÃÃ 
;
ÃÃ 
}
ÕÕ 
if
–– 
(
–– 
Interlocked
–– 
.
––  
CompareExchange
––  /
(
––/ 0
ref
––0 3
ShellContext
––4 @
.
––@ A
	_refCount
––A J
,
––J K
$num
––L M
,
––M N
$num
––O P
)
––P Q
!=
––R T
$num
––U V
)
––V W
{
—— 
return
““ 
;
““ 
}
”” 
if
÷÷ 
(
÷÷ 
Interlocked
÷÷ 
.
÷÷  
Exchange
÷÷  (
(
÷÷( )
ref
÷÷) ,
ShellContext
÷÷- 9
.
÷÷9 :
_terminated
÷÷: E
,
÷÷E F
$num
÷÷G H
)
÷÷H I
==
÷÷J L
$num
÷÷M N
)
÷÷N O
{
◊◊ 
return
ÿÿ 
;
ÿÿ 
}
ŸŸ 
_shellTerminated
€€  
=
€€! "
true
€€# '
;
€€' (
var
›› 
tenantEvents
››  
=
››! "
_serviceScope
››# 0
.
››0 1
ServiceProvider
››1 @
.
››@ A
GetServices
››A L
<
››L M"
IModularTenantEvents
››M a
>
››a b
(
››b c
)
››c d
;
››d e
foreach
ﬁﬁ 
(
ﬁﬁ 
var
ﬁﬁ 
tenantEvent
ﬁﬁ (
in
ﬁﬁ) +
tenantEvents
ﬁﬁ, 8
)
ﬁﬁ8 9
{
ﬂﬂ 
await
‡‡ 
tenantEvent
‡‡ %
.
‡‡% &
TerminatingAsync
‡‡& 6
(
‡‡6 7
)
‡‡7 8
;
‡‡8 9
}
·· 
foreach
„„ 
(
„„ 
var
„„ 
tenantEvent
„„ (
in
„„) +
tenantEvents
„„, 8
.
„„8 9
Reverse
„„9 @
(
„„@ A
)
„„A B
)
„„B C
{
‰‰ 
await
ÂÂ 
tenantEvent
ÂÂ %
.
ÂÂ% &
TerminatedAsync
ÂÂ& 5
(
ÂÂ5 6
)
ÂÂ6 7
;
ÂÂ7 8
}
ÊÊ 
}
ÁÁ 
}
ËË 	
public
ÍÍ 
void
ÍÍ 
Dispose
ÍÍ 
(
ÍÍ 
)
ÍÍ 
{
ÎÎ 	
if
ÏÏ 
(
ÏÏ 
	_disposed
ÏÏ 
)
ÏÏ 
{
ÌÌ 
return
ÓÓ 
;
ÓÓ 
}
ÔÔ 
	_disposed
ÒÒ 
=
ÒÒ 
true
ÒÒ 
;
ÒÒ 
_serviceScope
ÚÚ 
.
ÚÚ 
Dispose
ÚÚ !
(
ÚÚ! "
)
ÚÚ" #
;
ÚÚ# $
if
ıı 
(
ıı 
_shellTerminated
ıı  
)
ıı  !
{
ˆˆ 
ShellContext
˜˜ 
.
˜˜ 
Dispose
˜˜ $
(
˜˜$ %
)
˜˜% &
;
˜˜& '
}
¯¯ 
if
˙˙ 
(
˙˙ 
!
˙˙ 
_terminated
˙˙ 
)
˙˙ 
{
˚˚ 
Interlocked
˝˝ 
.
˝˝ 
	Decrement
˝˝ %
(
˝˝% &
ref
˝˝& )
ShellContext
˝˝* 6
.
˝˝6 7
	_refCount
˝˝7 @
)
˝˝@ A
;
˝˝A B
}
˛˛ 
var
ÄÄ 
holder
ÄÄ 
=
ÄÄ 
_current
ÄÄ !
.
ÄÄ! "
Value
ÄÄ" '
;
ÄÄ' (
if
ÅÅ 
(
ÅÅ 
holder
ÅÅ 
!=
ÅÅ 
null
ÅÅ 
)
ÅÅ 
{
ÇÇ 
holder
ÑÑ 
.
ÑÑ 
Scope
ÑÑ 
=
ÑÑ 
null
ÑÑ #
;
ÑÑ# $
}
ÖÖ 
}
ÜÜ 	
private
àà 
class
àà 
ShellScopeHolder
àà &
{
ââ 	
public
ää 

ShellScope
ää 
Scope
ää #
;
ää# $
}
ãã 	
}
åå 
}çç Ú&
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Scope\ShellScopeExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Scope( -
{ 
public 

static 
class  
ShellScopeExtensions ,
{ 
public 
static 

ShellScope  !
RegisterBeforeDispose! 6
(6 7
this7 ;

ShellScope< F
scopeG L
,L M
FuncN R
<R S

ShellScopeS ]
,] ^
Task_ c
>c d
callbacke m
)m n
{ 	
scope 
? 
. 
BeforeDispose  
(  !
callback! )
)) *
;* +
return 
scope 
; 
} 	
public 
static 

ShellScope  !
RegisterBeforeDispose! 6
(6 7
this7 ;

ShellScope< F
scopeG L
,L M
ActionN T
<T U

ShellScopeU _
>_ `
callbacka i
)i j
{ 	
scope 
? 
. 
BeforeDispose  
(  !
scope! &
=>' )
{ 
callback 
( 
scope 
) 
;  
return 
Task 
. 
CompletedTask )
;) *
} 
) 
; 
return 
scope 
; 
} 	
public"" 
static"" 

ShellScope""  
AddDeferredSignal""! 2
(""2 3
this""3 7

ShellScope""8 B
scope""C H
,""H I
string""J P
key""Q T
)""T U
{## 	
scope$$ 
?$$ 
.$$ 
DeferredSignal$$ !
($$! "
key$$" %
)$$% &
;$$& '
return%% 
scope%% 
;%% 
}&& 	
public++ 
static++ 

ShellScope++  
AddDeferredTask++! 0
(++0 1
this++1 5

ShellScope++6 @
scope++A F
,++F G
Func++H L
<++L M

ShellScope++M W
,++W X
Task++Y ]
>++] ^
task++_ c
)++c d
{,, 	
scope-- 
?-- 
.-- 
DeferredTask-- 
(--  
task--  $
)--$ %
;--% &
return.. 
scope.. 
;.. 
}// 	
public44 
static44 

ShellScope44  
AddDeferredTask44! 0
(440 1
this441 5

ShellScope446 @
scope44A F
,44F G
Action44H N
<44N O

ShellScope44O Y
>44Y Z
callback44[ c
)44c d
{55 	
scope66 
?66 
.66 
DeferredTask66 
(66  
scope66  %
=>66& (
{77 
callback88 
(88 
scope88 
)88 
;88  
return99 
Task99 
.99 
CompletedTask99 )
;99) *
}:: 
):: 
;:: 
return<< 
scope<< 
;<< 
}== 	
publicBB 
staticBB 

ShellScopeBB  
AddExceptionHandlerBB! 4
(BB4 5
thisBB5 9

ShellScopeBB: D
scopeBBE J
,BBJ K
FuncBBL P
<BBP Q

ShellScopeBBQ [
,BB[ \
	ExceptionBB] f
,BBf g
TaskBBh l
>BBl m
handlerBBn u
)BBu v
{CC 	
scopeDD 
?DD 
.DD 
ExceptionHandlerDD #
(DD# $
handlerDD$ +
)DD+ ,
;DD, -
returnEE 
scopeEE 
;EE 
}FF 	
publicKK 
staticKK 

ShellScopeKK  
AddExceptionHandlerKK! 4
(KK4 5
thisKK5 9

ShellScopeKK: D
scopeKKE J
,KKJ K
ActionKKL R
<KKR S

ShellScopeKKS ]
,KK] ^
	ExceptionKK_ h
>KKh i
handlerKKj q
)KKq r
{LL 	
scopeMM 
?MM 
.MM 
ExceptionHandlerMM #
(MM# $
(MM$ %
scopeMM% *
,MM* +
eMM, -
)MM- .
=>MM/ 1
{NN 
handlerOO 
(OO 
scopeOO 
,OO 
eOO  
)OO  !
;OO! "
returnPP 
TaskPP 
.PP 
CompletedTaskPP )
;PP) *
}QQ 
)QQ 
;QQ 
returnSS 
scopeSS 
;SS 
}TT 	
}UU 
}VV ñ

ÜC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\Scope\ShellScopeServices.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Scope( -
{ 
public 

class 
ShellScopeServices #
:$ %
IServiceProvider& 6
{ 
private 
readonly 
IServiceProvider )
	_services* 3
;3 4
public 
ShellScopeServices !
(! "
IServiceProvider" 2
services3 ;
); <
=>= ?
	_services@ I
=J K
servicesL T
;T U
private 
IServiceProvider  
Services! )
=>* ,

ShellScope- 7
.7 8
Services8 @
??A C
	_servicesD M
;M N
public 
object 

GetService  
(  !
Type! %
serviceType& 1
)1 2
=>3 5
Services6 >
?> ?
.? @

GetService@ J
(J K
serviceTypeK V
)V W
;W X
} 
} Ó
ÅC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\ShellContextFeature.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public		 

class		 
ShellContextFeature		 $
{

 
public 
ShellContext 
ShellContext (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

PathString 
OriginalPathBase *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 

PathString 
OriginalPath &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ü
ÜC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\ShellHostReloadException.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class $
ShellHostReloadException )
:* +
	Exception, 5
{		 
public $
ShellHostReloadException '
(' (
string( .
message/ 6
)6 7
:8 9
base: >
(> ?
message? F
)F G
{ 	
} 	
} 
} ¡
zC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\ShellOptions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class 
ShellOptions 
{ 
public 
string %
ShellsApplicationDataPath /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
string 
ShellsContainerName )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} È0
{C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\ShellSettings.cs
	namespace		 	
OrchardCore		
 
.		 
Environment		 !
.		! "
Shell		" '
{

 
public 

class 
ShellSettings 
{ 
private 
static 
readonly 
char  $
[$ %
]% &
_hostSeparators' 6
=7 8
new9 <
[< =
]= >
{? @
$charA D
,D E
$charF I
}J K
;K L
private 
readonly 
ShellConfiguration +
	_settings, 5
;5 6
private 
readonly 
ShellConfiguration +
_configuration, :
;: ;
public 
ShellSettings 
( 
) 
{ 	
	_settings 
= 
new 
ShellConfiguration .
(. /
)/ 0
;0 1
_configuration 
= 
new  
ShellConfiguration! 3
(3 4
)4 5
;5 6
} 	
public 
ShellSettings 
( 
ShellConfiguration /
settings0 8
,8 9
ShellConfiguration: L
configurationM Z
)Z [
{ 	
	_settings 
= 
settings  
;  !
_configuration   
=   
configuration   *
;  * +
}!! 	
public## 
ShellSettings## 
(## 
ShellSettings## *
settings##+ 3
)##3 4
{$$ 	
	_settings%% 
=%% 
new%% 
ShellConfiguration%% .
(%%. /
settings%%/ 7
.%%7 8
	_settings%%8 A
)%%A B
;%%B C
_configuration&& 
=&& 
new&&  
ShellConfiguration&&! 3
(&&3 4
settings&&4 <
.&&< =
Name&&= A
,&&A B
settings&&C K
.&&K L
_configuration&&L Z
)&&Z [
;&&[ \
Name'' 
='' 
settings'' 
.'' 
Name''  
;''  !
}(( 	
public** 
string** 
Name** 
{** 
get**  
;**  !
set**" %
;**% &
}**' (
public,, 
string,, 
	VersionId,, 
{-- 	
get.. 
=>.. 
	_settings.. 
[.. 
$str.. (
]..( )
;..) *
set// 
=>// 
	_settings// 
[// 
$str// (
]//( )
=//* +
value//, 1
;//1 2
}00 	
public22 
string22 
RequestUrlHost22 $
{33 	
get44 
=>44 
	_settings44 
[44 
$str44 -
]44- .
;44. /
set55 
=>55 
	_settings55 
[55 
$str55 -
]55- .
=55/ 0
value551 6
;556 7
}66 	
[88 	

JsonIgnore88	 
]88 
public99 
string99 
[99 
]99 
RequestUrlHosts99 '
=>99( *
	_settings99+ 4
[994 5
$str995 E
]99E F
?:: 
.:: 
Split:: 
(:: 
_hostSeparators:: #
,::# $
StringSplitOptions::% 7
.::7 8
RemoveEmptyEntries::8 J
)::J K
??;; 
Array;; 
.;; 
Empty;; 
<;; 
string;; !
>;;! "
(;;" #
);;# $
;;;$ %
public== 
string== 
RequestUrlPrefix== &
{>> 	
get?? 
=>?? 
	_settings?? 
[?? 
$str?? /
]??/ 0
???0 1
.??1 2
Trim??2 6
(??6 7
$char??7 :
,??: ;
$char??< ?
)??? @
;??@ A
set@@ 
=>@@ 
	_settings@@ 
[@@ 
$str@@ /
]@@/ 0
=@@1 2
value@@3 8
;@@8 9
}AA 	
[CC 	
JsonConverterCC	 
(CC 
typeofCC 
(CC 
StringEnumConverterCC 1
)CC1 2
)CC2 3
]CC3 4
publicDD 
TenantStateDD 
StateDD  
{EE 	
getFF 
=>FF 
	_settingsFF 
.FF 
GetValueFF %
<FF% &
TenantStateFF& 1
>FF1 2
(FF2 3
$strFF3 :
)FF: ;
;FF; <
setGG 
=>GG 
	_settingsGG 
[GG 
$strGG $
]GG$ %
=GG& '
valueGG( -
.GG- .
ToStringGG. 6
(GG6 7
)GG7 8
;GG8 9
}HH 	
[JJ 	

JsonIgnoreJJ	 
]JJ 
publicKK 
IShellConfigurationKK "
ShellConfigurationKK# 5
=>KK6 8
_configurationKK9 G
;KKG H
[MM 	

JsonIgnoreMM	 
]MM 
publicNN 
stringNN 
thisNN 
[NN 
stringNN !
keyNN" %
]NN% &
{OO 	
getPP 
=>PP 
_configurationPP !
[PP! "
keyPP" %
]PP% &
;PP& '
setQQ 
=>QQ 
_configurationQQ !
[QQ! "
keyQQ" %
]QQ% &
=QQ' (
valueQQ) .
;QQ. /
}RR 	
publicTT 
TaskTT $
EnsureConfigurationAsyncTT ,
(TT, -
)TT- .
=>TT/ 1
_configurationTT2 @
.TT@ A$
EnsureConfigurationAsyncTTA Y
(TTY Z
)TTZ [
;TT[ \
publicVV 
boolVV 
IsDefaultShellVV "
(VV" #
)VV# $
=>VV% '
NameVV( ,
==VV- /
ShellHelperVV0 ;
.VV; <
DefaultShellNameVV< L
;VVL M
}WW 
}XX ”
ÖC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\State\ShellFeatureState.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
State( -
{ 
public		 

class		 
ShellFeatureState		 "
{

 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
State 
InstallState !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
State 
EnableState  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

JsonIgnore	 
] 
public 
bool 
IsInstalled 
{  !
get" %
{& '
return( .
InstallState/ ;
==< >
State? D
.D E
UpE G
;G H
}I J
}K L
[ 	

JsonIgnore	 
] 
public 
bool 
	IsEnabled 
{ 
get  #
{$ %
return& ,
EnableState- 8
==9 ;
State< A
.A B
UpB D
;D E
}F G
}H I
[ 	

JsonIgnore	 
] 
public 
bool 

IsDisabled 
{  
get! $
{% &
return' -
EnableState. 9
==: <
State= B
.B C
DownC G
||H J
EnableStateK V
==W Y
StateZ _
._ `
	Undefined` i
;i j
}k l
}m n
[ 	
JsonConverter	 
( 
typeof 
( 
StringEnumConverter 1
)1 2
)2 3
]3 4
public 
enum 
State 
{ 	
	Undefined 
, 
Rising 
, 
Up 
, 
Falling 
, 
Down 
, 
}   	
}!! 
}"" ‰
~C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\Shell\State\ShellState.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
State( -
{ 
public

 

class

 

ShellState

 
{ 
public 
List 
< 
ShellFeatureState %
>% &
Features' /
{0 1
get2 5
;5 6
}7 8
=9 :
new; >
List? C
<C D
ShellFeatureStateD U
>U V
(V W
)W X
;X Y
} 
} Ô	
{C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Abstractions\StringUriExtensions.cs
	namespace 	
System
 
{ 
public 

static 
class 
StringUriExtensions +
{ 
public 
static 
string 
ToUriComponents ,
(, -
this- 1
string2 8
url9 <
)< =
{ 	
if 
( 
String 
. 
IsNullOrEmpty $
($ %
url% (
)( )
)) *
{ 
return		 
url		 
;		 
}

 
var 
uri 
= 
new 
Uri 
( 
url !
,! "
UriKind# *
.* +
RelativeOrAbsolute+ =
)= >
;> ?
return 
uri 
. 
GetComponents $
($ %
UriComponents% 2
.2 3#
SerializationInfoString3 J
,J K
	UriFormatL U
.U V

UriEscapedV `
)` a
;a b
} 	
} 
} 