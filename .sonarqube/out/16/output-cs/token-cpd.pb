Ÿ#
”C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.ResourceManagement.Core\Razor\ResourceCdnHelperExtensions.cs
public 
static 
class '
ResourceCdnHelperExtensions /
{		 
public 

static 
string 
ResourceUrl $
($ %
this% )
IOrchardHelper* 8
orchardHelper9 F
,F G
stringH N
resourcePathO [
,[ \
bool] a
?a b
appendVersionc p
=q r
nulls w
)w x
{ 
var 
options 
= 
orchardHelper #
.# $
HttpContext$ /
./ 0
RequestServices0 ?
.? @
GetRequiredService@ R
<R S
IOptionsS [
<[ \%
ResourceManagementOptions\ u
>u v
>v w
(w x
)x y
.y z
Valuez 
;	 €
var 
fileVersionProvider 
=  !
orchardHelper" /
./ 0
HttpContext0 ;
.; <
RequestServices< K
.K L
GetRequiredServiceL ^
<^ _ 
IFileVersionProvider_ s
>s t
(t u
)u v
;v w
if 

( 
resourcePath 
. 

StartsWith #
(# $
$str$ (
,( )
StringComparison* :
.: ;
Ordinal; B
)B C
)C D
{ 	
resourcePath 
= 
orchardHelper (
.( )
HttpContext) 4
.4 5
Request5 <
.< =
PathBase= E
.E F
AddF I
(I J
resourcePathJ V
.V W
	SubstringW `
(` a
$numa b
)b c
)c d
.d e
Valuee j
;j k
} 	
if 

( 
resourcePath 
!= 
null  
&&! #
($ %
(% &
appendVersion& 3
.3 4
HasValue4 <
&&= ?
appendVersion@ M
==N P
trueQ U
)U V
||W Y
( 
! 
appendVersion 
.  
HasValue  (
&&) +
options, 3
.3 4
AppendVersion4 A
==B D
trueE I
)I J
)J K
)K L
{ 	
resourcePath 
= 
fileVersionProvider .
.. / 
AddFileVersionToPath/ C
(C D
orchardHelperD Q
.Q R
HttpContextR ]
.] ^
Request^ e
.e f
PathBasef n
,n o
resourcePathp |
)| }
;} ~
} 	
if 

( 
! 
options 
. 
	DebugMode 
&& !
!" #
String# )
.) *
IsNullOrEmpty* 7
(7 8
options8 ?
.? @

CdnBaseUrl@ J
)J K
&&L N
!!! 
resourcePath!! 
.!! 

StartsWith!! $
(!!$ %
$str!!% /
,!!/ 0
StringComparison!!1 A
.!!A B
OrdinalIgnoreCase!!B S
)!!S T
&&!!U W
!"" 
resourcePath"" 
."" 

StartsWith"" $
(""$ %
$str""% .
,"". /
StringComparison""0 @
.""@ A
OrdinalIgnoreCase""A R
)""R S
&&""T V
!## 
resourcePath## 
.## 

StartsWith## $
(##$ %
$str##% )
,##) *
StringComparison##+ ;
.##; <
OrdinalIgnoreCase##< M
)##M N
&&##O Q
!$$ 
resourcePath$$ 
.$$ 

StartsWith$$ $
($$$ %
$str$$% .
,$$. /
StringComparison$$0 @
.$$@ A
OrdinalIgnoreCase$$A R
)$$R S
)$$S T
{%% 	
resourcePath&& 
=&& 
options&& "
.&&" #

CdnBaseUrl&&# -
+&&. /
resourcePath&&0 <
;&&< =
}'' 	
return)) 
resourcePath)) 
;)) 
}** 
}++ 