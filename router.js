// ESTE ARCHIVO ES UN ENRUTADOR QUE VA A MOSTRAR EN EL NAVEGADOR LA RUTA QUE SE LE COLOQUE SEGÚN SU NOMBRE, POR EJEMPLO LAS PLANTILLAS
const express = require('express');

const router = express.Router();
//llamado a archivo db
const conexion= require('./database/db');

//RUTA: INDEX COMO VISTA PRINCIPAL
router.get('/', (req, res) =>{
    res.render('index'); //referenciando la plantilla
})

//RUTA PARA CREAR EMPLEADOS Y LA INFO VA A BD
router.get('/registroEmpleado', (req, res) =>{
    res.render('registroEmpleado'); //referenciando la plantilla
})

const guardarEmpleado =require('./controladores/guardarEmpleado'); //llamado del metodo salvarEmpleado al componentes de rutas
router.post('/salvarEmpleado', guardarEmpleado.salvarEmpleado);


//RUTA PARA REGISTRO DE CLIENTES
router.get('/datosCliente', (req, res) =>{
    res.render('datosCliente'); //referenciando la plantilla
})

//RUTA PARA CREAR CLIENTES Y LA INFO VA A BD
router.get('/datosCliente', (req, res) =>{
    res.render('datosCliente'); //referenciando la plantilla
})

const guardarCliente =require('./controladores/crudCliente'); //llamado del metodo salvarCLiente al componentes de rutas
router.post('/salvarCLiente', guardarCliente.salvarCliente); //para poder usar este archivo, se debe exportar su variable



//RUTA PARA TRAER REGISTROS DE LA BASE DE DATOS
router.get('/registroClientes', (req, res) =>{
    
    conexion.query('SELECT * FROM Datos_Cliente', (error, results)=>{//comando para traer una consulta
        if (error){
            console.log("error de conexión es: " + error);
         
        }else{
            res.render('registroClientes', {results:results});
        }   
    })  
})


//EDITAR REGISTROS
router.get('/editar/:cedulaCliente', (req, res) =>{ //se pide que traiga un parámetro, es más sencillo traerlo con su id
    const cedulaCliente= req.params.cedulaCliente; //consulta para que nos traiga el registro deseado
    conexion.query('SELECT * FROM Datos_Cliente WHERE cedulaCliente=?',[cedulaCliente], (error, results)=>{//comando para traer una consulta
        if (error){
            console.log("error de conexión es: " + error);
         
        }else{
            res.render('editar', {cliente:results[0]});
        }
    }) 
})
router.post('/actualizarCliente', guardarCliente.actualizarCliente); //se usa el método post y se realiza el llamado de los métodos del form, de la variable giardarCliente que trae la info del crud

//ELIMINAR REGISTROS
router.get('/eliminar/:cedulaCliente', (req, res)=>{ 
    const cedulaCliente= req.params.cedulaCliente;
    conexion.query('DELETE FROM Datos_Cliente WHERE cedulaCliente=?', [cedulaCliente], (error, results)=>{
        if (error){
            console.log("error de conexión es: " + error);
         
        }else{
            res.redirect('registroClientes');
        }
    })
});


module.exports = router;