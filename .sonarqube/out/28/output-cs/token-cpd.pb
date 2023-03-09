¿

‡C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Logging.Serilog\ApplicationBuilderExtensions.cs
	namespace 	
OrchardCore
 
. 
Logging 
{ 
public 

static 
class (
ApplicationBuilderExtensions 4
{ 
[ 	
Obsolete	 
] 
public		 
static		 
IApplicationBuilder		 )1
%UseSerilogTenantNameLoggingMiddleware		* O
(		O P
this		P T
IApplicationBuilder		U h
builder		i p
)		p q
{

 	
return 
builder 
. 
UseMiddleware (
<( ).
"SerilogTenantNameLoggingMiddleware) K
>K L
(L M
)M N
;N O
} 	
public 
static 
IApplicationBuilder )'
UseSerilogTenantNameLogging* E
(E F
thisF J
IApplicationBuilderK ^
builder_ f
)f g
{ 	
return 
builder 
. 
UseMiddleware (
<( ).
"SerilogTenantNameLoggingMiddleware) K
>K L
(L M
)M N
;N O
} 	
} 
} ð
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Logging.Serilog\SerilogTenantNameLoggingMiddleware.cs
	namespace 	
OrchardCore
 
. 
Logging 
{ 
public 

class .
"SerilogTenantNameLoggingMiddleware 3
{		 
private

 
readonly

 
RequestDelegate

 (
_next

) .
;

. /
public .
"SerilogTenantNameLoggingMiddleware 1
(1 2
RequestDelegate2 A
nextB F
)F G
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
)4 5
{ 	
var 

tenantName 
= 

ShellScope '
.' (
Context( /
?/ 0
.0 1
Settings1 9
.9 :
Name: >
??? A
$strB H
;H I
using 
( 

LogContext 
. 
PushProperty *
(* +
$str+ 7
,7 8

tenantName9 C
)C D
)D E
{ 
await 
_next 
. 
Invoke "
(" #
context# *
)* +
;+ ,
} 
} 	
} 
} Ý	
ƒC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Logging.Serilog\WebHostBuilderExtensions.cs
	namespace 	
OrchardCore
 
. 
Logging 
{ 
public 

static 
class $
WebHostBuilderExtensions 0
{ 
[		 	
Obsolete			 
]		 
public

 
static

 
IWebHostBuilder

 %
UseSerilogWeb

& 3
(

3 4
this

4 8
IWebHostBuilder

9 H
builder

I P
)

P Q
{ 	
return 
builder 
. 

UseSerilog %
(% &
(& '
hostingContext' 5
,5 6
configBuilder7 D
)D E
=>F H
{ 
configBuilder 
. 
ReadFrom &
.& '
Configuration' 4
(4 5
hostingContext5 C
.C D
ConfigurationD Q
)Q R
. 
Enrich 
. 
FromLogContext &
(& '
)' (
;( )
} 
) 
; 
} 	
} 
} 