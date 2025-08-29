object tom {
    var energia = 50

    method comer(unRaton){
        energia = 1000.min(energia + 12 + unRaton.peso())
    }
    
    method correr(distancia){
        energia = 0.max(energia - distancia/2)
    }

    method velocidadMaxima(){
        return 5 + energia / 10
    }

    method energia() {
        return energia
    }

    method puedeCazar(unaDistancia) {
        return energia >= unaDistancia / 2
    }

    method cazar(unRaton,unaDistancia){
        if(self.puedeCazar(unaDistancia)){
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2
    var peso = edad * 20

    method peso(){
        return peso
    }

    method aumentarPeso() {
        peso = peso + 1
    }

    method cumplirAños(){
        edad = edad + 1
    }
}

object nibbles {
    var peso = 35
    
    method peso() {
        return peso
    }

    method aumentarPeso() {
        peso = peso + 1
    }
}

// Inventar otro ratón

object mickey {
    var peso = 20

    method peso() {
        return peso
    }

    method aumentarPeso() {
        peso = peso + 1
    }
}