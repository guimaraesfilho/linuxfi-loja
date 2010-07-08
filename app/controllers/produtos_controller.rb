class ProdutosController < ApplicationController

  def index
    @titulo   = 'Listagem de Produtos'
    @produtos = Produto.all

    respond_to do |format|
      format.html
      format.xml do
        render :xml => @produtos
      end
    end
  end
end
