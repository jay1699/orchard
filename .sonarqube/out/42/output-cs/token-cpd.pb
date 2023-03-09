É
zC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Email.Abstractions\ISmtpService.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

	interface 
ISmtpService !
{		 
Task 
< 

SmtpResult 
> 
	SendAsync "
(" #
MailMessage# .
message/ 6
)6 7
;7 8
} 
} ∏
yC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Email.Abstractions\MailMessage.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

class 
MailMessage 
{		 
public 
string 
From 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
To 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Cc 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Bcc 
{ 
get 
;  
set! $
;$ %
}& '
public!! 
string!! 
ReplyTo!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
public)) 
string)) 
Sender)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
public.. 
string.. 
Subject.. 
{.. 
get..  #
;..# $
set..% (
;..( )
}..* +
public33 
string33 
Body33 
{33 
get33  
;33  !
set33" %
;33% &
}33' (
public88 
string88 
BodyText88 
{88  
get88! $
;88$ %
set88& )
;88) *
}88+ ,
public== 
bool== 

IsBodyHtml== 
{==  
get==! $
;==$ %
set==& )
;==) *
}==+ ,
publicBB 
boolBB 

IsBodyTextBB 
{BB  
getBB! $
;BB$ %
setBB& )
;BB) *
}BB+ ,
publicGG 
ListGG 
<GG !
MailMessageAttachmentGG )
>GG) *
AttachmentsGG+ 6
{GG7 8
getGG9 <
;GG< =
}GG> ?
=GG@ A
newGGB E
ListGGF J
<GGJ K!
MailMessageAttachmentGGK `
>GG` a
(GGa b
)GGb c
;GGc d
}HH 
}II é
ÉC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Email.Abstractions\MailMessageAttachment.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

class !
MailMessageAttachment &
{		 
public 
string 
Filename 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Stream 
Stream 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} õ
ÄC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Email.Abstractions\SmtpDeliveryMethod.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

enum 
SmtpDeliveryMethod "
{ 
Network 
, $
SpecifiedPickupDirectory		  
}

 
} í
ÇC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Email.Abstractions\SmtpEncryptionMethod.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

enum  
SmtpEncryptionMethod $
{ 
None 
= 
$num 
, 
SSLTLS		 
=		 
$num		 
,		 
STARTTLS

 
=

 
$num

 
} 
} Ó
xC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Email.Abstractions\SmtpResult.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public		 

class		 

SmtpResult		 
{

 
public 
static 

SmtpResult  
Success! (
{) *
get+ .
;. /
}0 1
=2 3
new4 7

SmtpResult8 B
{C D
	SucceededE N
=O P
trueQ U
}V W
;W X
public 
IEnumerable 
< 
LocalizedString *
>* +
Errors, 2
{3 4
get5 8
;8 9
	protected: C
setD G
;G H
}I J
public 
string 
Response 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
	Succeeded 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
public## 
static## 

SmtpResult##  
Failed##! '
(##' (
params##( .
LocalizedString##/ >
[##> ?
]##? @
errors##A G
)##G H
=>##I K
new##L O

SmtpResult##P Z
{##[ \
	Succeeded##] f
=##g h
false##i n
,##n o
Errors##p v
=##w x
errors##y 
}
##Ä Å
;
##Å Ç
}$$ 
}%% ö)
zC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Email.Abstractions\SmtpSettings.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

class 
SmtpSettings 
: 
IValidatableObject  2
{ 
[ 	
Required	 
( 
AllowEmptyStrings #
=$ %
false& +
)+ ,
,, -
EmailAddress. :
]: ;
public 
string 
DefaultSender #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
public 
SmtpDeliveryMethod !
DeliveryMethod" 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
string #
PickupDirectoryLocation -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public"" 
string"" 
Host"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
['' 	
Range''	 
('' 
$num'' 
,'' 
$num'' 
)'' 
]'' 
public(( 
int(( 
Port(( 
{(( 
get(( 
;(( 
set(( "
;((" #
}(($ %
=((& '
$num((( *
;((* +
public-- 
bool--  
AutoSelectEncryption-- (
{--) *
get--+ .
;--. /
set--0 3
;--3 4
}--5 6
public22 
bool22 
RequireCredentials22 &
{22' (
get22) ,
;22, -
set22. 1
;221 2
}223 4
public77 
bool77 !
UseDefaultCredentials77 )
{77* +
get77, /
;77/ 0
set771 4
;774 5
}776 7
public<<  
SmtpEncryptionMethod<< #
EncryptionMethod<<$ 4
{<<5 6
get<<7 :
;<<: ;
set<<< ?
;<<? @
}<<A B
publicAA 
stringAA 
UserNameAA 
{AA  
getAA! $
;AA$ %
setAA& )
;AA) *
}AA+ ,
publicFF 
stringFF 
PasswordFF 
{FF  
getFF! $
;FF$ %
setFF& )
;FF) *
}FF+ ,
publicKK 
stringKK 
	ProxyHostKK 
{KK  !
getKK" %
;KK% &
setKK' *
;KK* +
}KK, -
publicPP 
intPP 
	ProxyPortPP 
{PP 
getPP "
;PP" #
setPP$ '
;PP' (
}PP) *
publicSS 
IEnumerableSS 
<SS 
ValidationResultSS +
>SS+ ,
ValidateSS- 5
(SS5 6
ValidationContextSS6 G
validationContextSSH Y
)SSY Z
{TT 	
varUU 
SUU 
=UU 
validationContextUU %
.UU% &

GetServiceUU& 0
<UU0 1
IStringLocalizerUU1 A
<UUA B
SmtpSettingsUUB N
>UUN O
>UUO P
(UUP Q
)UUQ R
;UUR S
switchWW 
(WW 
DeliveryMethodWW "
)WW" #
{XX 
caseYY 
SmtpDeliveryMethodYY '
.YY' (
NetworkYY( /
:YY/ 0
ifZZ 
(ZZ 
StringZZ 
.ZZ 
IsNullOrEmptyZZ ,
(ZZ, -
HostZZ- 1
)ZZ1 2
)ZZ2 3
{[[ 
yield\\ 
return\\ $
new\\% (
ValidationResult\\) 9
(\\9 :
S\\: ;
[\\; <
$str\\< X
,\\X Y
$str\\Z e
]\\e f
,\\f g
new\\h k
[\\k l
]\\l m
{\\n o
nameof\\p v
(\\v w
Host\\w {
)\\{ |
}\\} ~
)\\~ 
;	\\ Ä
}]] 
break^^ 
;^^ 
case__ 
SmtpDeliveryMethod__ '
.__' ($
SpecifiedPickupDirectory__( @
:__@ A
if`` 
(`` 
String`` 
.`` 
IsNullOrEmpty`` ,
(``, -#
PickupDirectoryLocation``- D
)``D E
)``E F
{aa 
yieldbb 
returnbb $
newbb% (
ValidationResultbb) 9
(bb9 :
Sbb: ;
[bb; <
$strbb< X
,bbX Y
$strbbZ u
]bbu v
,bbv w
newbbx {
[bb{ |
]bb| }
{bb~ 
nameof
bbÄ Ü
(
bbÜ á%
PickupDirectoryLocation
bbá û
)
bbû ü
}
bb† °
)
bb° ¢
;
bb¢ £
}cc 
breakdd 
;dd 
defaultee 
:ee 
throwff 
newff !
NotSupportedExceptionff 3
(ff3 4
Sff4 5
[ff5 6
$strff6 c
,ffc d
DeliveryMethodffe s
]ffs t
)fft u
;ffu v
}gg 
}hh 	
}ii 
}jj 