require 'rails_helper'

RSpec.describe "empresas/show", type: :view do
  before(:each) do
    @empresa = assign(:empresa, Empresa.create!(
      nomeEmpresa: "Nome Empresa",
      nomeResponsavel: "Nome Responsavel",
      categoria: "Categoria",
      cep: "Cep",
      endereco: "Endereco",
      bairro: "Bairro",
      telefone: "Telefone",
      descricao: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome Empresa/)
    expect(rendered).to match(/Nome Responsavel/)
    expect(rendered).to match(/Categoria/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/MyText/)
  end
end
