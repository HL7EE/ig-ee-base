## Ballot HL7® FHIR® EE Base ja EE MPI* juurutusjuhendite kohta.

Kutsume Teid osalema **HL7® FHIR® [EE Base](https://fhir.ee/ig/ee-base/ballot-2023-may) ja [EE MPI](https://fhir.ee/ig/mpi/ballot-2023-may) juurutusjuhendite** esimeste avaldatavate versioonide tagasisidestamisele. Juurutusjuhend (ingl k. *Implementation Guide*, IG)  sisaldab põhilisi FHIR-i rakendamise reegleid (eelkõige laiendeid, profiile, identifikaatoreid ja terminoloogiat) Eesti kontekstis. EE Base juurutusjuhend on abstraktne üksus, mis on aluseks teistele (k.a. EE MPI) FHIR-i juurutusjuhenditele. Juurutusjuhend on loodud olema dünaamiline üksus, mida pidevalt täiustatakse ja hooldatakse, tuginedes peamiselt FHIR-i kogukonna tagasisidele ja kasutuskogemusele Eestis ning laiemalt.

## Mis on HL7 Ballot**?

Hääletamine (tagasisidestamine) ehk *Balloting* on protsess, mida HL7 kasutab, et võimaldada laiemal kogukonnal kommenteerida HL7 standardeid ja juurutusjuhendeid. Autorid saavad seejärel kommentaarid üle vaadata, tehes vajadusel nende alusel uuendusi juurutusjuhendites. Balloting protsessi kasutatakse laialdase konsensuse tagamiseks järgmise protsessi kaudu:

* Kommentaaride ja ettepanekute tegemiseks on konkreetne periood (ingl k. *Ballot Period*), mis kestab **29.05-9.06.2023**.
* Juurutusjuhenditest (EE Base ja EE MPI) luuakse koopia, mis jääb muutumatuks kogu hääletamisperioodi jooksul. Seda koopiat saavad ballotil osalejad tagasisidestada.
* Igaüks saab juurutusjuhendeid tagasisidestada (ingl k. *Ballot Comment*), lisades **GitHubi** sissekande (juhised allpool) hoidlasse (ingl k. *repository*), kus juurutusjuhendit talletatakse.
* Kõik kommentaarid vaadatakse tehnilise töörühma*** poolt läbi. Igal kommentaaril on tulemus (ingl k. *Disposition*), mis võib, kuid ei pruugi kaasa tuua muudatusi juurutusjuhendis. Tulemus, sealhulgas tulemuse mis tahes põhjendus, salvestatakse kommentaarina teema juurde, mida igaüks saab vaadata.

## Kus asuvad EE Base ja EE MPI juurutusjuhendid?

Juurutusjuhendi Ballot Versioon EE Base asub **[siin](https://fhir.ee/ig/ee-base/ballot-2023-may)** ja Ballot Versioon EE MPI **[siin](https://fhir.ee/ig/mpi/ballot-2023-may)**. EE Base koosneb kümnest profiilist, EE MPI kaheteistkümnest profiilist, mis on leitavad vahelehel „Artifacts” või „Artefaktid“. Lisaks on juurutusjuhendites kirjeldused ka andmetüüpide (*data type*), laiendite (*extension*), loendite (*Value Set*) ning koodisüsteemide (*Code System*) kohta.

## Kuidas luua Ballot kommentaare?

Balloti käigus tekkinud kommentaarid salvestatakse Juurutusjuhendi algallikasse, milleks on **[siin](https://github.com/HL7EE/ig-ee-base)** (EE Base) ja **[siin](https://github.com/HL7EE/ig-ee-mpi)** (EE MPI) asuvad GitHubi hoidlad. Balloti raames loodud teemapüstitused (Issues) on GitHubi teisel vahekaardil.
* Esiteks vajate GitHubi kontot. Kui teil seda veel pole, minge [GitHubi](https://github.com/) ja klõpsake paremas ülanurgas lingil „Sign up“ ja järgige sealt antud juhiseid.
* Järgmisena sirvige HL7 Estonia ig-ee-base ja ig-ee-mpi teemapüstituste (Issues) lehte
* Paremal (praeguse teemade loendi kohal) on nupp pealkirjaga „New Issue”. Klõpsake seda ja kuvatakse uue teemapüstituse (issue) loomise aken.
* Igal teemapüstitusel on pealkiri ja kirjeldus
* Sisestage kommentaari esitamiseks mõtestatud pealkiri. Näiteks: „EEBase Patient profiilist puudub perekonnanime element“ või „EE MPI Patient unknown seotud Value Set vajab täiendust“.
* Sisestage kirjelduse väljale ülejäänud üksikasjad. Lisage kommenteeritava elemendi lehe URL. Sisu oleneb kommentaari olemusest – kui kommenteerite teksti, lisage soovitatud tekst ja kus seda peaks rakendama.
* Soovi korral saate kasutada ka silte (labels), kuid need ei ole kohustuslikud.
* Saate seadistada ka teavitused, et teid teavitataks igast teie probleemiga seotud tegevusest. Üksikasjad siin.
* Kommentaaride näiteid:
  * Soovitatud tekst andmeelemendi definitsiooni selgemaks muutmiseks.
  * Kommentaar laienduse sisu kohta – näiteks lisaelemendid, mis võivad olla kasulikud.
  * Kommentaar laienduse andmetüübi kohta – kas on olemas parem alternatiiv, mida tuleks kasutada?
 
Antud Balloti osana võetakse arvesse ainult juurutusjuhendi praeguse sisu kohta tehtud märkusi. Kõik soovitused täiendava sisu (nt laiendused või profiilid) kohta lükatakse edasi kuni järgmise uuenduseni.

## Mis saab Balloti kommentaaridest pärast esitamist?

Igaüks võib teie püstitatud teemapunkti kommenteerida, kuid ainult tehnilisel töörühmal*** on õigus otsustada kommentaari tulemuste üle. Töörühm koguneb peale balloti lõppu ja otsustab balloti raames esitatud tagasiside üle.

Kui teil on antud protsessi kohta küsimusi, võtke meiega ühendust **fhir@tehik.ee** .

<br/>
<br/>

\* EE MPI = Master Patient Index (Patsientide Üldandmete Teenus)

** hea eestikeelse vaste puudumise tõttu kasutame siin ja edaspidi ingliskeelset sõna ballot

*** tehniline töörühm on moodustatud loodava HL7 Estonia asutajaliikmete poolt esitatud vabatahtlikest

