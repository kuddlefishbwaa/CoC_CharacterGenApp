# Testing Plan
Here I will be having all of the sections of the web app planned out as to be able see what kind of tests are needed for each part of the website.
## User profiles
- Username
```
VERIFY user has username
```
- Email
```
VERIFY user has email
```
- Password
```
VERIFY user has password
VERIFY login password belongs to user on log in
```
## Character Sheet Views
- Character sheet List
```
VERIFY user has Character
VERIFY create new function
VERIFY update function
VERIFY delete function
VERIFY export to pdf
```
- NPC List
```
VERIFY user has NPC
VERIFY user has Game Master checked on to show list
```
## Stats
- Generate random character
```
VERIFY character has characteristics
VERIFY character has skills 
VERIFY character has details
VERIFY character has inventory
```
- Generate random details
```
VERIFY details has name
VERIFY details has birthplace
VERIFY details has pronouns
VERIFY details has ocupation
VERIFY details has residance
VERIFY details has age
```
- Generate random characteristics
```
VERIFY Characteristics are in legal range
VERIFY Characteristics has STR
VERIFY Characteristics has DEX
VERIFY Characteristics has CON
VERIFY Characteristics has INT
VERIFY Characteristics has SIZ
VERIFY Characteristics has POW
VERIFY Characteristics has APP
VERIFY Characteristics has EDU
```
- Generate random skills
```
VERIFY Skills has Accounting
VERIFY Skills has Anthropology
VERIFY Skills has Appraise
VERIFY Skills has Archaeology
VERIFY Skills has Art_Craft
VERIFY Skills has Charm
VERIFY Skills has Climb
VERIFY Skills has Credit Rating
VERIFY Skills has Cthulhu Mythos
VERIFY Skills has Disguise
VERIFY Skills has Dodge
VERIFY Skills has Drive Auto
VERIFY Skills has Elec_Repair
VERIFY Skills has Fast_Talk
VERIFY Skills has Fighting
VERIFY Skills has Firearms_Handgun
VERIFY Skills has Firearms_RifleShotgun
VERIFY Skills has First Aid
VERIFY Skills has History
VERIFY Skills has Intimidate
VERIFY Skills has Jump
VERIFY Skills has Language_Other
VERIFY Skills has Language_Own
VERIFY Skills has Law
VERIFY Skills has Library Use
VERIFY Skills has Listen
VERIFY Skills has Locksmith
VERIFY Skills has Mech_Repair 
VERIFY Skills has Medicine
VERIFY Skills has Natural_World
VERIFY Skills has Navigate
VERIFY Skills has Occult
VERIFY Skills has Persuade
VERIFY Skills has Pilot
VERIFY Skills has Psychoanalysis
VERIFY Skills has Psychology
VERIFY Skills has Ride
VERIFY Skills has Sciance
VERIFY Skills has Sleight_of_Hand
VERIFY Skills has Spot_Hidden
VERIFY Skills has Stealth
VERIFY Skills has Survival
VERIFY Skills has Swim
VERIFY Skills has Throw
VERIFY Skills has Track
```
- Drived characteistics
```
Verify drived_characteistics has Characteristics
Verify drived_characteistics has Skills
Verify drived_characteistics has Hitpoints = (con+siz)/10
Verify drived_characteistics has Move = ((str&dex < siz = 7) OR (str OR dex == siz = 8) OR (str&dex > siz = 9) - Age scale
Verify drived_characteistics has Damage_bonus = (siz+str SCALE)
Verify drived_characteistics has Cash
Verify drived_characteistics has Assets
Verify drived_characteistics has Magic_points = pow/5
Verify drived_characteistics has Sanity = pow
Verify drived_characteistics has Occupation pool = Edu * Occupation_mod
Verify drived_characteistics has Personal Interests pool= int * 2 
```
