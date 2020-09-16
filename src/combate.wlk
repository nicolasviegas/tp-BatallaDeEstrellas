import personajes.*

object combate {
	const equipo1 = [toro,tulipan]
	const equipo2 = [pamela,pocardo]
	
	method integrantesDelEquipo1(){
		return equipo1
	}
	
	method integrantesDelEquipo2(){
		return equipo2
	}
	
	method luchar(){
		equipo1.forEach({integrante => integrante.lucharManoAMano(equipo2.first())})
		equipo1.forEach({integrante => integrante.lucharManoAMano(equipo2.last())})
		equipo2.forEach({integrante => integrante.lucharManoAMano(equipo1.first())})
		equipo2.forEach({integrante => integrante.lucharManoAMano(equipo1.last())})
	}
		
	method energiaDelEquipo(unEquipo){
		return unEquipo.sum({integrante => integrante.energiaInicial()})
	}
	
	method gritosDeVictoria(algunEquipo) {
		return algunEquipo.map({integrante => integrante.gritoDeVictoria()})
	}
	
	method equipoVictorioso(){
		self.luchar()
		if(self.energiaDelEquipo(equipo1)>self.energiaDelEquipo(equipo2)){
			//return equipo1.map({jugador => jugador.victoria()})
			return self.gritosDeVictoria(equipo1)
		}else{
			return self.gritosDeVictoria(equipo2)
		}
	}
	
}