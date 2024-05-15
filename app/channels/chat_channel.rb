class ChatChannel < ApplicationCable::Channel
  before_subscribe :set_room

  def subscribed
    stream_from @chat_room
    ActionCable.server.broadcast(@chat_room, {
      mensagem: "Usuario #{@usuario} entrou"
    })
  end

  def receive(data)
    data['usuario'] = @usuario
    ActionCable.server.broadcast(@chat_room, data)
  end

  def set_room
    p 'configure'
    @chat_room = params[:chat]
  end

end
