class BotonController < ApplicationController

  require "firebase_token_generator"

  def btn
    p "hola prros"
  end
  def imprimir
    p "hola kshorroz"
    firebase_url    = 'https://ayd2proyecto.firebaseio.com/'
    firebase_secret = 'l597FxVKrQwVpRVZ5rrCNYx4ArX8lNjGWCKqrGLk'


    firebase = Firebase::Client.new(firebase_url, firebase_secret)

    ##response = firebase.push("users", { :nombre => 'el prro de julian', :descripcion => 'es gigante y malvado',        :priority => 1 })
  
    response2 = firebase.get("users")
    parsed = JSON.parse(response2.raw_body)

    parsed.each do |p|
      cadena = p[1]['nombre']
      cadena2 = p[1]['descripcion']
      puts cadena
      puts cadena2
      puts ' '

      payload = {:uid => "1", :auth_data => "foo", :other_auth_data => "bar"}
      
      generator = Firebase::FirebaseTokenGenerator.new(firebase_secret)
      token = generator.create_token(payload)
      
      puts token
    end

  end
end
