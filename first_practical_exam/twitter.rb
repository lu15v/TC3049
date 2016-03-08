#==========================================================
# Luis Eduardo Ballinas Aguilar A01371743
#==========================================================
 
#==========================================================
# Code for question 2
#----------------------------------------------------------

require "observer"
class Twitter
 
  include Observable
 
  def initialize(usuario)
    @usuario = usuario
  end
 
  def update(seguidor, mensaje)
    puts @usuario + " received a tweet from " + seguidor + ": " + mensaje
  end
 
  def follow(usuario)
    usuario.add_observer(self)
 
    return self
  end
 
  def tweet(mensaje)
    puts @usuario + " just tweeted: " + mensaje
 
    changed
    notify_observers(@usuario, mensaje)
  end
end
#----------------------------------------------------------