Ã
áC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\ClaimsPrincipalExtensions.cs
	namespace 	
OrchardCore
 
. 
Users 
{ 
public

 

static

 
class

 %
ClaimsPrincipalExtensions

 1
{ 
public 
static 
IEnumerable !
<! "
SerializableClaim" 3
>3 4!
GetSerializableClaims5 J
(J K
thisK O
ClaimsPrincipalP _
	principal` i
)i j
{ 	
return 
	principal 
. 
Claims #
.# $
Select$ *
(* +
c+ ,
=>- /
new0 3
SerializableClaim4 E
{ 
Subject 
= 
c 
. 
Subject #
.# $
Name$ (
,( )
Issuer 
= 
c 
. 
Issuer !
,! "
OriginalIssuer 
=  
c! "
." #
OriginalIssuer# 1
,1 2

Properties 
= 
c 
. 

Properties )
.) *
ToArray* 1
(1 2
)2 3
,3 4
Type 
= 
c 
. 
Type 
, 
Value 
= 
c 
. 
Value 
,  
	ValueType 
= 
c 
. 
	ValueType '
} 
) 
; 
} 	
} 
} ¢	
ÑC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Events\ILoginFormEvent.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Events "
{ 
public		 

	interface		 
ILoginFormEvent		 $
{

 
Task 
LoggingInAsync 
( 
string "
userName# +
,+ ,
Action- 3
<3 4
string4 :
,: ;
string< B
>B C
reportErrorD O
)O P
;P Q
Task  
LoggingInFailedAsync !
(! "
string" (
userName) 1
)1 2
;2 3
Task  
LoggingInFailedAsync !
(! "
IUser" '
user( ,
), -
;- .
Task"" 
IsLockedOutAsync"" 
("" 
IUser"" #
user""$ (
)""( )
;"") *
Task(( 
LoggedInAsync(( 
((( 
IUser((  
user((! %
)((% &
;((& '
})) 
}** ì	
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Events\IPasswordRecoveryFormEvents.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Events "
{ 
public		 

	interface		 '
IPasswordRecoveryFormEvents		 0
{

 
Task "
ResettingPasswordAsync #
(# $
Action$ *
<* +
string+ 1
,1 2
string3 9
>9 :
reportError; F
)F G
;G H
Task 
PasswordResetAsync 
(  #
PasswordRecoveryContext  7
context8 ?
)? @
;@ A
Task #
RecoveringPasswordAsync $
($ %
Action% +
<+ ,
string, 2
,2 3
string4 :
>: ;
reportError< G
)G H
;H I
Task "
PasswordRecoveredAsync #
(# $#
PasswordRecoveryContext$ ;
context< C
)C D
;D E
}   
}!! ı
åC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Events\IRegistrationFormEvents.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Events "
{ 
public		 

	interface		 #
IRegistrationFormEvents		 ,
{

 
Task '
RegistrationValidationAsync (
(( )
Action) /
</ 0
string0 6
,6 7
string8 >
>> ?
reportError@ K
)K L
;L M
Task 
RegisteredAsync 
( 
IUser "
user# '
)' (
;( )
} 
} í
åC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Events\PasswordRecoveryContext.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Events "
{ 
public 

class #
PasswordRecoveryContext (
{		 
public

 #
PasswordRecoveryContext

 &
(

& '
IUser

' ,
user

- 1
)

1 2
{ 	
User 
= 
user 
?? 
throw  
new! $!
ArgumentNullException% :
(: ;
nameof; A
(A B
UserB F
)F G
)G H
;H I
} 	
public 
IUser 
User 
{ 
get 
;  
}! "
} 
} ”
ëC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\IExternalLoginEventHandler.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public		 

	interface		 &
IExternalLoginEventHandler		 /
{

 
Task 
< 
string 
> 
GenerateUserName %
(% &
string& ,
provider- 5
,5 6
IEnumerable7 B
<B C
SerializableClaimC T
>T U
claimsV \
)\ ]
;] ^
Task 
UpdateRoles 
( 
UpdateRolesContext +
context, 3
)3 4
;4 5
} 
} ‚
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\IUserEventHandler.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

	interface 
IUserEventHandler &
{		 
Task 
CreatingAsync 
( 
UserCreateContext ,
context- 4
)4 5
;5 6
Task 
CreatedAsync 
( 
UserCreateContext +
context, 3
)3 4
;4 5
Task 
DeletingAsync 
( 
UserDeleteContext ,
context- 4
)4 5
;5 6
Task   
DeletedAsync   
(   
UserDeleteContext   +
context  , 3
)  3 4
;  4 5
Task&& 
UpdatingAsync&& 
(&& 
UserUpdateContext&& ,
context&&- 4
)&&4 5
;&&5 6
Task,, 
UpdatedAsync,, 
(,, 
UserUpdateContext,, +
context,,, 3
),,3 4
;,,4 5
Task22 
DisabledAsync22 
(22 
UserContext22 &
context22' .
)22. /
;22/ 0
Task88 
EnabledAsync88 
(88 
UserContext88 %
context88& -
)88- .
;88. /
}99 
}:: ä
âC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UpdateRolesContext.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public		 

class		 
UpdateRolesContext		 #
:		$ %
UserContextBase		& 5
{

 
public 
UpdateRolesContext !
(! "
IUser" '
user( ,
,, -
string. 4
loginProvider5 B
,B C
IEnumerableD O
<O P
SerializableClaimP a
>a b
externalClaimsc q
,q r
IEnumerables ~
<~ 
string	 Ö
>
Ö Ü
	userRoles
á ê
)
ê ë
:
í ì
base
î ò
(
ò ô
user
ô ù
)
ù û
{ 	
ExternalClaims 
= 
externalClaims +
.+ ,
AsEnumerable, 8
(8 9
)9 :
;: ;
	UserRoles 
= 
	userRoles !
;! "
LoginProvider 
= 
loginProvider )
;) *
} 	
public 
string 
LoginProvider #
{$ %
get& )
;) *
}+ ,
public!! 
IEnumerable!! 
<!! 
SerializableClaim!! ,
>!!, -
ExternalClaims!!. <
{!!= >
get!!? B
;!!B C
}!!D E
public&& 
IEnumerable&& 
<&& 
string&& !
>&&! "
	UserRoles&&# ,
{&&- .
get&&/ 2
;&&2 3
}&&4 5
public++ 
List++ 
<++ 
string++ 
>++ 

RolesToAdd++ &
{++' (
get++) ,
;++, -
}++. /
=++0 1
new++2 5
List++6 :
<++: ;
string++; A
>++A B
(++B C
)++C D
;++D E
public00 
List00 
<00 
string00 
>00 
RolesToRemove00 )
{00* +
get00, /
;00/ 0
}001 2
=003 4
new005 8
List009 =
<00= >
string00> D
>00D E
(00E F
)00F G
;00G H
}11 
}22 ˝
ÇC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UserContext.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

class 
UserContext 
: 
UserContextBase .
{ 
public		 
UserContext		 
(		 
IUser		  
user		! %
)		% &
:		' (
base		) -
(		- .
user		. 2
)		2 3
{

 	
} 	
} 
} ˝
ÜC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UserContextBase.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

class 
UserContextBase  
{ 
	protected 
UserContextBase !
(! "
IUser" '
user( ,
), -
{ 	
User 
= 
user 
; 
} 	
public 
IUser 
User 
{ 
get 
;  
private! (
set) ,
;, -
}. /
} 
} ß
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UserCreateContext.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

class 
UserCreateContext "
:# $
UserContextBase% 4
{ 
public		 
UserCreateContext		  
(		  !
IUser		! &
user		' +
)		+ ,
:		- .
base		/ 3
(		3 4
user		4 8
)		8 9
{

 	
} 	
public 
bool 
Cancel 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ß
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UserDeleteContext.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

class 
UserDeleteContext "
:# $
UserContextBase% 4
{ 
public		 
UserDeleteContext		  
(		  !
IUser		! &
user		' +
)		+ ,
:		- .
base		/ 3
(		3 4
user		4 8
)		8 9
{

 	
} 	
public 
bool 
Cancel 
{ 
get  
;  !
set" %
;% &
}' (
} 
} –
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UserEventHandlerBase.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

abstract 
class  
UserEventHandlerBase .
:/ 0
IUserEventHandler1 B
{ 
public 
virtual 
Task 
CreatingAsync )
() *
UserCreateContext* ;
context< C
)C D
=>E G
TaskH L
.L M
CompletedTaskM Z
;Z [
public 
virtual 
Task 
CreatedAsync (
(( )
UserCreateContext) :
context; B
)B C
=>D F
TaskG K
.K L
CompletedTaskL Y
;Y Z
public 
virtual 
Task 
DeletingAsync )
() *
UserDeleteContext* ;
context< C
)C D
=>E G
TaskH L
.L M
CompletedTaskM Z
;Z [
public 
virtual 
Task 
DeletedAsync (
(( )
UserDeleteContext) :
context; B
)B C
=>D F
TaskG K
.K L
CompletedTaskL Y
;Y Z
public 
virtual 
Task 
UpdatingAsync )
() *
UserUpdateContext* ;
context< C
)C D
=>E G
TaskH L
.L M
CompletedTaskM Z
;Z [
public 
virtual 
Task 
UpdatedAsync (
(( )
UserUpdateContext) :
context; B
)B C
=>D F
TaskG K
.K L
CompletedTaskL Y
;Y Z
public 
virtual 
Task 
DisabledAsync )
() *
UserContext* 5
context6 =
)= >
=>? A
TaskB F
.F G
CompletedTaskG T
;T U
public 
virtual 
Task 
EnabledAsync (
(( )
UserContext) 4
context5 <
)< =
=>> @
TaskA E
.E F
CompletedTaskF S
;S T
} 
} ß
àC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Handlers\UserUpdateContext.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Handlers $
{ 
public 

class 
UserUpdateContext "
:# $
UserContextBase% 4
{ 
public		 
UserUpdateContext		  
(		  !
IUser		! &
user		' +
)		+ ,
:		- .
base		/ 3
(		3 4
user		4 8
)		8 9
{

 	
} 	
public 
bool 
Cancel 
{ 
get  
;  !
set" %
;% &
}' (
} 
} £
sC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\IUser.cs
	namespace 	
OrchardCore
 
. 
Users 
{ 
public 

	interface 
IUser 
{ 
string 
UserName 
{ 
get 
; 
}  
} 
} ã
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\SerializableClaim.cs
	namespace 	
OrchardCore
 
. 
Users 
{ 
public 

class 
SerializableClaim "
{		 
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Issuer 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
OriginalIssuer $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
KeyValuePair 
< 
string "
," #
string$ *
>* +
[+ ,
], -

Properties. 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public!! 
string!! 
Type!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
public&& 
string&& 
Value&& 
{&& 
get&& !
;&&! "
set&&# &
;&&& '
}&&( )
public++ 
string++ 
	ValueType++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
},, 
}-- ¿
ÜC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Services\IClaimsProvider.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

	interface 
IUserClaimsProvider (
{ 
Task 
GenerateAsync 
( 
IUser  
user! %
,% &
ClaimsIdentity' 5
claims6 <
)< =
;= >
}		 
}

 Ï
âC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Services\IMembershipService.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public		 

	interface		 
IMembershipService		 '
{

 
Task 
< 
IUser 
> 
GetUserAsync  
(  !
string! '
userName( 0
)0 1
;1 2
Task 
< 
bool 
> 
CheckPasswordAsync %
(% &
string& ,
userName- 5
,5 6
string7 =
password> F
)F G
;G H
Task 
< 
ClaimsPrincipal 
> !
CreateClaimsPrincipal 3
(3 4
IUser4 9
user: >
)> ?
;? @
}   
}!! Ñ
áC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Services\IUserIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public 

	interface 
IUserIdGenerator %
{ 
string 
GenerateUniqueId 
(  
IUser  %
user& *
)* +
;+ ,
} 
} –
ÉC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\Services\IUserService.cs
	namespace 	
OrchardCore
 
. 
Users 
. 
Services $
{ 
public

 

	interface

 
IUserService

 !
{ 
Task 
< 
IUser 
> 
AuthenticateAsync %
(% &
string& ,
userName- 5
,5 6
string7 =
password> F
,F G
ActionH N
<N O
stringO U
,U V
stringW ]
>] ^
reportError_ j
)j k
;k l
Task 
< 
IUser 
> 
CreateUserAsync #
(# $
IUser$ )
user* .
,. /
string0 6
password7 ?
,? @
ActionA G
<G H
stringH N
,N O
stringP V
>V W
reportErrorX c
)c d
;d e
Task%% 
<%% 
bool%% 
>%% 
ChangeEmailAsync%% #
(%%# $
IUser%%$ )
user%%* .
,%%. /
string%%0 6
newEmail%%7 ?
,%%? @
Action%%A G
<%%G H
string%%H N
,%%N O
string%%P V
>%%V W
reportError%%X c
)%%c d
;%%d e
Task// 
<// 
bool// 
>// 
ChangePasswordAsync// &
(//& '
IUser//' ,
user//- 1
,//1 2
string//3 9
currentPassword//: I
,//I J
string//K Q
newPassword//R ]
,//] ^
Action//_ e
<//e f
string//f l
,//l m
string//n t
>//t u
reportError	//v Å
)
//Å Ç
;
//Ç É
Task66 
<66 
IUser66 
>66 %
GetAuthenticatedUserAsync66 -
(66- .
ClaimsPrincipal66. =
	principal66> G
)66G H
;66H I
Task== 
<== 
IUser== 
>== 
GetUserAsync==  
(==  !
string==! '
userName==( 0
)==0 1
;==1 2
TaskDD 
<DD 
IUserDD 
>DD "
GetUserByUniqueIdAsyncDD *
(DD* +
stringDD+ 1
userIdentifierDD2 @
)DD@ A
;DDA B
TaskKK 
<KK 
IUserKK 
>KK &
GetForgotPasswordUserAsyncKK .
(KK. /
stringKK/ 5
userIdentifierKK6 D
)KKD E
;KKE F
TaskUU 
<UU 
boolUU 
>UU 
ResetPasswordAsyncUU %
(UU% &
stringUU& ,
emailAddressUU- 9
,UU9 :
stringUU; A

resetTokenUUB L
,UUL M
stringUUN T
newPasswordUUU `
,UU` a
ActionUUb h
<UUh i
stringUUi o
,UUo p
stringUUq w
>UUw x
reportError	UUy Ñ
)
UUÑ Ö
;
UUÖ Ü
Task\\ 
<\\ 
ClaimsPrincipal\\ 
>\\  
CreatePrincipalAsync\\ 2
(\\2 3
IUser\\3 8
user\\9 =
)\\= >
;\\> ?
}]] 
}^^ õ
yC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Users.Abstractions\UserOptions.cs
	namespace 	
OrchardCore
 
. 
Users 
{ 
public 

class 
UserOptions 
{ 
private 
string 

_loginPath !
=" #
$str$ +
;+ ,
private 
string 
_logoffPath "
=# $
$str% 3
;3 4
private 
string 
_changePasswordUrl )
=* +
$str, <
;< =
private 
string *
_changePasswordConfirmationUrl 5
=6 7
$str8 T
;T U
private		 
string		 
_externalLoginsUrl		 )
=		* +
$str		, <
;		< =
public 
string 
	LoginPath 
{ 	
get 
=> 

_loginPath 
; 
set 
=> 

_loginPath 
= 
value  %
.% &
Trim& *
(* +
$char+ .
,. /
$char0 3
)3 4
;4 5
} 	
public 
string 

LogoffPath  
{ 	
get 
=> 
_logoffPath 
; 
set 
=> 
_logoffPath 
=  
value! &
.& '
Trim' +
(+ ,
$char, /
,/ 0
$char1 4
)4 5
;5 6
} 	
public 
string 
ChangePasswordUrl '
{ 	
get 
=> 
_changePasswordUrl %
;% &
set 
=> 
_changePasswordUrl %
=& '
value( -
.- .
Trim. 2
(2 3
$char3 6
,6 7
$char8 ;
); <
;< =
} 	
public 
string )
ChangePasswordConfirmationUrl 3
{ 	
get 
=> *
_changePasswordConfirmationUrl 1
;1 2
set   
=>   *
_changePasswordConfirmationUrl   1
=  2 3
value  4 9
.  9 :
Trim  : >
(  > ?
$char  ? B
,  B C
$char  D G
)  G H
;  H I
}!! 	
public## 
string## 
ExternalLoginsUrl## '
{$$ 	
get%% 
=>%% 
_externalLoginsUrl%% %
;%%% &
set&& 
=>&& 
_externalLoginsUrl&& %
=&&& '
value&&( -
.&&- .
Trim&&. 2
(&&2 3
$char&&3 6
,&&6 7
$char&&8 ;
)&&; <
;&&< =
}'' 	
}(( 
})) 