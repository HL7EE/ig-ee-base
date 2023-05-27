You should understand that **district** attribute may be used in the two roles:
- county - subdivision of the state
- city district - subdivision of the city

Example of usage as *county*
```json
  "address": [
    {
      "use": "temp",
      "line": [
        "5601 Universal Blvd"
      ],
      "city": "Orlando",
      "district": "Orange County",
      "state": "FL",
      "postalCode": "32819",
      "country": "US"
    }
  ]
```

Example of usage as *city district*
```json
  "address": [
    {
      "use": "work",
      "line": [
        "Pl. de l'Opéra"
      ],
      "district": "The 9th district",
      "city": "Paris",
      "state": "Île-de-France region",
      "postalCode": "75009",
      "country": "FR"
    }
  ]
```

#### Meaning of address elements 
NB! In the case of an address, all fields provide informational content only, these fields may not be used for statistics or similar operations. The only exceptions that are strictly typed attributes: 1) **country** and 2) **ADS extension**.
In the case of an Estonian address, the **ADS extension** with with values and [services](https://geoportaal.maaamet.ee/eng/Services/In-ADS-p660.html) supported by Maaament are required.


#### Addresses in Estonia 
Tuleb arvestada, et ADS omab piisavalt keerulist struktuuri, mis lähtub administratiivses kuuluvusest, samas Address andmetüüp lähtub postikujust. Administratiivse ja postikuju erinevuste tõttu ADS-i teist ja kolmandat taset ei ole võimalik ühtlaselt mäppida *FHIR Address* struktuuri.
Mäppimise reeglid on järgmised:
- *state* - Maakond. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 1.
- extension *censusTract* - Väikekoht (AÜ, SÜ, GÜ, vkt). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 4.
- extension *streetName* - Liikluspind (tee, tänav, puiestee, maantee). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 5.
- extension *streetNameBase* - Nimi (kohanimi, maaüksuse nimi). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 6.
- extension *houseNumber* - Aadressinumber (maaüksuse või hoone erilisand). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 7.
- extension *additionalLocator* - Korteri või muu hooneosa number. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 8.
- *city* ja *district* - seotakse teise ja kolmanda tasemega, kuid kuna district võib esineda mitmes rollis (nii maakonna kui linna töpsustusena) siis reeglid ei ole lineaarsed.
  - city - vaikimisi "Asula (küla, alevik, alev, vallasisene linn) või linnaosa. Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 3."
  - district - vaikimis on omavalitsus (linn, vald). Vastab Maa-ameti ADS-iga liidestumise juhendis tasemele 2. 

Kui vallade väliste linnade puhul tehakse erisusi ning linna kuvatakse *city* elemendis järgmistes olukordades:
- kus ADS kolmadal tasemel ei ole haldusüksusi. Antud olukorras tegemist vallavälise linnaga millel ei ole sisemisi haldusjaotusi. Nt, ADR-ID: 100030 | Harju maakond, Maardu linn. 
Õige:
```json
  "address": [
    {
      "use": "work",
      "line": [
        "Kallasmaa 1"
      ],
      "city": "Maardu linn",
      "state": "Harju maakond",
      "postalCode": "74111",
      "country": "EE", 
      "text": "Harju maakond, Maardu linn, Kallasmaa 1",
      "extension" : [
        {
          "url" : "https://fhir.ee/StructureDefinition/ee-ads",
          "valueCoding" : {
            "code" : "100030"
          }
        }
      ]          
    }
  ]
```
Vale:
```json
  "address": [
    {
      "use": "work",
      "line": [
        "Kallasmaa 1"
      ],
      "district": "Maardu linn",
      "state": "Harju maakond",
      "postalCode": "74111",
      "country": "EE"
    }
  ]
```

- kus ADS registris teisel ja kolmandal tasemel on sama nimetus. Nt, ADR-ID: 3020414 | Tartu maakond, Tartu linn, Tartu linn. 
Õige:
```json
  "address": [
    {
      "use": "home",
      "line": [
        "K. Veeberi tn 4"
      ],
      "city": "Tartu linn",
      "state": "Tartu maakond",
      "postalCode": "74111",
      "country": "EE",
      "text": "Tartu maakond, Tartu linn, K. Veeberi tn 4",
      "extension" : [
        {
          "url" : "https://fhir.ee/StructureDefinition/ee-ads",
          "valueCoding" : {
            "code" : "3020414"
          }
        }
      ]    
    }
  ]
```
Vale:
```json
  "address": [
    {
      "use": "home",
      "line": [
        "K. Veeberi tn 4"
      ],
      "city": "Tartu linn",
      "district": "Tartu linn",
      "state": "Tartu maakond",
      "postalCode": "74111",
      "country": "EE"
    }
  ]
```

- Tallinna linnaosad kodeeritakse *district* elemendina. Nt, ADR-ID: 2103556 | Harju maakond, Tallinn, Kristiine linnaosa.
Õige:
```json
  "address": [
    {
      "use": "home",
      "line": [
        "Staap"
      ],
      "city": "Tallinn",
      "district": "Kristiine linnaosa",
      "state": "Harju maakond",
      "postalCode": "74111",
      "country": "EE",
      "text": "Harju maakond, Tallinn, Kristiine linnaosa",
      "extension" : [
        {
          "url" : "https://fhir.ee/StructureDefinition/ee-ads",
          "valueCoding" : {
            "code" : "2103556"
          }
        }
      ]          
    }
  ]
```

- juhul kui muu linnal on haldusjaotused siis tuleb lähtuda ADS haldusjotusest. Nt, ADR-ID: 3020415 | Tartu maakond, Tartu linn, Tähtvere küla.
Õige:
```json
  "address": [
    {
      "use": "work",
      "line": [
        "Gardest OÜ"
      ],
      "district": "Tartu linn",
      "city": "Tähtvere küla",
      "state": "Tartu maakond",
      "postalCode": "74111",
      "country": "EE",
      "text": "Tartu maakond, Tartu linn, Tähtvere küla",
      "extension" : [
        {
          "url" : "https://fhir.ee/StructureDefinition/ee-ads",
          "valueCoding" : {
            "code" : "3020415"
          }
        }
      ]     
  ]
```
