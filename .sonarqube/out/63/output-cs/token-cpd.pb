¤
ƒC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore.Modules\OrchardCore.HealthChecks\HealthChecksOptions.cs
	namespace 	
OrchardCore
 
. 
HealthChecks "
{ 
public 

class 
HealthChecksOptions $
{ 
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
=( )
$str* 8
;8 9
} 
} ¬
xC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore.Modules\OrchardCore.HealthChecks\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str F
,F G
Category		 
=		 
$str		 
)

 
]

 Š
wC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore.Modules\OrchardCore.HealthChecks\Startup.cs
	namespace		 	
OrchardCore		
 
.		 
HealthChecks		 "
{

 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
IShellConfiguration ,
_shellConfiguration- @
;@ A
public 
Startup 
( 
IShellConfiguration *
shellConfiguration+ =
)= >
{ 	
_shellConfiguration 
=  !
shellConfiguration" 4
;4 5
} 	
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
var 
healthCheckOptions "
=# $
serviceProvider% 4
.4 5

GetService5 ?
<? @
IOptions@ H
<H I
HealthChecksOptionsI \
>\ ]
>] ^
(^ _
)_ `
.` a
Valuea f
;f g
app 
. 
UseHealthChecks 
(  
healthCheckOptions  2
.2 3
Url3 6
)6 7
;7 8
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddHealthChecks $
($ %
)% &
;& '
services 
. 
	Configure 
< 
HealthChecksOptions 2
>2 3
(3 4
_shellConfiguration4 G
.G H

GetSectionH R
(R S
$strS m
)m n
)n o
;o p
} 	
}   
}!! 