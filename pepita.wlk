object pepita{
    var energia = 100

    method volar (distancia){
        self.validarVolar(distancia)
        energia = energia - self.energiaGastoVolando(distancia)
    }

    method validarVolar(distancia){
        if (self.energia() < self.energiaGastoVolando(distancia)) {
            self.error("no puede volar")
        }
    }

    method energiaGastoVolando(distancia){
        return 10 + distancia/10
    }

    method descansar(){
        energia = energia + 10
    }

    method comer(alimento){
        energia = energia + alimento.energiaQueAporta()
    }

    method energia(){
        return energia
    }

    method estaCansado(){
        return self.energia() < 30
    }
}





object alpiste{

    method energiaQueAporta(){
        return 25
    }
}





object manzana{

    var gradoMadurez = 1

    const caloriasBase = 20

    method gradoMadurez(_gradoMadurez){
        gradoMadurez = _gradoMadurez
    }

    method energiaQueAporta(){
        return caloriasBase * self.escala()
    }

    method escala(){
        return if(gradoMadurez < 3){
            gradoMadurez
        }
        else {0}
    }
}




object pepon{

    var energia = 30

    var ultimaComida = manzana

    method comer(alimento){
        self.validarComer(alimento)
        energia = energia + (alimento.energiaQueAporta() / 2)
        ultimaComida = alimento
    }

    method validarComer(alimento){
        if (self.ultimaComida() == alimento) {
            self.error("pepon se niega a comer")
        }
    }

    method ultimaComida(){
        return ultimaComida
    }


    method volar(distancia){
        energia = energia - (20 + 2*distancia)
    }

    method energia(){
        return energia
    }

    method estaCansado(){
        return self.energia() < 34
    }
}





object rebeca{

    var ave = pepita

    var cenas = 0

    method ave(){
        return ave 
    }

    method ave(aveNueva){  //esta bien mismo nombre setter y getter?
        ave = aveNueva
        cenas = 0
    }

    method alimentar(alimento){
        ave.comer(alimento)
        cenas = cenas + 1
    }

    method cenas(){
        return cenas
    }
}