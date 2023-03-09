°
}C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Logging.NLog\HostBuilderExtensions.cs
	namespace 	
OrchardCore
 
. 
Logging 
; 
public		 
static		 
class		 !
HostBuilderExtensions		 )
{

 
public 

static 
IHostBuilder 
UseNLogHost *
(* +
this+ /
IHostBuilder0 <
builder= D
)D E
{ 
LayoutRenderer 
. 
Register 
<   
TenantLayoutRenderer  4
>4 5
(5 6 
TenantLayoutRenderer6 J
.J K
LayoutRendererNameK ]
)] ^
;^ _
builder 
. 
UseNLog 
( 
) 
; 
builder 
. %
ConfigureAppConfiguration )
() *
(* +
context+ 2
,2 3
_4 5
)5 6
=>7 9
{ 	
var 
environment 
= 
context %
.% &
HostingEnvironment& 8
;8 9
environment 
. 
ConfigureNLog %
(% &
$"& (
{( )
environment) 4
.4 5
ContentRootPath5 D
}D E
{E F
PathF J
.J K"
DirectorySeparatorCharK a
}a b
$strb m
"m n
)n o
;o p

LogManager 
. 
Configuration $
.$ %
	Variables% .
[. /
$str/ :
]: ;
=< =
environment> I
.I J
ContentRootPathJ Y
;Y Z
} 	
)	 

;
 
return 
builder 
; 
} 
} ©
|C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Logging.NLog\TenantLayoutRenderer.cs
	namespace 	
OrchardCore
 
. 
Logging 
{		 
[ 
LayoutRenderer 
( 
LayoutRendererName &
)& '
]' (
public 

class  
TenantLayoutRenderer %
:& '$
AspNetLayoutRendererBase( @
{ 
public 
const 
string 
LayoutRendererName .
=/ 0
$str1 F
;F G
	protected 
override 
void 
DoAppend  (
(( )
StringBuilder) 6
builder7 >
,> ?
LogEventInfo@ L
logEventM U
)U V
{ 	
var 

tenantName 
= 

ShellScope '
.' (
Context( /
?/ 0
.0 1
Settings1 9
.9 :
Name: >
;> ?
if 
( 

tenantName 
== 
null "
)" #
{ 

tenantName 
= 
HttpContextAccessor 0
.0 1
HttpContext1 <
.< =
Features= E
.E F
GetF I
<I J
ShellContextFeatureJ ]
>] ^
(^ _
)_ `
?` a
.a b
ShellContextb n
.n o
Settingso w
.w x
Namex |
??} 
$str
€ †
;
† ‡
} 
builder 
. 
Append 
( 

tenantName %
)% &
;& '
} 	
} 
} ü
€C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Logging.NLog\WebHostBuilderExtensions.cs
	namespace 	
OrchardCore
 
. 
Logging 
{ 
public 

static 
class $
WebHostBuilderExtensions 0
{ 
public 
static 
IWebHostBuilder %

UseNLogWeb& 0
(0 1
this1 5
IWebHostBuilder6 E
builderF M
)M N
{ 	
LayoutRenderer 
. 
Register #
<# $ 
TenantLayoutRenderer$ 8
>8 9
(9 : 
TenantLayoutRenderer: N
.N O
LayoutRendererNameO a
)a b
;b c
builder 
. 
UseNLog 
( 
) 
; 
builder 
. %
ConfigureAppConfiguration -
(- .
(. /
context/ 6
,6 7
_8 9
)9 :
=>; =
{ 
var 
environment 
=  !
context" )
.) *
HostingEnvironment* <
;< =
environment 
. 
ConfigureNLog )
() *
$"* ,
{, -
environment- 8
.8 9
ContentRootPath9 H
}H I
{I J
PathJ N
.N O"
DirectorySeparatorCharO e
}e f
$strf q
"q r
)r s
;s t

LogManager 
. 
Configuration (
.( )
	Variables) 2
[2 3
$str3 >
]> ?
=@ A
environmentB M
.M N
ContentRootPathN ]
;] ^
} 
) 
; 
return 
builder 
; 
} 	
} 
internal 
static 
class 
AspNetExtensions *
{ 
public   
static    
LoggingConfiguration   *
ConfigureNLog  + 8
(  8 9
this  9 =
IHostEnvironment  > N
env  O R
,  R S
string  T Z"
configFileRelativePath  [ q
)  q r
{!! 	$
ConfigurationItemFactory"" $
.""$ %
Default""% ,
."", -%
RegisterItemsFromAssembly""- F
(""F G
typeof""G M
(""M N
AspNetExtensions""N ^
)""^ _
.""_ `
GetTypeInfo""` k
(""k l
)""l m
.""m n
Assembly""n v
)""v w
;""w x

LogManager## 
.## 
AddHiddenAssembly## (
(##( )
typeof##) /
(##/ 0
AspNetExtensions##0 @
)##@ A
.##A B
GetTypeInfo##B M
(##M N
)##N O
.##O P
Assembly##P X
)##X Y
;##Y Z
var$$ 
fileName$$ 
=$$ 
Path$$ 
.$$  
Combine$$  '
($$' (
env$$( +
.$$+ ,
ContentRootPath$$, ;
,$$; <"
configFileRelativePath$$= S
)$$S T
;$$T U

LogManager%% 
.%% 
LoadConfiguration%% (
(%%( )
fileName%%) 1
)%%1 2
;%%2 3
return&& 

LogManager&& 
.&& 
Configuration&& +
;&&+ ,
}'' 	
}(( 
})) 