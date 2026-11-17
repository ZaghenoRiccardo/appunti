APPUNTI TPS

Node delega le operazioni pesanti, e quando finiscono eseguono delle callback poiché le assegnamo a variabili. Con le callbacks bisogna stare attenti a non fare le "Callaback hells"(annidamento esccessivo).

2.Promises:

funzione.then(data => { funzione;}

3.Async/Await

-Introduzione all'Event Driven (ad eventi):
concetti fondamentali:
emitter(sorgente) --> event(messaggio) --> listeners(handler)

req.on() --> richiesta hhtp input

eventEmitter è la classe base ereditata da tutti gli oggetti per gli eventi
Pattern Observer:
	-Publisher(Emitter):Oggetto che emette eventi quando succede qualcosa
	-Subscriber(Listener):Funzione che viene eseguita quando viene emesso l'evento
	perciò bisogna associare i due pattern

Per usare EventEmitter bisogna --> const EventEmitter = require('events');

const emitter = new EventEmitter();

emitter.on('nomeRvento', () => {   --> Listener, qua si crea il listener

	funzione;
});


emitter.emit('nomeEvento');   --> Emitter, qua si lancia il listener emettendo l'emitter

metodo once() --> il metodo viene eueguito 1 volta e poi cancellato.

metodo removeListener() / off() --> rimuove il listener



--------------------EVENT LOOP----------------------------
Il codice sincrono deve essere velocissimo (usen bolt).
In node viene eseguito PRIMA IL CODICE SINCRONO E POI L'ASINCRONO

funSincrona1(log("1"));
funAsincrona1(log("2"));
funSincrona2(log("3"));

Output:
	1
	3
	2



Code di callBack.

setInterval(x,y); Parametro x = funzione Parametro y = tempo
Dopo il tempo y viene eseguita la funzione x;

setTimeout(x,0){codice sincrono} --> a 0 per rendere il codice sicrono Asincrono.

Le promise vengono eseguite tra il codice sincrono e asincrono.
