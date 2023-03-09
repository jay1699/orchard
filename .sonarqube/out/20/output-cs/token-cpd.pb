Ë
†C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.FileStorage.Abstractions\FileStoreException.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
{ 
public 

class 
FileStoreException #
:$ %
	Exception& /
{ 
public 
FileStoreException !
(! "
string" (
message) 0
)0 1
:2 3
base4 8
(8 9
message9 @
)@ A
{ 	
}		 	
public 
FileStoreException !
(! "
string" (
message) 0
,0 1
	Exception2 ;
innerException< J
)J K
:L M
baseN R
(R S
messageS Z
,Z [
innerException\ j
)j k
{ 	
} 	
} 
} ÿ*
~C:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.FileStorage.Abstractions\IFileStore.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
{ 
public 

	interface 

IFileStore 
{ 
Task 
< 
IFileStoreEntry 
> 
GetFileInfoAsync .
(. /
string/ 5
path6 :
): ;
;; <
Task$$ 
<$$ 
IFileStoreEntry$$ 
>$$ !
GetDirectoryInfoAsync$$ 3
($$3 4
string$$4 :
path$$; ?
)$$? @
;$$@ A
IAsyncEnumerable00 
<00 
IFileStoreEntry00 (
>00( )$
GetDirectoryContentAsync00* B
(00B C
string00C I
path00J N
=00O P
null00Q U
,00U V
bool00W [!
includeSubDirectories00\ q
=00r s
false00t y
)00y z
;00z {
Task88 
<88 
bool88 
>88 #
TryCreateDirectoryAsync88 *
(88* +
string88+ 1
path882 6
)886 7
;887 8
Task?? 
<?? 
bool?? 
>?? 
TryDeleteFileAsync?? %
(??% &
string??& ,
path??- 1
)??1 2
;??2 3
TaskFF 
<FF 
boolFF 
>FF #
TryDeleteDirectoryAsyncFF *
(FF* +
stringFF+ 1
pathFF2 6
)FF6 7
;FF7 8
TaskNN 
MoveFileAsyncNN 
(NN 
stringNN !
oldPathNN" )
,NN) *
stringNN+ 1
newPathNN2 9
)NN9 :
;NN: ;
TaskVV 
CopyFileAsyncVV 
(VV 
stringVV !
srcPathVV" )
,VV) *
stringVV+ 1
dstPathVV2 9
)VV9 :
;VV: ;
Task^^ 
<^^ 
Stream^^ 
>^^ 
GetFileStreamAsync^^ '
(^^' (
string^^( .
path^^/ 3
)^^3 4
;^^4 5
Taskff 
<ff 
Streamff 
>ff 
GetFileStreamAsyncff '
(ff' (
IFileStoreEntryff( 7
fileStoreEntryff8 F
)ffF G
;ffG H
Taskss 
<ss 
stringss 
>ss %
CreateFileFromStreamAsyncss .
(ss. /
stringss/ 5
pathss6 :
,ss: ;
Streamss< B
inputStreamssC N
,ssN O
boolssP T
	overwritessU ^
=ss_ `
falsessa f
)ssf g
;ssg h
}tt 
publicvv 

staticvv 
classvv  
IFileStoreExtensionsvv ,
{ww 
public~~ 
static~~ 
string~~ 
Combine~~ $
(~~$ %
this~~% )

IFileStore~~* 4
	fileStore~~5 >
,~~> ?
params~~@ F
string~~G M
[~~M N
]~~N O
paths~~P U
)~~U V
{ 	
if
€€ 
(
€€ 
paths
€€ 
.
€€ 
Length
€€ 
==
€€ 
$num
€€  !
)
€€! "
return
 
null
 
;
 
var
ƒƒ 
normalizedParts
ƒƒ 
=
ƒƒ  !
paths
„„ 
.
…… 
Select
…… 
(
…… 
x
…… 
=>
……  
	fileStore
……! *
.
……* +
NormalizePath
……+ 8
(
……8 9
x
……9 :
)
……: ;
)
……; <
.
†† 
Where
†† 
(
†† 
x
†† 
=>
†† 
!
††  !
String
††! '
.
††' (
IsNullOrEmpty
††( 5
(
††5 6
x
††6 7
)
††7 8
)
††8 9
.
‡‡ 
ToArray
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡ 
var
‰‰ 
combined
‰‰ 
=
‰‰ 
String
‰‰ !
.
‰‰! "
Join
‰‰" &
(
‰‰& '
$str
‰‰' *
,
‰‰* +
normalizedParts
‰‰, ;
)
‰‰; <
;
‰‰< =
if
ŒŒ 
(
ŒŒ 
paths
ŒŒ 
[
ŒŒ 
$num
ŒŒ 
]
ŒŒ 
?
ŒŒ 
.
ŒŒ 

StartsWith
ŒŒ $
(
ŒŒ$ %
$char
ŒŒ% (
)
ŒŒ( )
==
ŒŒ* ,
true
ŒŒ- 1
)
ŒŒ1 2
combined
 
=
 
$str
 
+
  
combined
! )
;
) *
return
 
combined
 
;
 
}
 	
public
™™ 
static
™™ 
string
™™ 
NormalizePath
™™ *
(
™™* +
this
™™+ /

IFileStore
™™0 :
	fileStore
™™; D
,
™™D E
string
™™F L
path
™™M Q
)
™™Q R
{
šš 	
if
›› 
(
›› 
path
›› 
==
›› 
null
›› 
)
›› 
return
œœ 
null
œœ 
;
œœ 
return
žž 
path
žž 
.
žž 
Replace
žž 
(
žž  
$char
žž  $
,
žž$ %
$char
žž& )
)
žž) *
.
žž* +
Trim
žž+ /
(
žž/ 0
$char
žž0 3
,
žž3 4
$char
žž5 8
)
žž8 9
;
žž9 :
}
ŸŸ 	
}
   
}¡¡ £
ƒC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.FileStorage.Abstractions\IFileStoreCache.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
{ 
public

 

	interface

 
IFileStoreCache

 $
{ 
Task 
< 
bool 
> 
IsCachedAsync  
(  !
string! '
path( ,
), -
;- .
Task 
SetCacheAsync 
( 
Stream !
stream" (
,( )
IFileStoreEntry* 9
fileStoreEntry: H
,H I
CancellationTokenJ [
cancellationToken\ m
)m n
;n o
} 
} Ï
ƒC:\Users\jay.ahir\Desktop\OrchardCore-main\OrchardCore-main\src\OrchardCore\OrchardCore.FileStorage.Abstractions\IFileStoreEntry.cs
	namespace 	
OrchardCore
 
. 
FileStorage !
{ 
public 

	interface 
IFileStoreEntry $
{		 
string 
Path 
{ 
get 
; 
} 
string 
Name 
{ 
get 
; 
} 
string 
DirectoryPath 
{ 
get "
;" #
}$ %
long 
Length 
{ 
get 
; 
} 
DateTime!! 
LastModifiedUtc!!  
{!!! "
get!!# &
;!!& '
}!!( )
bool&& 
IsDirectory&& 
{&& 
get&& 
;&& 
}&&  !
}'' 
}(( 