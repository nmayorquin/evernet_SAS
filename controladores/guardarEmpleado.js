
const conexion = require("../database/db"); //LLAMADO A LA BASE DE DATOS

exports.salvarEmpleado = (req, res)=>{//se llama el método creado en la etiqueta form de registroEmpleado
    const nombreEmpleado = req.body.nombreApellidoEmpleado;
    const idEmpleado = req.body.cedulaEmpleado;
    const mailEmpleado = req.body.emailEmpleado;
    const contraEmpleado = req.body.passEmpleado;
    conexion.query('INSERT INTO empleados SET ?', {nombreEmpleado:nombreEmpleado, Id_empleado:idEmpleado, emailEmpleado:mailEmpleado, passEmpleado:contraEmpleado}, (error, results)=>{
        if(error){
        }else{
            res.redirect('/'); //si el registro es exitoso redirecciona al index
        }
    })
}   

