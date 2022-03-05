class CreateEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :empresas do |t|
      t.string :nomeEmpresa
      t.string :nomeResponsavel
      t.string :categoria
      t.string :cep
      t.string :endereco
      t.string :bairro
      t.string :telefone
      t.text :descricao

      t.timestamps
    end
  end
end
