//constante para conexión a bd. éstas son constantes universales, se encuentran en la documentación de npm mysql
//A TRAVÉS DE ESTE ARCHIVO SE PUEDEN CREAR TABLAS
const mysql = require('mysql');

const conexion = mysql.createConnection({ //dentro se colocan los siguientes parámetros con un tipo de documento clave-valor
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'evernet_sas'
});

conexion.connect((error)=>{
    if (error){
        console.log("error de conexión es: " + error);
        return
    }
    console.log("conectado a la base de datos");
})





module.exports= conexion;

