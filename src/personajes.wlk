object pamela {
	const rol = "Doctora"
	var inventario = ["algodon", "agua xigenada", "cinta de papel", "cinta de papel"]
	var energiaInicial = 6000
	const gritoDeVictoria = "Aca pasó la Pamela"
	
	 method inventario() {
        return inventario
    } 
    
	 method energiaInicial() {
        return energiaInicial
    }
        
    method gritoDeVictoria(){
    	return gritoDeVictoria
    }
	 
	method cantidadDeItems(){
		return inventario.size()
	}
	 
	method ultimoItem(){
		return inventario.last()
	}
		 
	method lucharManoAMano(enemigo) {
		return energiaInicial+400
	}
	
	method quitarEnergia(puntosAQuitar){
		energiaInicial = energiaInicial - puntosAQuitar
	}
		
}

object pocardo{
	const rol = "Musicoterapeuta "
	var inventario = ["guitarra", "curitas", "cotonete"]
	var energiaInicial = 5600
	const gritoDeVictoria = "¡Siente el poder de la música!"
	
	 method inventario() {
        return inventario
    } 
    
	 method energiaInicial() {
        return energiaInicial
    }
        
    method gritoDeVictoria(){
    	return gritoDeVictoria
    }
    
    method cantidadDeItems(){
		return inventario.size()
	}
	 
    method ultimoItem(){
		return inventario.last()
	}
		
	method lucharManoAMano(enemigo) {
		return energiaInicial+500
	}
	
	method quitarEnergia(puntosAQuitar){
		energiaInicial = energiaInicial - puntosAQuitar
	}
	
}


object tulipan{
	const rol = "Guerrera"
	var inventario = ["rastrillo", "maceta", "maceta", "manguera"]
	var energiaInicial = 8400
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	
	 method inventario() {
        return inventario
    } 
    
	 method energiaInicial() {
        return energiaInicial
    }
        
    method gritoDeVictoria(){
    	return gritoDeVictoria
    }
	 
	method cantidadDeItems(){
		return inventario.size()
	}
	 
    method ultimoItem(){
		return inventario.last()
	}
		
	method lucharManoAMano(enemigo){
		return enemigo.quitarEnergia(enemigo.energiaInicial()/2) 
	}
	
	method quitarEnergia(puntosAQuitar){
		energiaInicial = energiaInicial - puntosAQuitar
	}
}

object toro{
	const rol = "Tanque"
	var inventario = []
	var energiaInicial = 7800
	const gritoDeVictoria = "No se metan con el toro"
	
	method inventario() {
        return inventario
    } 
    
	 method energiaInicial() {
        return energiaInicial
    }
        
    method gritoDeVictoria(){
    	return gritoDeVictoria
    }
	
	method cantidadDeItems(){
		return inventario.size()
	}
	 
	method ultimoItem(){
		return inventario.last()
	}
		 	
	method lucharManoAMano(enemigo){
		 enemigo.quitarEnergia(200 * enemigo.cantidadDeItems())
		 inventario.add(enemigo.ultimoItem())
		 enemigo.inventario().remove(enemigo.ultimoItem())
		}
		
	method quitarEnergia(puntosAQuitar){
		energiaInicial = energiaInicial - puntosAQuitar
	}
	
}