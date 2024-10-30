# nunjucks

* Dit project is een test om vanuit externe bestanden webcomponenten in te laden. Hiervoor is gebruik gemaakt van Nunjucks (mogelijkheid om html-bestand te 'includen'). 
* Er is zo min mogelijk gebruik gemaakt van externe libraries (keep it simple).

## Features
* HTML templates
* Custom Elements
* Observer API
* Nunjucks
* Nodejs scripts

## Werkwijze
* Clone repo
* start met "npm run dev"
* Het script doet 2 dingen:
    * kopieert alle css, afbeeldingen en javascript-files van src -> output
    * rendert (nunjucks) templates naar output dir.
    * nunjucks staat in watch modus, dus veranderingen worden automatisch gerendered
* Gebruik Live Server in VS code om gerenderde pagina's automatisch te laden in de browser
* Veranderingen in externe bestanden moet je nog handmatig update (opnieuw "npm run dev" opstarten) 

