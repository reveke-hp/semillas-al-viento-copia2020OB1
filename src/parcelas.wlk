import plantas.*
import variedades.*

object parcela{
	var property ancho = 1
	var property largo = 0
	var property horasDeSol = 0 
	var property plantas = #{}
	
	
	method superficie(){ return ancho * largo }
	
	method cantidadMaximaQueTolera() {
		if (ancho > largo) return self.superficie() / 5
		else return self.superficie()/3 + largo
	}
	
	method tieneSangreJoven(){
		return plantas.any({semillas => semillas.anoDeObtencion()< 2012})
	}
	method plantarUnaPlanta(unaPlanta){
		if (not self.tieneCupo()) plantas.add(unaPlanta)
		else if(not self.diferenciaDeSol()) plantas.add(unaPlanta)
		else self.error("No cumple los requisitos")
	}
	method tieneCupo(){
		return plantas.size()- 1 < self.cantidadMaximaQueTolera()
	}
	method diferenciaDeSol(){
		return horasDeSol - plantas.contains({plants => plants.horasDeSolQueTolera()})> 2
	}
	
}
