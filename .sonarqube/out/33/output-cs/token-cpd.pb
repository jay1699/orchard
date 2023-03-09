›
xC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Core\Rss\RssFeedBuilder.cs
	namespace 	
OrchardCore
 
. 
Feeds 
. 
Rss 
{ 
public 

class 
RssFeedBuilder 
:  !
IFeedBuilder" .
{		 
public

 
async

 
Task

 
<

 
	XDocument

 #
>

# $
ProcessAsync

% 1
(

1 2
FeedContext

2 =
context

> E
,

E F
Func

G K
<

K L
Task

L P
>

P Q
populate

R Z
)

Z [
{ 	
var 
rss 
= 
new 
XElement "
(" #
$str# (
)( )
;) *
rss 
. 
SetAttributeValue !
(! "
$str" +
,+ ,
$str- 2
)2 3
;3 4
var 
channel 
= 
new 
XElement &
(& '
$str' 0
)0 1
;1 2
context 
. 
Response 
. 
Element $
=% &
channel' .
;. /
rss 
. 
Add 
( 
channel 
) 
; 
await 
populate 
( 
) 
; 
return 
new 
	XDocument  
(  !
rss! $
)$ %
;% &
} 	
public 
FeedItem 
< 
TItem 
> 
AddItem &
<& '
TItem' ,
>, -
(- .
FeedContext. 9
context: A
,A B
TItemC H
itemI M
)M N
{ 	
var 
feedItem 
= 
new 
FeedItem '
<' (
TItem( -
>- .
{ 
Item 
= 
item 
, 
Element 
= 
new 
XElement &
(& '
$str' -
)- .
,. /
} 
; 
context 
. 
Response 
. 
Items "
." #
Add# &
(& '
feedItem' /
)/ 0
;0 1
context   
.   
Response   
.   
Element   $
.  $ %
Add  % (
(  ( )
feedItem  ) 1
.  1 2
Element  2 9
)  9 :
;  : ;
return!! 
feedItem!! 
;!! 
}"" 	
public$$ 
void$$ 
AddProperty$$ 
($$  
FeedContext$$  +
context$$, 3
,$$3 4
FeedItem$$5 =
feedItem$$> F
,$$F G
XElement$$H P
element$$Q X
)$$X Y
{%% 	
if&& 
(&& 
feedItem&& 
==&& 
null&&  
)&&  !
{'' 
context(( 
.(( 
Response((  
.((  !
Element((! (
.((( )
Add(() ,
(((, -
element((- 4
)((4 5
;((5 6
})) 
else** 
{++ 
feedItem,, 
.,, 
Element,,  
.,,  !
Add,,! $
(,,$ %
element,,% ,
),,, -
;,,- .
}-- 
}.. 	
}// 
}00 È
ÄC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Core\Rss\RssFeedBuilderProvider.cs
	namespace 	
OrchardCore
 
. 
Feeds 
. 
Rss 
{ 
public 

class "
RssFeedBuilderProvider '
:( ) 
IFeedBuilderProvider* >
{ 
public 
FeedBuilderMatch 
Match  %
(% &
FeedContext& 1
context2 9
)9 :
{ 	
if		 
(		 
context		 
.		 
Format		 
==		 !
$str		" '
)		' (
{

 
return 
new 
FeedBuilderMatch +
{ 
FeedBuilder 
=  !
new" %
RssFeedBuilder& 4
(4 5
)5 6
,6 7
Priority 
= 
-  
$num  !
} 
; 
} 
return 
null 
; 
} 	
} 
} Í
ÅC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Feeds.Core\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Feeds 
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddFeeds) 1
(1 2
this2 6
IServiceCollection7 I
servicesJ R
)R S
{		 	
services

 
.

 
AddSingleton

 !
<

! " 
IFeedBuilderProvider

" 6
,

6 7"
RssFeedBuilderProvider

8 N
>

N O
(

O P
)

P Q
;

Q R
return 
services 
; 
} 	
} 
} 