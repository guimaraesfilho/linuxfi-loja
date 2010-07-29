module AutenticacaoControllerHelper #Criação de Modulos para evitar crescer demais o APPLICATION_CONTROLLER.RB

  protected

  def usuario_atual
    if @usuario_atual.nil? && !session[:usuario_id].blank?
      @usuario_atual = Usuario.find(session[:susario_id])
    end
    @usuario_atual
  end

  def usuario_atual=(usuario)
    session[:usuario_id] = usuario.id
    @usuario_atual = usuario
  end

  def logado?
    self.usuario_atual
  end

  def administrador?
    self.logado? && self.usuario_atual.administrador?
  end
end
