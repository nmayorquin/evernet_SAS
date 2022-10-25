//archivo para inicializar aplicación PRINCIPAL
const express = require('express'); //se referencia express: esta es la forma de node.js
const app = express(); //se realiza el llamado de express a través de la constante app

//DEFINICIÓN DE MOTOR DE PLANTILLAS A TRAVÉS DE LAS PROPIEDADES DE EXPRESSs

app.set('view engine', 'ejs'); // línea para llamar el motor de plantillas, y para diferenciar del código se usa <%   %>
app.use(express.urlencoded({extended:false}));
app.use(express(JSON)); //la línea de arriba y esta se implementan para que se capture la información de los formularios que se requiera

app.use('/', require('./router.js'));

app.use(express.static(__dirname + '/vistas')); //para poder usar la hoja de estilos usamos el modulo de express y llamamos en el archivo donde se va a usar sólo el nombre del archivo

app.listen(5000, ()=>{ //se usa el listen como método de express y se verifica en consola el funcionamiento del servidor
    console.log("puerto 5000 funcionando en http://localhost:5000")
});

/*PARA EVITAR QUE EL SERVIDOR SE CORTE CADA VEZ QUE HAYA UN CAMBIO SE USA NODEMON */