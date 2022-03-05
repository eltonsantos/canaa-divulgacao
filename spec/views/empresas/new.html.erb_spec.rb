require 'rails_helper'

RSpec.describe "empresas/new", type: :view do
  before(:each) do
    assign(:empresa, Empresa.new(
      nomeEmpresa: "MyString",
      nomeResponsavel: "MyString",
      categoria: "MyString",
      cep: "MyString",
      endereco: "MyString",
      bairro: "MyString",
      telefone: "MyString",
      descricao: "MyText"
    ))
  end

  it "renders new empresa form" do
    render

    assert_select "form[action=?][method=?]", empresas_path, "post" do

      assert_select "input[name=?]", "empresa[nomeEmpresa]"

      assert_select "input[name=?]", "empresa[nomeResponsavel]"

      assert_select "input[name=?]", "empresa[categoria]"

      assert_select "input[name=?]", "empresa[cep]"

      assert_select "input[name=?]", "empresa[endereco]"

      assert_select "input[name=?]", "empresa[bairro]"

      assert_select "input[name=?]", "empresa[telefone]"

      assert_select "textarea[name=?]", "empresa[descricao]"
    end
  end
end
