object pepe {
	var sueldo = 0
    var property ausentes = 0
    var categoria
    var property resultado

    method categoria(_categoria){
        categoria = _categoria
        _categoria.puesto(self)
    }

    method diaAusente() {
        ausentes += 1
    }
    method sueldo() {
        return categoria.neto() + bonoPorResultado + bonoPorPresentismo
    }
}

object gerente {
    var property neto = 150000    
    method.neto {return neto}
    var puesto
    method puesto(_empleado) {
        puesto = _empleado
    }
}

object cadete {
    var property neto = 20000
    method.neto {return neto}

        var puesto
    method puesto(_empleado) {
        puesto = _empleado
    }
}

object bonoPorResultados {
    var porcentaje = 0.1
    var property montoFijo = 800
    method porcentaje(categoria) {
        return porcentaje * categoria.neto()
    }
    method porcenta(_porcentaje) {
        porcentaje = _porcentaje
    }

}

object bonoPorPresentismo {
    var property nulo = 0

    method normal(empleado){
        if (empleado.ausentes == 0) then {2000}
        else if (empleado.ausentes == 1 ) then {1000}
        else {0}
    }

    var ajuste(empleado) {
        if (empleado.ausentes == 0) then {100}
        else {0}
    }
    var demagogico(empleado) {
        if (empleado.neto < 18000) then {500}
        else {300}
    }
}
 
