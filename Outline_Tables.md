# Tables
This file is supposed to outline each of the tables and that the app will use for cross referancing statistics of characters after infromation is generated and added to the character based on existing values known as ADD TABLES. In addition to that it will show the structure of each of the data bases both for referancing and understanding the shapes of each profile and database.

## Profile
| Colomn | intent | 
| --- | --- |
| ID | The user id in the database |
| Username | Login username, used for sharing content |
| Email |  Email for verification and mailing |
| Password |  Used to protect the account |

## Characters
| Colomn | Reff table|
| --- | --- |
| ID | The user ID in the database |
| Character ID | ID of the character for in the database |
| Name | Details |
| Birthplace | Details |
| Pronouns | Details |
| Ocupation | Add Tables  |
| Residance | Details |
| Age | Details |
| Characteristics | Characteristics, Add Tables |
| Skills | Characteristics, Add Tables|
| Drived_characteistics | Drived_characteistics, Characteristics, Add Tables|

| Details | Calculation |
| --- | --- |
| Name | Random_name |
| Birthplace | Random_birthplace |
| Pronouns | Random_Pronouns |
| Residance | Random_Residance |
| Age | 20 - 90 |

| Characteristics | Calculation |
| --- | --- |
| Strength | 3-18 * 5 |
| Dexterity | 3-18 * 5 |
| Constitution | 3-18 * 5 |
| Appearance | 3-18 * 5 |
| Power | 3-18 * 5 |
| Luck | 3-18 * 5 |
| Size | (2-12 + 6) * 5 |
| Intelligence | (2-12 + 6) * 5 |
| Education | (2-12 + 6) * 5 |

| Skills | Calculation |
| --- | --- |
| Accounting | assigned_ocupation_points + assigned_skill_points + 5 |
| Anthropology | assigned_ocupation_points + assigned_skill_points + 1 |
| Appraise | assigned_ocupation_points + assigned_skill_points + 5 |
| Archaeology | assigned_ocupation_points + assigned_skill_points + 1 |
| Art_Craft | assigned_ocupation_points + assigned_skill_points + 5 |
| Charm | assigned_ocupation_points + assigned_skill_points + 15 |
| Climb | assigned_ocupation_points + assigned_skill_points + 20 |
| Credit Rating | Credit_min <= asssigned_skill_points <= Credit_max |
| Cthulhu Mythos | assigned_ocupation_points + assigned_skill_points + 0 |
| Disguise | assigned_ocupation_points + assigned_skill_points + 5 |
| Dodge | assigned_ocupation_points + assigned_skill_points + (Dex/5) |
| Drive Auto | assigned_ocupation_points + assigned_skill_points + 20 |
| Elec_Repair | assigned_ocupation_points + assigned_skill_points + 10 |
| Fast_Talk | assigned_ocupation_points + assigned_skill_points + 5 |
| Fighting | assigned_ocupation_points + assigned_skill_points + 25 |
| Firearms_Handgun | assigned_ocupation_points + assigned_skill_points + 20 |
| Firearms_RifleShotgun | assigned_ocupation_points + assigned_skill_points + 25 |
| First Aid | assigned_ocupation_points + assigned_skill_points + 30 |
| History | assigned_ocupation_points + assigned_skill_points + 5 | 
| Intimidate | assigned_ocupation_points + assigned_skill_points + 15 |
| Jump | assigned_ocupation_points + assigned_skill_points + 20 |
| Language_Other | assigned_ocupation_points + assigned_skill_points + 1 |
| Language_Own | assigned_ocupation_points + assigned_skill_points + EDU |
| Law | assigned_ocupation_points + assigned_skill_points + 5 |
| Library Use | assigned_ocupation_points + assigned_skill_points + 20 |
| Listen | assigned_ocupation_points + assigned_skill_points + 20 |
| Locksmith | assigned_ocupation_points + assigned_skill_points + 1 |
| Mech_Repair | assigned_ocupation_points + assigned_skill_points + 10 |
| Medicine | assigned_ocupation_points + assigned_skill_points + 10 |
| Natural_World | assigned_ocupation_points + assigned_skill_points + 10 |
| Navigate | assigned_ocupation_points + assigned_skill_points + 10 |
| Occult | assigned_ocupation_points + assigned_skill_points + 5 |
| Persuade | assigned_ocupation_points + assigned_skill_points + 5 |
| Pilot | assigned_ocupation_points + assigned_skill_points + 1 |
| Psychoanalysis | assigned_ocupation_points + assigned_skill_points + 1 |
| Psychology | assigned_ocupation_points + assigned_skill_points + 10 |
| Ride | assigned_ocupation_points + assigned_skill_points + 5 |
| Sciance | assigned_ocupation_points + assigned_skill_points + 1 |
| Sleight_of_Hand | assigned_ocupation_points + assigned_skill_points + 10 |
| Spot_Hidden | assigned_ocupation_points + assigned_skill_points + 25 |
| Stealth | assigned_ocupation_points + assigned_skill_points + 20 |
| Survival | assigned_ocupation_points + assigned_skill_points + 10 |
| Swim | assigned_ocupation_points + assigned_skill_points + 20 |
| Throw | assigned_ocupation_points + assigned_skill_points + 20 |
| Track | assigned_ocupation_points + assigned_skill_points + 10 |

| Drived_characteistics | Calculation |
| --- | --- |
| Hitpoints | (con+siz) / 10 |
| Move | ((str&dex < siz = 7) OR (str OR dex == siz = 8) OR (str&dex > siz = 9)) - Age scale |
| Damage_bonus | Build+Damage_build |
| Cash | CreditRaiting_Cash |
| Assets | CreditRaiting_Assets |
| Spending Level | CreditRaiting_Spending |
| Magic_points | Pow / 5 |
| Sanity | Pow |
| Occupation pool | Occupation_skill |
| Personal Interests pool | Int * 2 |

## Add Tables
| Age | Stat Change | 
| --- | --- |
|20 - 40 | No stat change. |
|41 - 50 | (-1 MOV, -5 from STR/CON/DEX, (MAKE [EDU CHECK] 2 times) -5 APP) |
|51 - 60 | (-2 MOV, -10 from STR/CON/DEX, (MAKE [EDU CHECK] 3 times) -10 APP) |
|61 - 70 | (-3 MOV, -20 from STR/CON/DEX, (MAKE [EDU CHECK] 4 times) -15 APP) |
|71 - 80 | (-4 MOV, -40 from STR/CON/DEX, (MAKE [EDU CHECK] 4 times) -20 APP) |
|81 - 99 | (-5 MOV, -80 from STR/CON/DEX, (MAKE [EDU CHECK] 4 times) -25 APP) |

| Build+Damage table (STR + SIZ) | Stat Change |
| --- | --- |
| 64> | (Damage -2, Build -2) |
| 65-84 | (Damage -1, Build -1) |
| 85-124 | (Damage +0, Build +0) |
| 125-164 | (Damage +1d4, Build +1) |
| 165-204 | (Damage +1d6, Build +2) |

| Credit Rating | Cash | Assets | Spending Level |
| --- | --- | --- | --- | 
| 0 | $0.50 | None | $0.50 |
| 1 - 10 | Credit_Raiting * 1 | Credit_Raiting * 10 | $2 |
| 11 - 50 | Credit_Raiting * 2 | Credit_Raiting * 50 | $10 |
| 51 - 90 | Credit_Raiting * 5 | Credit_Raiting * 500 | $50 |
| 91 - 98 | Credit_Raiting * 20 | Credit_Raiting * 2000 | $250 |
| 99 | $50,000 | $5M+ | $5000 |

| Occupation | Skill Calc | Credit | Background skills|
| --- | --- | --- | --- |
| Accountant | EDU * 4 | 30-70 | [Accounting, Law, Library Use, Listen, Persuade, Spot Hidden, any two other skills as personal or era specialties] |
| Acrobat | EDU * 2 + DEX * 2 | 9-20 | [Climb, Dodge, Jump, Throw, Spot Hidden, Swim, any two other skills as personal or era specialties.] |
| Actor | EDU * 2 + APP * 2 | 9-40 | [Art/Craft (Acting), Disguise, Fighting, History, two interpersonal skills (Charm, Fast Talk, Intimidate, or Persuade), Psychology, any one other skill as a personal or era specialty.] |
