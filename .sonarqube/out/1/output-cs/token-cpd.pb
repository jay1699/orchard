ﬁ
ìC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.DisplayManagement.Abstractions\ModelBinding\IUpdateModel.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
ModelBinding( 4
{ 
public 

	interface 
IUpdateModel !
{		 
Task

 
<

 
bool

 
>

 
TryUpdateModelAsync

 &
<

& '
TModel

' -
>

- .
(

. /
TModel

/ 5
model

6 ;
)

; <
where

= B
TModel

C I
:

J K
class

L Q
;

Q R
Task 
< 
bool 
> 
TryUpdateModelAsync &
<& '
TModel' -
>- .
(. /
TModel/ 5
model6 ;
,; <
string= C
prefixD J
)J K
whereL Q
TModelR X
:Y Z
class[ `
;` a
Task 
< 
bool 
> 
TryUpdateModelAsync &
<& '
TModel' -
>- .
(. /
TModel/ 5
model6 ;
,; <
string= C
prefixD J
,J K
paramsL R

ExpressionS ]
<] ^
Func^ b
<b c
TModelc i
,i j
objectk q
>q r
>r s
[s t
]t u
includeExpressions	v à
)
à â
where
ä è
TModel
ê ñ
:
ó ò
class
ô û
;
û ü
bool 
TryValidateModel 
( 
object $
model% *
)* +
;+ ,
bool 
TryValidateModel 
( 
object $
model% *
,* +
string, 2
prefix3 9
)9 :
;: ; 
ModelStateDictionary 

ModelState '
{( )
get* -
;- .
}/ 0
} 
} ∫
õC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.DisplayManagement.Abstractions\ModelBinding\IUpdateModelAccessor.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
ModelBinding( 4
{ 
public 

	interface  
IUpdateModelAccessor )
{ 
IUpdateModel 
ModelUpdater !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ç
•C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.DisplayManagement.Abstractions\ModelBinding\ModelStateDictionaryExtensions.cs
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
public 
static 
void 
AddModelError (
(( )
this) - 
ModelStateDictionary. B

modelStateC M
,M N
stringO U
prefixV \
,\ ]
string^ d
keye h
,h i
stringj p
errorMessageq }
)} ~
{ 	
var 
fullKey 
= 
string  
.  !
IsNullOrEmpty! .
(. /
prefix/ 5
)5 6
?7 8
key9 <
:= >
$"? A
{A B
prefixB H
}H I
$strI J
{J K
keyK N
}N O
"O P
;P Q

modelState 
. 
AddModelError $
($ %
fullKey% ,
,, -
errorMessage. :
): ;
;; <
} 	
public 
static 
void !
BindValidationResults 0
(0 1
this1 5 
ModelStateDictionary6 J

modelStateK U
,U V
stringW ]
prefix^ d
,d e
IEnumerablef q
<q r
ValidationResult	r Ç
>
Ç É
validationResults
Ñ ï
)
ï ñ
{ 	
if 
( 
validationResults !
!=" $
null% )
)) *
{   
foreach!! 
(!! 
var!! 
item!! !
in!!" $
validationResults!!% 6
)!!6 7
{"" 

modelState## 
.##  
BindValidationResult## 3
(##3 4
prefix##4 :
,##: ;
item##< @
)##@ A
;##A B
}$$ 
}%% 
}&& 	
public(( 
static(( 
void((  
BindValidationResult(( /
(((/ 0
this((0 4 
ModelStateDictionary((5 I

modelState((J T
,((T U
string((V \
prefix((] c
,((c d
ValidationResult((e u
item((v z
)((z {
{)) 	
if** 
(** 
!** 
item** 
.** 
MemberNames** !
.**! "
Any**" %
(**% &
)**& '
)**' (
{++ 

modelState,, 
.,, 
AddModelError,, (
(,,( )
prefix,,) /
,,,/ 0
string,,1 7
.,,7 8
Empty,,8 =
,,,= >
item,,? C
.,,C D
ErrorMessage,,D P
),,P Q
;,,Q R
}-- 
else.. 
{// 
foreach00 
(00 
var00 

memberName00 '
in00( *
item00+ /
.00/ 0
MemberNames000 ;
)00; <
{11 

modelState22 
.22 
AddModelError22 ,
(22, -
prefix22- 3
,223 4

memberName225 ?
,22? @
item22A E
.22E F
ErrorMessage22F R
)22R S
;22S T
}33 
}44 
}55 	
}66 
}77 ·
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.DisplayManagement.Abstractions\TagHelpers\ITagHelperProvider.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
public		 

	interface		 
ITagHelpersProvider		 (
{

 
IEnumerable 
< 
Type 
> 
GetTypes "
(" #
)# $
;$ %
} 
public 

class &
AssemblyTagHelpersProvider +
:, -
ITagHelpersProvider. A
{ 
private 
readonly 
Assembly !
	_assembly" +
;+ ,
public &
AssemblyTagHelpersProvider )
() *
Assembly* 2
assembly3 ;
); <
{ 	
if 
( 
assembly 
== 
null  
)  !
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
assembly7 ?
)? @
)@ A
;A B
} 
	_assembly 
= 
assembly  
;  !
} 	
public 
IEnumerable 
< 
Type 
>  
GetTypes! )
() *
)* +
=>, .
	_assembly/ 8
.8 9
ExportedTypes9 F
.F G
WhereG L
(L M
tM N
=>O Q
tR S
.S T
IsSubclassOfT `
(` a
typeofa g
(g h
	TagHelperh q
)q r
)r s
)s t
;t u
} 
public 

class 
TagHelpersProvider #
<# $
T$ %
>% &
:' (
ITagHelpersProvider) <
{   
public!! 
IEnumerable!! 
<!! 
Type!! 
>!!  
GetTypes!!! )
(!!) *
)!!* +
=>!!, .
new!!/ 2
Type!!3 7
[!!7 8
]!!8 9
{!!: ;
typeof!!< B
(!!B C
T!!C D
)!!D E
}!!F G
;!!G H
}"" 
}## 