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
    before do
      @item = create(:item, :with_categories)
    end

    it "assigns the requested item to @item" do
      get :show, id: @item
      expect(assigns(:item)).to eq @item
    end

    it "renders :show template" do
      get :show, id: @item
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do
    it "assigns a new item to @item" do
      get :new
      expect(assigns(:item)).to be_a_new(Item)
    end

    it "renders :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    before do
      @item = create(:item, :with_categories)
    end

    it "assigns the request item to @item" do
      get :edit, id: @item
      expect(assigns(:item)).to eq @item
    end

    it "renders :edit template" do
      get :edit, id: @item
      expect(response).to render_template :edit
    end
  end

  describe "POST #create" do
    describe "with valid attributes" do
      before do
        @category = create(:category)
      end

      it "creates new item" do
        expect {
          post :create, item: attributes_for(:item, category_ids: [@category.id])
        }.to change(Item, :count).by 1
      end

      it "redirect to the new item" do
        category = create(:category)
        post :create, item: attributes_for(:item, category_ids: [@category.id])
        expect(response).to redirect_to Item.last
      end
    end

    describe "with invalid attributes" do
      it "does not save new item"
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
