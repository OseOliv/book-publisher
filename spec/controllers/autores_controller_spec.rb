# spec/controllers/autors_controller_spec.rb
require 'rails_helper'

RSpec.describe AutorsController, type: :controller do
  let(:valid_attributes) do
    {
      nome: "Nome do Autor",
      cpf: "123.456.789-00"
    }
  end

  let(:invalid_attributes) do
    {
      nome: nil,
      cpf: "123.456.789-00"
    }
  end

  describe "GET #index" do
    it "returns a success response" do
      Autor.create!(valid_attributes)
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      autor = Autor.create!(valid_attributes)
      get :show, params: { id: autor.to_param }
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid parameters" do
      it "creates a new Autor" do
        expect {
          post :create, params: { autor: valid_attributes }
        }.to change(Autor, :count).by(1)
      end

      it "redirects to the created autor" do
        post :create, params: { autor: valid_attributes }
        expect(response).to redirect_to(Autor.last)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Autor" do
        expect {
          post :create, params: { autor: invalid_attributes }
        }.to change(Autor, :count).by(0)
      end

      it "renders the new template" do
        post :create, params: { autor: invalid_attributes }
        expect(response).to render_template(:new)
      end
    end
  end

  describe "PUT #update" do
    let(:new_attributes) do
      {
        nome: "Nome Atualizado"
      }
    end

    it "updates the requested autor" do
      autor = Autor.create!(valid_attributes)
      put :update, params: { id: autor.to_param, autor: new_attributes }
      autor.reload
      expect(autor.nome).to eq("Nome Atualizado")
    end

    it "redirects to the autor" do
      autor = Autor.create!(valid_attributes)
      put :update, params: { id: autor.to_param, autor: new_attributes }
      expect(response).to redirect_to(autor)
    end
  end
end
