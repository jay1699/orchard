
éC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shortcodes.Abstractions\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public		 
static		 
IServiceCollection		 (
AddShortcode		) 5
<		5 6
T		6 7
>		7 8
(		8 9
this		9 =
IServiceCollection		> P
services		Q Y
,		Y Z
string		[ a
name		b f
)		f g
where		h m
T		n o
:		p q
class		r w
,		w x
IShortcodeProvider			y ã
=>
		å é
services

 
.

 
AddShortcode

 !
(

! "
name

" &
,

& '
null

( ,
)

, -
;

- .
public 
static 
IServiceCollection (
AddShortcode) 5
<5 6
T6 7
>7 8
(8 9
this9 =
IServiceCollection> P
servicesQ Y
,Y Z
string[ a
nameb f
,f g
Actionh n
<n o
ShortcodeOptiono ~
>~ 
describe
Ä à
)
à â
where
ä è
T
ê ë
:
í ì
class
î ô
,
ô ö 
IShortcodeProvider
õ ≠
{ 	
services 
. 
	Configure 
< 
ShortcodeOptions /
>/ 0
(0 1
options1 8
=>9 ;
options< C
.C D
AddShortcodeD P
(P Q
nameQ U
,U V
describeW _
)_ `
)` a
;a b
services 
. 
	AddScoped 
< 
IShortcodeProvider 1
,1 2
T3 4
>4 5
(5 6
)6 7
;7 8
return 
services 
; 
} 	
public 
static 
IServiceCollection (
AddShortcode) 5
(5 6
this6 :
IServiceCollection; M
servicesN V
,V W
stringX ^
name_ c
,c d
ShortcodeDelegatee v
	shortcode	w Ä
)
Ä Å
=>
Ç Ñ
services 
. 
	Configure 
< 
ShortcodeOptions /
>/ 0
(0 1
options1 8
=>9 ;
options< C
.C D 
AddShortcodeDelegateD X
(X Y
nameY ]
,] ^
	shortcode_ h
,h i
nullj n
)n o
)o p
;p q
public 
static 
IServiceCollection (
AddShortcode) 5
(5 6
this6 :
IServiceCollection; M
servicesN V
,V W
stringX ^
name_ c
,c d
ShortcodeDelegatee v
	shortcode	w Ä
,
Ä Å
Action
Ç à
<
à â
ShortcodeOption
â ò
>
ò ô
describe
ö ¢
)
¢ £
{ 	
services 
. 
	Configure 
< 
ShortcodeOptions /
>/ 0
(0 1
options1 8
=>9 ;
options< C
.C D 
AddShortcodeDelegateD X
(X Y
nameY ]
,] ^
	shortcode_ h
,h i
describej r
)r s
)s t
;t u
return 
services 
; 
} 	
} 
} †
ïC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shortcodes.Abstractions\Services\IShortcodeContextProvider.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public 

	interface %
IShortcodeContextProvider .
{		 
void

 
Contextualize

 
(

 
Context

 "
context

# *
)

* +
;

+ ,
} 
} ˙
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shortcodes.Abstractions\Services\IShortcodeDescriptorManager.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public 

	interface '
IShortcodeDescriptorManager 0
{ 
Task 
< 
IEnumerable 
< 
ShortcodeDescriptor ,
>, -
>- .#
GetShortcodeDescriptors/ F
(F G
)G H
;H I
}		 
}

 Ú
òC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shortcodes.Abstractions\Services\IShortcodeDescriptorProvider.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public 

	interface (
IShortcodeDescriptorProvider 1
{ 
Task 
< 
IEnumerable 
< 
ShortcodeDescriptor ,
>, -
>- .
DiscoverAsync/ <
(< =
)= >
;> ?
}		 
}

 ù
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shortcodes.Abstractions\Services\IShortcodeService.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
.  !
Services! )
{ 
public 

	interface 
IShortcodeService &
{ 
	ValueTask 
< 
string 
> 
ProcessAsync &
(& '
string' -
input. 3
,3 4
Context5 <
context= D
=E F
nullG K
)K L
;L M
}		 
}

 ç
ÜC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shortcodes.Abstractions\ShortcodeDescriptor.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
{ 
public 

class 
ShortcodeDescriptor $
{ 
private 
string 
_defaultValue $
;$ %
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DefaultValue "
{ 	
get 
{ 
if 
( 
String 
. 
IsNullOrEmpty (
(( )
_defaultValue) 6
)6 7
)7 8
{ 
return 
$char 
+  
Name! %
+& '
$char( +
;+ ,
} 
else 
{ 
return 
_defaultValue (
;( )
} 
} 
set 
{ 
_defaultValue   
=   
value    %
;  % &
}!! 
}"" 	
public'' 
string'' 
Hint'' 
{'' 
get''  
;''  !
set''" %
;''% &
}''' (
public,, 
string,, 
Usage,, 
{,, 
get,, !
;,,! "
set,,# &
;,,& '
},,( )
public11 
string11 
[11 
]11 

Categories11 "
{11# $
get11% (
;11( )
set11* -
;11- .
}11/ 0
=111 2
Array113 8
.118 9
Empty119 >
<11> ?
string11? E
>11E F
(11F G
)11G H
;11H I
}22 
}33 ‚
ÇC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shortcodes.Abstractions\ShortcodeOption.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
{ 
public 

class 
ShortcodeOption  
{ 
private 
string 
_defaultValue $
;$ %
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DefaultValue "
{ 	
get 
{ 
if 
( 
String 
. 
IsNullOrEmpty (
(( )
_defaultValue) 6
)6 7
)7 8
{ 
return 
$char 
+  
Name! %
+& '
$char( +
;+ ,
} 
else 
{ 
return 
_defaultValue (
;( )
} 
} 
set 
{ 
_defaultValue   
=   
value    %
;  % &
}!! 
}"" 	
public'' 
string'' 
Hint'' 
{'' 
get''  
;''  !
set''" %
;''% &
}''' (
public,, 
string,, 
Usage,, 
{,, 
get,, !
;,,! "
set,,# &
;,,& '
},,( )
public11 
string11 
[11 
]11 

Categories11 "
{11# $
get11% (
;11( )
set11* -
;11- .
}11/ 0
}22 
}33 Õ
ÉC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Shortcodes.Abstractions\ShortcodeOptions.cs
	namespace 	
OrchardCore
 
. 

Shortcodes  
{ 
public

 

class

 
ShortcodeOptions

 !
{ 
private 
readonly 

Dictionary #
<# $
string$ *
,* +
ShortcodeOption, ;
>; <
_shortcodes= H
=I J
newK N

DictionaryO Y
<Y Z
stringZ `
,` a
ShortcodeOptionb q
>q r
(r s
)s t
;t u
public 
IReadOnlyDictionary "
<" #
string# )
,) *
ShortcodeOption+ :
>: ;

Shortcodes< F
=>G I
_shortcodesJ U
;U V
private 
readonly 

Dictionary #
<# $
string$ *
,* +
ShortcodeDelegate, =
>= >
_shortcodeDelegates? R
=S T
newU X

DictionaryY c
<c d
stringd j
,j k
ShortcodeDelegatel }
>} ~
(~ 
)	 Ä
;
Ä Å
public 
IReadOnlyDictionary "
<" #
string# )
,) *
ShortcodeDelegate+ <
>< =
ShortcodeDelegates> P
=>Q S
_shortcodeDelegatesT g
;g h
internal 
ShortcodeOptions !
AddShortcode" .
(. /
string/ 5
name6 :
,: ;
Action< B
<B C
ShortcodeOptionC R
>R S
describeT \
)\ ]
{ 	
var 
option 
= 
new 
ShortcodeOption ,
{- .
Name/ 3
=4 5
name6 :
}; <
;< =
describe 
? 
. 
Invoke 
( 
option #
)# $
;$ %
_shortcodes 
[ 
name 
] 
= 
option  &
;& '
return 
this 
; 
} 	
internal 
ShortcodeOptions ! 
AddShortcodeDelegate" 6
(6 7
string7 =
name> B
,B C
ShortcodeDelegateD U
	shortcodeV _
,_ `
Actiona g
<g h
ShortcodeOptionh w
>w x
describe	y Å
)
Å Ç
{ 	
var 
option 
= 
new 
ShortcodeOption ,
{- .
Name/ 3
=4 5
name6 :
}; <
;< =
describe   
?   
.   
Invoke   
(   
option   #
)  # $
;  $ %
_shortcodes!! 
[!! 
name!! 
]!! 
=!! 
option!!  &
;!!& '
_shortcodeDelegates"" 
[""  
name""  $
]""$ %
=""& '
	shortcode""( 1
;""1 2
return$$ 
this$$ 
;$$ 
}%% 	
}&& 
}'' 