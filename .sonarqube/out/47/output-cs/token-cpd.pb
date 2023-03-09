‚ 
¡C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Configuration.KeyVault\Extensions\AzureKeyVaultWebHostBuilderExtension.cs
	namespace		 	
OrchardCore		
 
.		 
Configuration		 #
.		# $
KeyVault		$ ,
.		, -

Extensions		- 7
{

 
public 

static 
class 0
$AzureKeyVaultWebHostBuilderExtension <
{ 
public 
static 
IHostBuilder "'
AddOrchardCoreAzureKeyVault# >
(> ?
this? C
IHostBuilderD P
builderQ X
)X Y
{ 	
if 
( 
builder 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
builder7 >
)> ?
)? @
;@ A
} 
builder 
. '
AddOrchardCoreAzureKeyVault /
(/ 0
new0 3"
DefaultAzureCredential4 J
(J K)
includeInteractiveCredentialsK h
:h i
truej n
)n o
)o p
;p q
return 
builder 
; 
} 	
public$$ 
static$$ 
IHostBuilder$$ "'
AddOrchardCoreAzureKeyVault$$# >
($$> ?
this$$? C
IHostBuilder$$D P
builder$$Q X
,$$X Y
TokenCredential$$Z i
tokenCredential$$j y
)$$y z
{%% 	
if&& 
(&& 
builder&& 
==&& 
null&& 
)&&  
{'' 
throw(( 
new(( !
ArgumentNullException(( /
(((/ 0
nameof((0 6
(((6 7
builder((7 >
)((> ?
)((? @
;((@ A
})) 
builder++ 
.++ %
ConfigureAppConfiguration++ -
(++- .
(++. /
context++/ 6
,++6 7
configuration++8 E
)++E F
=>++G I
{,, 
var-- 
builtConfig-- 
=--  !
configuration--" /
.--/ 0
Build--0 5
(--5 6
)--6 7
;--7 8
var.. 
keyVaultName..  
=..! "
builtConfig..# .
[... /
$str../ d
]..d e
;..e f
TimeSpan00 
?00 
reloadInterval00 (
=00) *
null00+ /
;00/ 0
if11 
(11 
Double11 
.11 
TryParse11 #
(11# $
builtConfig11$ /
[11/ 0
$str110 g
]11g h
,11h i
out11j m
var11n q
interval11r z
)11z {
)11{ |
{22 
reloadInterval33 "
=33# $
TimeSpan33% -
.33- .
FromSeconds33. 9
(339 :
interval33: B
)33B C
;33C D
}44 
var66 
keyVaultEndpointUri66 '
=66( )
new66* -
Uri66. 1
(661 2
$str662 <
+66= >
keyVaultName66? K
+66L M
$str66N `
)66` a
;66a b
var77 
configOptions77 !
=77" #
new77$ '-
!AzureKeyVaultConfigurationOptions77( I
(77I J
)77J K
{88 
Manager99 
=99 
new99 !&
AzureKeyVaultSecretManager99" <
(99< =
)99= >
,99> ?
ReloadInterval:: "
=::# $
reloadInterval::% 3
};; 
;;; 
configuration== 
.== 
AddAzureKeyVault== .
(==. /
keyVaultEndpointUri>> '
,>>' (
tokenCredential?? #
,??# $
configOptions@@ !
)AA 
;AA 
}BB 
)BB 
;BB 
returnDD 
builderDD 
;DD 
}EE 	
}FF 
}GG Ñ
•C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.Configuration.KeyVault\Services\AzureKeyVaultSecretManager.cs
	namespace 	
OrchardCore
 
. 
Configuration #
.# $
KeyVault$ ,
., -
Services- 5
{ 
public 

class &
AzureKeyVaultSecretManager +
:, -!
KeyVaultSecretManager. C
{ 
public 
override 
string 
GetKey %
(% &
KeyVaultSecret& 4
secret5 ;
); <
=>= ?
secret		 
.		 
Name		 
.		 
Replace		 
(		  
$str		  %
,		% &
$str		' *
)		* +
.		+ ,
Replace		, 3
(		3 4
$str		4 8
,		8 9
$str		: =
)		= >
;		> ?
}

 
} 