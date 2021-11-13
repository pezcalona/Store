module PagesHelper

    #almacenar métodos
    #almacenar clases
    #almacenar lógica


    def cookies_handler

        if cookies[:plana]
            puts cookies[:plana]
        else
            cookies[:plana] = "COOKIE PLANA 🥞"
        end

        if cookies.signed[:firmada]
            puts cookies.signed[:firmada]
        else
            cookies.signed[:firmada] = "Hola mundo FIRMADO 🍕"
        end

        if cookies.encrypted[:encriptada]
            puts cookies.encrypted[:encriptada]
        else
            cookies.encrypted[:encriptada] = "TEXTO SECRETO 🍔"
        end

        if session[:variable_sesion]
            puts session[:variable_sesion]
        else
            session[:variable_sesion] = "EN LA SESION 🥓"
        end

    end

    def set_cart_from_cookie

        if cookies[:cart_id]                     # Preguntar si existe la variable cookies[:cart_id]
            @cart = Cart.find(cookies[:cart_id]) # Sí existe: [buscar en el registro de cart según el cookies [:cart_id]]
        else                                     # Definir una variable @cart
    
            @cart = Cart.create(total: 0)        # Si no existe: Crea un registro en Cart
            cookies[:cart_id] = @cart.id         # asignar la cookie con el id
    
        end
                                                # Mostrar la cantidad de productos en el carrito
    
        @product = Product.all.shuffle
    end

end
