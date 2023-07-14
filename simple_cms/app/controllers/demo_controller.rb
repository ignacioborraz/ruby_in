class DemoController < ApplicationController
  
  layout false
  
  def index               #define una acción
    render('demo/index')  #default renderizacion
  end

  def hello
    render('hello')       #default renderizacion
  end

  def bye
    render('hello')       #renderizacion personalizada
  end

  def hola
    redirect_to(action: 'hello')                        #redirect en el mismo controller
  end

  def product
    redirect_to(controller: 'product', action: 'index')   #redirect en otro controller
  end

  def array
    array_1 = [1,2,3,4,5]     #variable local (no tiene acceso el template)
    @array_2 = [1,2,3,4,5]    #variable instanciada (tiene acceso el template) 
    @title = 'ARRAY'
  end

  def about
    render('about_us')         #renderizacion personalizada
  end

  def contact
    @country = params["country"]
    @phone = '+1 (987) 654-3210'
    if @country=='US'
      @phone = '(800) 555-6789'
    end
    if @country=='UK'
      @phone = '(020) 7946-1234'
    end
    render('contact_us')       #renderizacion personalizada
  end

end
