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
VERIFY email is unique
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
VERIFY Skills has Accounting (+5)
VERIFY Skills has Anthropology (+1)
VERIFY Skills has Appraise (+5)
VERIFY Skills has Archaeology (+1)
VERIFY Skills has Art_Craft (+5)
VERIFY Skills has Charm (+15)
VERIFY Skills has Climb (+20)
VERIFY Skills has Credit Rating (+Backgorund)
VERIFY Skills has Cthulhu Mythos (+0)
VERIFY Skills has Disguise (+5)
VERIFY Skills has Dodge (+(Dex/5))
VERIFY Skills has Drive Auto (+20)
VERIFY Skills has Elec_Repair (+10)
VERIFY Skills has Fast_Talk (+5)
VERIFY Skills has Fighting (+25)
VERIFY Skills has Firearms_Handgun (+20)
VERIFY Skills has Firearms_RifleShotgun (+25)
VERIFY Skills has First Aid (+30)
VERIFY Skills has History (+5)
VERIFY Skills has Intimidate (+15)
VERIFY Skills has Jump (+20)
VERIFY Skills has Language_Other (+1)
VERIFY Skills has Language_Own (+EDU)
VERIFY Skills has Law (+5)
VERIFY Skills has Library Use (+20)
VERIFY Skills has Listen (+20)
VERIFY Skills has Locksmith (+1)
VERIFY Skills has Mech_Repair (+10)
VERIFY Skills has Medicine (+10)
VERIFY Skills has Natural_World (+10)
VERIFY Skills has Navigate (+10)
VERIFY Skills has Occult (+5)
VERIFY Skills has Persuade (+5)
VERIFY Skills has Pilot (+1)
VERIFY Skills has Psychoanalysis (+1)
VERIFY Skills has Psychology (+10)
VERIFY Skills has Ride (+5)
VERIFY Skills has Sciance (+1)
VERIFY Skills has Sleight_of_Hand (+10)
VERIFY Skills has Spot_Hidden (+25)
VERIFY Skills has Stealth (+20)
VERIFY Skills has Survival (+10)
VERIFY Skills has Swim (+20)
VERIFY Skills has Throw (+20)
VERIFY Skills has Track (+10)
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
## Add Tables
- Age
```
40> no stat change.
40< (-1 MOV, -5 from STR/CON/DEX, (MAKE [EDU CHECK] 2 times) -5 APP)
50< (-2 MOV, -10 from STR/CON/DEX, (MAKE [EDU CHECK] 3 times) -10 APP)
60< (-3 MOV, -20 from STR/CON/DEX, (MAKE [EDU CHECK] 4 times) -15 APP)
70< (-4 MOV, -40 from STR/CON/DEX, (MAKE [EDU CHECK] 4 times) -20 APP)
80< (-5 MOV, -80 from STR/CON/DEX, (MAKE [EDU CHECK] 4 times) -25 APP)
```
- Bonus and Build damage table (STR + SIZ)
```
64> (Damage -2, Build -2)
65-84 (Damage -1, Build -1)
85-124 (Damage +0, Build +0)
125-164 (Damage +1d4, Build +1)
165-204 (Damage +1d6, Build +2)
```
- Backgrounds
```
Accountant - (Occ_skill = EDU * 4, Credit = 30-70, [Accounting, Law, Library Use, Listen, Persuade, Spot Hidden, any two other skills as personal or era specialties])
Acrobat - (Occ_skill = EDU * 2 + DEX * 2, Credit = 9-20, [Climb, Dodge, Jump, Throw, Spot Hidden, Swim, any two other skills as personal or era specialties.]
Actor - (Occ_skill = EDU * 2 + APP * 2, Credit = 9-40, [Art/Craft (Acting), Disguise, Fighting, History, two interpersonal skills (Charm, Fast Talk, Intimidate, or Persuade), Psychology, any one other skill as a personal or era specialty.]
```
## Connections

