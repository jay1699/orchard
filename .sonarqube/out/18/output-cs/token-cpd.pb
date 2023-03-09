Õ
ŽC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\Extensions\FeedBuilderExtensions.cs
	namespace 	
OrchardCore
 
. 
Feeds 
{ 
public 

static 
class !
FeedBuilderExtensions -
{ 
public 
static 
void 
AddProperty &
(& '
this' +
IFeedBuilder, 8
feedBuilder9 D
,D E
FeedContextF Q
contextR Y
,Y Z
FeedItem[ c
feedItemd l
,l m
stringn t
nameu y
,y z
string	{ 
value
‚ ‡
)
‡ ˆ
=>		 
feedBuilder		 
.		 
AddProperty		 &
(		& '
context		' .
,		. /
feedItem		0 8
,		8 9
new		: =
XElement		> F
(		F G
name		G K
,		K L
value		M R
)		R S
)		S T
;		T U
}

 
} Š	
zC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\IFeedBuilder.cs
	namespace 	
OrchardCore
 
. 
Feeds 
{ 
public 

	interface 
IFeedBuilder !
{		 
Task

 
<

 
	XDocument

 
>

 
ProcessAsync

 $
(

$ %
FeedContext

% 0
context

1 8
,

8 9
Func

: >
<

> ?
Task

? C
>

C D
populate

E M
)

M N
;

N O
FeedItem 
< 
TItem 
> 
AddItem 
<  
TItem  %
>% &
(& '
FeedContext' 2
context3 :
,: ;
TItem< A
contentItemB M
)M N
;N O
void 
AddProperty 
( 
FeedContext $
context% ,
,, -
FeedItem. 6
feedItem7 ?
,? @
XElementA I
elementJ Q
)Q R
;R S
} 
} ‡
‚C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\IFeedBuilderProvider.cs
	namespace 	
OrchardCore
 
. 
Feeds 
{ 
public 

	interface  
IFeedBuilderProvider )
{ 
FeedBuilderMatch 
Match 
( 
FeedContext *
context+ 2
)2 3
;3 4
} 
public

 

class

 
FeedBuilderMatch

 !
{ 
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 
IFeedBuilder 
FeedBuilder '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Ù
~C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\IFeedItemBuilder.cs
	namespace 	
OrchardCore
 
. 
Feeds 
{ 
public 

	interface 
IFeedItemBuilder %
{ 
Task 
PopulateAsync 
( 
FeedContext &
context' .
). /
;/ 0
}		 
}

 Ì
xC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\IFeedQuery.cs
	namespace 	
OrchardCore
 
. 
Feeds 
{ 
public 

	interface 

IFeedQuery 
{ 
Task 
ExecuteAsync 
( 
FeedContext %
context& -
)- .
;. /
}		 
}

 °
€C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\IFeedQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Feeds 
{ 
public 

	interface 
IFeedQueryProvider '
{ 
Task 
< 
FeedQueryMatch 
> 

MatchAsync '
(' (
FeedContext( 3
context4 ;
); <
;< =
}		 
public 

class 
FeedQueryMatch 
{ 
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 

IFeedQuery 
	FeedQuery #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} È
‰C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\Models\ContextualizeContext.cs
	namespace 	
OrchardCore
 
. 
Feeds 
. 
Models "
{ 
public 

class  
ContextualizeContext %
{ 
public 
IServiceProvider 
ServiceProvider  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public		 

IUrlHelper		 
Url		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
}

 
} Æ
€C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\Models\FeedContext.cs
	namespace 	
OrchardCore
 
. 
Feeds 
. 
Models "
{ 
public 

class 
FeedContext 
{ 
public 
FeedContext 
( 
IUpdateModel '
updater( /
,/ 0
string1 7
format8 >
)> ?
{ 	
Updater		 
=		 
updater		 
;		 
Format

 
=

 
format

 
;

 
Response 
= 
new 
FeedResponse '
(' (
)( )
;) *
} 	
public 
IUpdateModel 
Updater #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Format 
{ 
get "
;" #
set$ '
;' (
}) *
public 
FeedResponse 
Response $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
IFeedBuilder 
Builder #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ó
}C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\Models\FeedItem.cs
	namespace 	
OrchardCore
 
. 
Feeds 
. 
Models "
{ 
public 

class 
FeedItem 
{ 
private 
object 
_item 
; 
public 
object 
Item 
{ 
get  
{! "
return# )
_item* /
;/ 0
}1 2
set3 6
{7 8
SetItem9 @
(@ A
valueA F
)F G
;G H
}I J
}K L
public		 
XElement		 
Element		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
	protected 
virtual 
void 
SetItem &
(& '
object' -
item. 2
)2 3
{ 	
_item 
= 
item 
; 
} 	
} 
public 

class 
FeedItem 
< 
TItem 
>  
:! "
FeedItem# +
{ 
private 
TItem 
_item 
; 
public 
new 
TItem 
Item 
{ 
get  #
{$ %
return& ,
_item- 2
;2 3
}4 5
set6 9
{: ;
SetItem< C
(C D
valueD I
)I J
;J K
}L M
}N O
	protected 
override 
void 
SetItem  '
(' (
object( .
item/ 3
)3 4
{ 	
_item 
= 
( 
TItem 
) 
item 
;  
base 
. 
SetItem 
( 
item 
) 
; 
} 	
} 
} °
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\Models\FeedMetadata.cs
	namespace 	
OrchardCore
 
. 
Feeds 
. 
Models "
{ 
public 

class 
FeedMetadata 
{ 
public 
bool 
DisableRssFeed "
{# $
get% (
;( )
set* -
;- .
}/ 0
public

 
string

 
FeedProxyUrl

 "
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
/ 0
} 
} „
C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Abstractions\Models\FeedResponse.cs
	namespace 	
OrchardCore
 
. 
Feeds 
. 
Models "
{ 
public 

class 
FeedResponse 
{ 
public		 
XElement		 
Element		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
IList

 
<

 
FeedItem

 
>

 
Items

 $
{

% &
get

' *
;

* +
}

, -
=

. /
new

0 3
List

4 8
<

8 9
FeedItem

9 A
>

A B
(

B C
)

C D
;

D E
public 
IList 
< 
Action 
<  
ContextualizeContext 0
>0 1
>1 2
Contextualizers3 B
{C D
getE H
;H I
}J K
=L M
newN Q
ListR V
<V W
ActionW ]
<] ^ 
ContextualizeContext^ r
>r s
>s t
(t u
)u v
;v w
public 
void 
Contextualize !
(! "
Action" (
<( ) 
ContextualizeContext) =
>= >
contextualizer? M
)M N
{ 	
Contextualizers 
. 
Add 
(  
contextualizer  .
). /
;/ 0
} 	
} 
} 