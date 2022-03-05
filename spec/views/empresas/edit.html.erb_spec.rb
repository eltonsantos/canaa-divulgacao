require 'rails_helper'

RSpec.describe "empresas/edit", type: :view do
  before(:each) do
    @empresa = assign(:empresa, Empresa.create!(
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

  it "renders the edit empresa form" do
    render

    assert_select "form[action=?][method=?]", empresa_path(@empresa), "post" do

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
