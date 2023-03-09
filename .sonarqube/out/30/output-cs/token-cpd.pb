◊
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Elasticsearch.Abstractions\ElasticOptions.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Elasticsearch *
{ 
public 

class 
ElasticOptions 
{ 
public 
IList 
< 
IElasticAnalyzer %
>% &
	Analyzers' 0
{1 2
get3 6
;6 7
}8 9
=: ;
new< ?
List@ D
<D E
IElasticAnalyzerE U
>U V
(V W
)W X
;X Y
} 
}		 ü
êC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Elasticsearch.Abstractions\ElasticQueryResults.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Elasticsearch *
{ 
public 

class 
ElasticQueryResults $
:% &
IQueryResults' 4
{ 
public 
IEnumerable 
< 
object !
>! "
Items# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public		 
long		 
Count		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
}

 
} ‚
ãC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Elasticsearch.Abstractions\ElasticTopDocs.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Elasticsearch *
{ 
public 

class 
ElasticTopDocs 
{ 
public 
List 
< 

Dictionary 
< 
string %
,% &
object' -
>- .
>. /
TopDocs0 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
List 
< 

Dictionary 
< 
string %
,% &
object' -
>- .
>. /
Fields0 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public		 
long		 
Count		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
}

 
} –
çC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Elasticsearch.Abstractions\IElasticAnalyzer.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Elasticsearch *
{ 
public 

	interface 
IElasticAnalyzer %
{		 
string

 
Name

 
{

 
get

 
;

 
}

 
	IAnalyzer 
CreateAnalyzer  
(  !
)! "
;" #
} 
} á
ëC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Elasticsearch.Abstractions\IElasticQueryService.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Elasticsearch *
{ 
public 

	interface  
IElasticQueryService )
{ 
Task 
< 
ElasticTopDocs 
> 
SearchAsync (
(( )
string) /
	indexName0 9
,9 :
string; A
queryB G
)G H
;H I
} 
} €
óC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Search.Elasticsearch.Abstractions\IElasticsearchQueryService.cs
	namespace 	
OrchardCore
 
. 
Search 
. 
Elasticsearch *
{ 
public 

	interface &
IElasticSearchQueryService /
{ 
Task 
< 
IList 
< 
string 
> 
> 
ExecuteQueryAsync -
(- .
string. 4
	indexName5 >
,> ?
QueryContainer@ N
queryO T
,T U
ListV Z
<Z [
ISort[ `
>` a
sortb f
,f g
inth k
startl q
=r s
$numt u
,u v
intw z
end{ ~
=	 Ä
$num
Å É
)
É Ñ
;
Ñ Ö
} 
} 