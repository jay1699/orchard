¨
{C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Redis.Abstractions\IRedisService.cs
	namespace 	
OrchardCore
 
. 
Redis 
{ 
public 

	interface 
IRedisService "
:# $ 
IModularTenantEvents% 9
{ 
Task		 
ConnectAsync		 
(		 
)		 
;		 "
IConnectionMultiplexer

 

Connection

 )
{

* +
get

, /
;

/ 0
}

1 2
string 
InstancePrefix 
{ 
get  #
;# $
}% &
	IDatabase 
Database 
{ 
get  
;  !
}" #
} 
} ü
zC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Redis.Abstractions\RedisOptions.cs
	namespace 	
OrchardCore
 
. 
Redis 
{ 
public 

class 
RedisOptions 
{		 
public  
ConfigurationOptions # 
ConfigurationOptions$ 8
=>9 ; 
ConfigurationOptions< P
.P Q
ParseQ V
(V W
ConfigurationW d
)d e
;e f
public 
string 
Configuration #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
InstancePrefix $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} 