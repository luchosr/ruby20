class MegaAnfitrion 
    attr_accessor :nombres

    #creamos el objeto
    def initialize (nombres = "Mundo")
        @nombres = nombres
        end
    # decirle hola a todos
    def decir_hola
        if @nombres.nil?
            puts "..."
            elsif @nombres.respond_to?("each")
            #@nombres es una lista de algun tipo
            # asi que podemos irerar!
            @nombres.each do |nombre|
                puts "Hola #{nombre}"
                end
            else 
                puts "Hola #{@nombres}"
                end
            end

    #decirle adios a todos
    def decir_adios
        if @nombres.nil?
            puts "..."
            elsif @nombres.respond_to?("join")
            #juntar los elementos de la lista
            #usando la coma como separador
            puts "Adios #{@nombres.join(",")}. Vuelvan pronto."
            else
            puts "Adios #{@nombres}. Vuelve pronto."
            end 
        end
        end


        if __FILE__ == $0
            ma = MegaAnfitrion.new
            ma.decir_hola
            ma.decir_adios

            # Cambiamos el nombre a DIego
            ma.nombres="Diego"
            ma.decir_hola
            ma.decir_adios

            # Cambiar el nombre a un array de nombres
            ma.nombres=["Alberto","Beatriz","Carlos","David","Ernesto"]
            ma.decir_hola
            ma.decir_adios

            # Cambiarlo a nil
            ma.nombres = nil
            ma.decir_hola
            ma.decir_adios

        end