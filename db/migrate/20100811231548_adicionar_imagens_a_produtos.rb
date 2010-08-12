class AdicionarImagensAProdutos < ActiveRecord::Migration
  def self.up

    change_table  :produtos do |t|
      t.string   :imagem_file_name
      t.string   :imagem_content_type
      t.integer  :imagem_file_size
      t.datetime :imagem_update_at
    end
  end

  def self.down

    change_table :produtos do |t|
      t.remove :imagem_file_name,
        :imagem_content_type,
        :imagem_file_size,
        :imagem_update_at
    end
  end

end
