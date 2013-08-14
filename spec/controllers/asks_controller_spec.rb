require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AsksController do

  # This should return the minimal set of attributes required to create a valid
  # Ask. As you add validations to Ask, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "ask" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AsksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all asks as @asks" do
      ask = Ask.create! valid_attributes
      get :index, {}, valid_session
      assigns(:asks).should eq([ask])
    end
  end

  describe "GET show" do
    it "assigns the requested ask as @ask" do
      ask = Ask.create! valid_attributes
      get :show, {:id => ask.to_param}, valid_session
      assigns(:ask).should eq(ask)
    end
  end

  describe "GET new" do
    it "assigns a new ask as @ask" do
      get :new, {}, valid_session
      assigns(:ask).should be_a_new(Ask)
    end
  end

  describe "GET edit" do
    it "assigns the requested ask as @ask" do
      ask = Ask.create! valid_attributes
      get :edit, {:id => ask.to_param}, valid_session
      assigns(:ask).should eq(ask)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ask" do
        expect {
          post :create, {:ask => valid_attributes}, valid_session
        }.to change(Ask, :count).by(1)
      end

      it "assigns a newly created ask as @ask" do
        post :create, {:ask => valid_attributes}, valid_session
        assigns(:ask).should be_a(Ask)
        assigns(:ask).should be_persisted
      end

      it "redirects to the created ask" do
        post :create, {:ask => valid_attributes}, valid_session
        response.should redirect_to(Ask.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ask as @ask" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ask.any_instance.stub(:save).and_return(false)
        post :create, {:ask => { "ask" => "invalid value" }}, valid_session
        assigns(:ask).should be_a_new(Ask)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ask.any_instance.stub(:save).and_return(false)
        post :create, {:ask => { "ask" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ask" do
        ask = Ask.create! valid_attributes
        # Assuming there are no other asks in the database, this
        # specifies that the Ask created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ask.any_instance.should_receive(:update_attributes).with({ "ask" => "MyString" })
        put :update, {:id => ask.to_param, :ask => { "ask" => "MyString" }}, valid_session
      end

      it "assigns the requested ask as @ask" do
        ask = Ask.create! valid_attributes
        put :update, {:id => ask.to_param, :ask => valid_attributes}, valid_session
        assigns(:ask).should eq(ask)
      end

      it "redirects to the ask" do
        ask = Ask.create! valid_attributes
        put :update, {:id => ask.to_param, :ask => valid_attributes}, valid_session
        response.should redirect_to(ask)
      end
    end

    describe "with invalid params" do
      it "assigns the ask as @ask" do
        ask = Ask.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ask.any_instance.stub(:save).and_return(false)
        put :update, {:id => ask.to_param, :ask => { "ask" => "invalid value" }}, valid_session
        assigns(:ask).should eq(ask)
      end

      it "re-renders the 'edit' template" do
        ask = Ask.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ask.any_instance.stub(:save).and_return(false)
        put :update, {:id => ask.to_param, :ask => { "ask" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ask" do
      ask = Ask.create! valid_attributes
      expect {
        delete :destroy, {:id => ask.to_param}, valid_session
      }.to change(Ask, :count).by(-1)
    end

    it "redirects to the asks list" do
      ask = Ask.create! valid_attributes
      delete :destroy, {:id => ask.to_param}, valid_session
      response.should redirect_to(asks_url)
    end
  end

end
