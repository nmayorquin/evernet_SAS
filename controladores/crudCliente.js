
const conexion = require("../database/db"); //LLAMADO A LA BASE DE DATOS

exports.salvarCliente = (req, res)=>{//se llama el método creado en la etiqueta form de registroEmpleado
    const idCliente = req.body.cedulaCliente;
    const nombreCliente = req.body.nombresCliente;
    const generoCliente = req.body.generoCliente;
    const ciudadCliente = req.body.cityCliente;
    const ubicacionCliente = req.body.dirCliente;
    const telefonoCliente = req.body.telefonoCliente;
    const mailCLiente = req.body.emailCliente;
    
    conexion.query('INSERT INTO Datos_Cliente SET ?', {NombresApellidosCliente:nombreCliente, cedulaCliente:idCliente, emailCliente:mailCLiente, GeneroCliente:generoCliente, CiudadCliente:ciudadCliente, DireccionCliente:ubicacionCliente, telefonoCliente:telefonoCliente}, (error, results)=>{
    if(error){
    }else{
        res.redirect('/registroClientes'); //si el registro es exitoso redirecciona al index
    }
})
};

exports.actualizarCliente = (req, res) =>{
    const idCliente = req.body.cedulaCliente;
    const nombreCliente = req.body.nombresCliente;
    const generoCliente = req.body.generoCliente;
    const ciudadCliente = req.body.cityCliente;
    const ubicacionCliente = req.body.dirCliente;
    const telefonoCliente = req.body.telefonoCliente;
    const mailCLiente = req.body.emailCliente;

    conexion.query('UPDATE Datos_Cliente SET ? WHERE cedulaCliente= ?', [{NombresApellidosCliente:nombreCliente, emailCliente:mailCLiente, GeneroCliente:generoCliente, CiudadCliente:ciudadCliente, DireccionCliente:ubicacionCliente, telefonoCliente:telefonoCliente}, idCliente], (error, results)=>{
        if(error){
        }else{
            res.redirect('/registroClientes'); //si el registro es exitoso redirecciona al index
        }
    })  
};

