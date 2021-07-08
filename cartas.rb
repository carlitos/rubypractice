class Baraja
    attr_accessor :figuras, :valores

    def initialize
      valores = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Rey", "Reina", "Comodín","As"]
      figuras = ["Espadas", "Corazones", "Diamantes", "Treboles"]

      @barajas = []

      valores.each do |v|
        figuras.each do |f|
          baraja = "#{v} de #{f}"
          @barajas.push(baraja)
        end
      end
    end


    def barajear
      @barajas.shuffle!
    end

    def repartir
      p @barajas.pop
    end

end

mi_baraja = Baraja.new
mi_baraja.barajear
mi_baraja.repartir
mi_baraja.repartir
mi_baraja.repartir
