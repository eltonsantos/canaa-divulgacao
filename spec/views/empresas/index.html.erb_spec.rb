require 'rails_helper'

RSpec.describe "empresas/index", type: :view do
  before(:each) do
    assign(:empresas, [
      Empresa.create!(
        nomeEmpresa: "Nome Empresa",
        nomeResponsavel: "Nome Responsavel",
        categoria: "Categoria",
        cep: "Cep",
        endereco: "Endereco",
        bairro: "Bairro",
        telefone: "Telefone",
        descricao: "MyText"
      ),
      Empresa.create!(
        nomeEmpresa: "Nome Empresa",
        nomeResponsavel: "Nome Responsavel",
        categoria: "Categoria",
        cep: "Cep",
        endereco: "Endereco",
        bairro: "Bairro",
        telefone: "Telefone",
        descricao: "MyText"
      )
    ])
  end

  it "renders a list of empresas" do
    render
    assert_select "tr>td", text: "Nome Empresa".to_s, count: 2
    assert_select "tr>td", text: "Nome Responsavel".to_s, count: 2
    assert_select "tr>td", text: "Categoria".to_s, count: 2
    assert_select "tr>td", text: "Cep".to_s, count: 2
    assert_select "tr>td", text: "Endereco".to_s, count: 2
    assert_select "tr>td", text: "Bairro".to_s, count: 2
    assert_select "tr>td", text: "Telefone".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
