import plantas.*
import parcelas.*

class SojaTransgenica inherits Soja{
	override method daNuevasSemillas(){
		return false
	}
    override method parcelaEsIdeal(unaParcela) {
		return unaParcela.cantidadMaximaQueTolera() == 1
	}
	
}

class MentaPeperinata inherits Menta{
	override method espacioQueOcupa(){
		return (altura+1)*2
	}
}