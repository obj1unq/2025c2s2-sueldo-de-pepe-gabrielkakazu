// *** PUESTOS ***


object gerente {
    const neto = 15000
    method monto() = neto
}


object cadete {
    const neto = 20000
    method monto() = neto
}


// *** BONOS POR RESULTADOS ***
object bonoPorcentaje {
    method monto(empleado) {
        return empleado.sueldoNeto() * 0.1
    }
}


object bonoFijo {
    method monto(empleado) {
        return 800
    }
}


object bonoNulo {
    method monto(empleado) {
        return 0
    }
}


// *** BONOS POR PRESENTISMO ***


object presentismoNormal {
    method monto(empleado) {
        if (empleado.ausentes() == 0) {
            return 2000
        } else if (empleado.ausentes() == 1) {
            return 1000
        } else {
            return 0
        }
    }
}


object presentismoAjuste {
    method monto(empleado) {
        if (empleado.ausentes() == 0) {
            return 100
        } else {
            return 0
        }
    }
}


object presentismoDemagogico {
    method monto(empleado) {
        if (empleado.sueldoNeto() < 18000) {
            return 500
        } else {
            return 300
        }
    }
}


object presentismoNulo {
    method monto(empleado) = 0
}


object pepe {
    var puesto = cadete
    var presentismo = presentismoDemagogico
    var ausentes = 0
   
    var bono = bonoNulo


    method setBono(_bono) {
        bono = _bono
    } //setter
 


    method sueldoNeto() = puesto.monto()


    method ausentes() = ausentes


    method faltarDias(cantidad) {
        ausentes += cantidad
    }
    method puesto() = puesto //getter
    method setPuesto(_puesto) {
        puesto = _puesto
    }


    method setPresentismo(_presentismo) {
        presentismo = _presentismo
    }


    method sueldo() {
        return self.sueldoNeto()
                + presentismo.monto(self)
                + bono.monto(self)
    }
}




/*
object pepe {
    var ausentes = 0
    var categoria = cadete
    var bonoResultados = bonoNulo
    var bonoPresentismo = presentismoNormal

    method categoria(_categoria) {
        categoria = _categoria
        _categoria.puesto(self)
    }
    method categoria() = categoria

    method bonoResultados(_bono) {
        bonoResultados = _bono
    }
    method bonoResultados() = bonoResultados

    method ausentes() { return ausentes }
    method diaAusente() {
        ausentes += 1
    }

    method sueldo() {
        return categoria.neto() 
            + bonoResultados.monto(self) 
            + bonoPresentismo.monto(self)
    }

    method bonoPresentismo() = bonoPresentismo 
    method bonoPresentismo(_bono) {
        bonoPresentismo = _bono
    }
}

// ------------------ Categorías ------------------
object gerente {
    var neto = 150000    
    var puesto = null

    method neto() { return neto }

    method puesto(_empleado) {
        puesto = _empleado
    }

    method ausentes() { return ausentes }
}

object cadete {
    var neto = 20000
    var puesto = null

    method neto() { return neto }

    method puesto(_empleado) {
        puesto = _empleado
    }

    method ausentes() { return ausentes }
}

// ------------------ Bonos por Resultados ------------------

object bonoPorcentaje {
    var porcentaje = 0.1
    method monto(empleado) {
        return porcentaje * empleado.categoria().neto()
    }
}

object bonoFijo {
    const fijo = 800
    method monto(empleado) {
        return fijo
    }
}

object bonoNulo {
    const nulo = 0
    method monto(empleado) {return 0}
}

// ------------------ Bono por Presentismo ------------------
object presentismoNormal {
        method monto(empleado) {
        if (empleado.ausentes() == 0) then { 2000 }
        else if (empleado.ausentes() == 1) then { 1000 }
        else { 0 }
    }
}

object presentismoAjuste {
    method monto(empleado) {
        if (empleado.ausentes() == 0) then {100}
        else {0}
    }
}

object presentismoDemagogico {
    method monto(empleado) {
        if (empleado.categoria().neto() < 18000) then { 500 }
        else { 300 }
    }
}

object presentismoNulo {
    method monto(empleado) {return 0}
}
*/




/* object pepe {
    var ausentes = 0
    var categoria = cadete
    var bono = bonoPorResultados.porcentaje(categoria)

    method categoria(_categoria) {
        categoria = _categoria
        _categoria.puesto(self)
    }

    method bono() = bono
    method bono(_bono) {
        bono = _bono
    }

    method ausentes() {return ausentes}

    method diaAusente() {
        ausentes += 1
    }

    method sueldo() {
        return categoria.neto() + bono
        //+ bonoPorPresentismo.normal(self)
    }
}

object bonoPorResultados {
    var porcentaje = 0.1
    const fijo = 800
    method porcentaje(categoria) {
        return porcentaje * categoria.neto()
    }
    method porcentaje(_porcentaje) {
        porcentaje = _porcentaje
    }

    method fijo(categoria) {
        return fijo
    }

} 
object gerente {
    var neto = 150000    
    var puesto = null

    method neto() { 
        return neto 
    }

    method puesto(_empleado) {
        puesto = _empleado
    }.
}

object cadete {
    var neto = 20000
    var puesto = pepe

    method neto() {
        return neto
    }

    method puesto(_empleado) {
        puesto = _empleado
    }
}
/*
object bonoPorPresentismo {
    method normal(empleado) {
        if (empleado.ausentes == 0) then { return 2000 }
        else if (empleado.ausentes == 1) then {return 1000 }
        else {return 0 }
    }

    method ajuste(empleado) {
        if (empleado.ausentes == 0) then {return 100 }
        else {return 0 }
    }

    method demagogico(empleado) {
        if (empleado.categoria.neto() < 18000) then {return 500 }
        else {return 300 }
    }
} */

