Ù
|C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Admin.Abstractions\AdminAttribute.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
|+ ,
AttributeTargets- =
.= >
Method> D
,D E
AllowMultipleF S
=T U
falseV [
,[ \
	Inherited] f
=g h
truei m
)m n
]n o
public 

class 
AdminAttribute 
:  !
	Attribute" +
,+ , 
IAsyncResourceFilter- A
{ 
public 
AdminAttribute 
( 
) 
{ 	
} 	
public 
Task $
OnResourceExecutionAsync ,
(, -$
ResourceExecutingContext- E
contextF M
,M N%
ResourceExecutionDelegateO h
nexti m
)m n
{ 	
Apply 
( 
context 
. 
HttpContext %
)% &
;& '
return 
next 
( 
) 
; 
} 	
public 
static 
void 
Apply  
(  !
HttpContext! ,
context- 4
)4 5
{ 	
context 
. 
Items 
[ 
typeof  
(  !
AdminAttribute! /
)/ 0
]0 1
=2 3
null4 8
;8 9
} 	
public   
static   
bool   
	IsApplied   $
(  $ %
HttpContext  % 0
context  1 8
)  8 9
{!! 	
return"" 
context"" 
."" 
Items""  
.""  !
TryGetValue""! ,
("", -
typeof""- 3
(""3 4
AdminAttribute""4 B
)""B C
,""C D
out""E H
var""I L
value""M R
)""R S
;""S T
}## 	
}$$ 
}%% Í
zC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Admin.Abstractions\AdminOptions.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

class 
AdminOptions 
{ 
private 
string 
_adminUrlPrefix &
=' (
$str) 0
;0 1
public 
string 
AdminUrlPrefix $
{ 	
get		 
=>		 
_adminUrlPrefix		 "
;		" #
set

 
=>

 
_adminUrlPrefix

 "
=

# $
value

% *
.

* +
Trim

+ /
(

/ 0
$char

0 3
,

3 4
$char

5 8
)

8 9
;

9 :
} 	
} 
} Ó
wC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Admin.Abstractions\Constants.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

static 
class 
	Constants !
{ 
public 
const 
string 
DocsUrl #
=$ %
$str& T
;T U
} 
} Ž
€C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Admin.Abstractions\IAdminThemeService.cs
	namespace 	
OrchardCore
 
. 
Admin 
{ 
public 

	interface 
IAdminThemeService '
{ 
Task 
< 
IExtensionInfo 
> 
GetAdminThemeAsync /
(/ 0
)0 1
;1 2
Task		 
SetAdminThemeAsync		 
(		  
string		  &
	themeName		' 0
)		0 1
;		1 2
Task

 
<

 
string

 
>

 "
GetAdminThemeNameAsync

 +
(

+ ,
)

, -
;

- .
} 
} ­
‚C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Admin.Abstractions\Models\AdminSettings.cs
	namespace 	
OrchardCore
 
. 
Admin 
. 
Models "
{ 
public 

class 
AdminSettings 
{ 
public 
bool 
DisplayDarkMode #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
true4 8
;8 9
public 
bool 
DisplayMenuFilter %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public		 
bool		 
DisplayNewMenu		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public 
bool !
DisplayTitlesInTopbar )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} Õ
…C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Admin.Abstractions\Properties\AssemblyInfo.cs
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
$str		 ;
)		; <
]		< =
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
]7 8