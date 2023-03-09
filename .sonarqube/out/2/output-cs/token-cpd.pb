“
}C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Queries.Abstractions\IQueryManager.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public		 

	interface		 
IQueryManager		 "
{

 
Task 
< 
IEnumerable 
< 
Query 
> 
>  
ListQueriesAsync! 1
(1 2
)2 3
;3 4
Task 
SaveQueryAsync 
( 
string "
name# '
,' (
Query) .
query/ 4
)4 5
;5 6
Task 
DeleteQueryAsync 
( 
string $
name% )
)) *
;* +
Task   
<   
Query   
>   
LoadQueryAsync   "
(  " #
string  # )
name  * .
)  . /
;  / 0
Task'' 
<'' 
Query'' 
>'' 
GetQueryAsync'' !
(''! "
string''" (
name'') -
)''- .
;''. /
Task// 
<// 
IQueryResults// 
>// 
ExecuteQueryAsync// -
(//- .
Query//. 3
query//4 9
,//9 :
IDictionary//; F
<//F G
string//G M
,//M N
object//O U
>//U V

parameters//W a
)//a b
;//b c
Task44 
<44 
string44 
>44 
GetIdentifierAsync44 '
(44' (
)44( )
;44) *
}55 
}66 Ÿ
}C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Queries.Abstractions\IQueryResults.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

	interface 
IQueryResults "
{		 
public 
IEnumerable 
< 
object !
>! "
Items# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ×
|C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Queries.Abstractions\IQuerySource.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public		 

	interface		 
IQuerySource		 !
{

 
string 
Name 
{ 
get 
; 
} 
Query 
Create 
( 
) 
; 
Task 
< 
IQueryResults 
> 
ExecuteQueryAsync -
(- .
Query. 3
query4 9
,9 :
IDictionary; F
<F G
stringG M
,M N
objectO U
>U V

parametersW a
)a b
;b c
} 
} õ
‚C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Queries.Abstractions\LuceneQueryResults.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
[ 
Obsolete 
( 
$str	 ˜
,
˜ ™
false
š Ÿ
)
Ÿ  
]
  ¡
public 

class 
LuceneQueryResults #
:$ %
IQueryResults& 3
{ 
public		 
IEnumerable		 
<		 
object		 !
>		! "
Items		# (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
int

 
Count

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
} 
} ’

uC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Queries.Abstractions\Query.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

class 
Query 
{ 
	protected 
Query 
( 
string 
source %
)% &
{ 	
Source 
= 
source 
; 
} 	
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Source 
{ 
get "
;" #
}$ %
public 
string 
Schema 
{ 
get "
;" #
set$ '
;' (
}) *
public!! 
virtual!! 
bool!! 
ResultsOfType!! )
<!!) *
T!!* +
>!!+ ,
(!!, -
)!!- .
=>!!/ 1
typeof!!2 8
(!!8 9
T!!9 :
)!!: ;
==!!< >
typeof!!? E
(!!E F
object!!F L
)!!L M
;!!M N
}"" 
}## 