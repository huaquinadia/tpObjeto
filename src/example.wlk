object garlicsSea{
const nombre  = 'Garlic´s Sea'
const equipajeimprescindible = #{'caniaDePescar','piloto'}
var precio = 2500

method nombre (){
	return nombre
      }
      
method precio (){ 
	return precio
    }
     
method equipajeimprescindible (){
	return equipajeimprescindible
    }

method destinoDestacado(){
	return precio > 2000}

method aplicarDescuento(descuento){
	precio = precio -(precio*descuento / 100)
	equipajeimprescindible.add('Certificado de descuento')}

method esPeligroso(){
    	return equipajeimprescindible.any({equipaje => equipaje.contains('vacuna ')})
       }
}



object silversSea{
	const nombre = 'Silver´s Sea'
	const equipajeimprescindible = #{'protector solar','equipo de buceo'}
	var precio = 1350

method nombre (){
	return nombre
     }
method precio (){ 
	return precio
    }
method equipajeimprescindible (){
	return equipajeimprescindible
   }

method destinoDestacado(){
	 return precio > 2000}

method aplicarDescuento(descuento){
	 precio = precio -(precio*descuento / 100)
	equipajeimprescindible.add('Certificado de descuento')
	}
	
method esPeligroso(){
    return equipajeimprescindible.any({equipaje => equipaje.contains('vacuna ')})
    }
    
}



object lasToninas{
const nombre = 'las toninas'
const equipajeimprescindible = #{'vacuna gripal','vacuna B','necronomicon'}
var precio = 3500
   
 method nombre (){
   	 return nombre
   }
   
 method precio (){ 
	 return precio
    }
    
 method equipajeimprescindible (){
	return equipajeimprescindible
     }
  
 method destinoDestacado(){
	 return precio > 2000
	 }

 method aplicarDescuento(descuento){
	precio = precio - (precio*descuento / 100)
	equipajeimprescindible.add('Certificado de descuento')
	}
	
  method esPeligroso(){
    	return equipajeimprescindible.any({equipaje => equipaje.contains('vacuna ')})
    }
 }


object goodAirs{
const nombre = 'Good Airs'
 const equipajeimprescindible = #{'cerveza','protector solar'}
 var precio = 1500
   
method nombre (){
      	return nombre
      }
      
method precio (){ 
	return precio
}

method equipajeimprescindible (){
     	return equipajeimprescindible
     }
     
method destinoDestacado(){
	return precio > 2000}

method aplicarDescuento(descuento){
	precio = precio - (precio*descuento/100)
	equipajeimprescindible.add('Certificado de descuento')}

method esPeligroso(){
   return equipajeimprescindible.any({equipaje => equipaje.contains('vacuna')})
   }
 }
    
    

object barrileteCosmico{
var destinos = #{garlicsSea , silversSea, lasToninas, goodAirs}

method agregarDestino(unDestino){
	destinos.add(unDestino)
	}

method destinosMasImportantes(){
	return destinos.filter({destino => destino.destinoDestacado()})
	}

method aplicarDescuentoDestinos(descuento){
    destinos.forEach({destino => destino.aplicarDescuento(descuento)})
    }

method esUnaEmpresaExtrema(){
    return self.destinosMasImportantes().any({destino => destino.esPeligroso()})
  }

method destinos(){
   return destinos
     }
} 



object usuario{
const nombre = 'pabloHari'
var usuario = 'PHari'
const lugaresVisitados = #{lasToninas,goodAirs}
var cuentaBarrileteCosmico = 1500
const listaDeUsuariosQueSigue = #{}
const seguidores = #{}


 method  lugaresVisitados(){
	 return  lugaresVisitados
     }
     
 method cuentaBarrileteCosmico(){
     return cuentaBarrileteCosmico
     }

 method volarAunDestino(unDestino){
      if(cuentaBarrileteCosmico > unDestino.precio()) {
	       lugaresVisitados.add(unDestino)
	       cuentaBarrileteCosmico = cuentaBarrileteCosmico - unDestino.precio()
	  }
    }
	
	
  method sumaDeLosDestinosQueVisito(){
	   return lugaresVisitados.sum({destino => destino.precio()})
	}

  method millas(){
    return ((self.sumaDeLosDestinosQueVisito()* 10)/100)
   }

  method seguirUsuario(alguien){
	listaDeUsuariosQueSigue.add(alguien)
	seguidores.add(alguien)
	}

  method listaDeUsuariosQueSigue(){
	return listaDeUsuariosQueSigue
	
     }
}



	}














