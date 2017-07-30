class CustomersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_customer,only: [:show, :edit, :update, :destroy]
  def index
     @q = Customer.includes(:post, :company).ransack(params[:q])
    @customers = @q.result.page(params[:page])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer
    else
      render :new
    end
  end

  def edit
  
  end

  def update
    
    if  @customer.update(customer_params)
      redirect_to @customer
    else
      render :edit
    end
  end

  def show
    @comment = Comment.new
    @comments = @customer. comments
  end

  def destroy
    # データーを取得
    
    # データーを削除
    @customer.destroy
    # indexに戻る
    redirect_to customers_path
  end
  
  
  
  def customer_params
    params.require(:customer).permit(
      :family_name,
      :given_name,
      :email,
      :company_id,
      :post_id)
  end
  
  def set_customer
     @customer = Customer.find(params[:id])
  end
   
end
