# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  describe 'GET #index' do
    context 'when user is logged in' do
      before do
        @user = FactoryBot.create(:user)
        sign_in @user
        get :index
      end

      it 'responds successfully' do
        expect(response).to be_successful
      end

      it 'renders the index template' do
        expect(response).to render_template('index')
      end
    end
  end

  describe 'GET #new' do
    context 'when user is logged in' do
      before do
        @user = FactoryBot.create(:user)
        sign_in @user
        get :new
      end

      it 'responds successfully' do
        expect(response).to be_successful
      end

      it 'renders the new template' do
        expect(response).to render_template('new')
      end
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      before do
        @user = FactoryBot.create(:user)
        sign_in @user
      end

      it 'creates a new task' do
        expect do
          post :create, params: { task: FactoryBot.attributes_for(:task) }
        end.to change(Task, :count).by(1)
      end

      it 'redirects to the tasks index' do
        post :create, params: { task: FactoryBot.attributes_for(:task) }
        expect(response).to redirect_to(tasks_path)
      end
    end
  end
end
