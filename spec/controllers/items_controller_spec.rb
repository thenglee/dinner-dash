require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  describe "GET #index" do
    it "returns all the items" do
      item = create(:item, :with_categories)
      get :index
      expect(assigns(:items)).to eq [item]
    end

    it "renders :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested item to @item"
    it "renders :show template"
  end

  describe "GET #new" do
    it "assigns a new item to @item"
    it "renders :new template"
  end

  describe "POST #create" do
    describe "with valid attributes" do
      it "saves new item in the database"
      it "redirect to the new item"
    end

    describe "with invalid attributes" do
      it "does not save new item in the database"
      it "re-renders :new template"
      it "contain the error messages"
    end
  end

  describe "PUT #update" do
    describe "with valid attributes" do
      it "find the requested item"
      it "updates the item attributes"
      it "redirect to the updated item"
    end

    describe "with invalid attributes" do
      it "find the requested item"
      it "does not update the item attributes"
      it "re-renders :edit template"
    end
  end

  describe "DELETE #destroy" do
    it "deletes the item"
    it "redirect to items#index"
  end
end
