class ProductsController < ApplicationController

  before_action :set_product, only: %i[ show edit update destroy ]

  def add_to_cart
    product = Product.find(params[:id])
    cart = session[:cart] || {}  # Initialize an empty hash if cart is nil
    cart[product.id] ||= 0      # Initialize product quantity if not present
    cart[product.id] += 1       # Increment product quantity
    session[:cart] = cart       # Update the cart in the session
    puts "Cart hash after increment: #{cart.inspect}"  # Add this line for debugging
    redirect_to cart_path, notice: "Product added to cart"
  end

  # GET /products or /products.json
  def index
    add_breadcrumb 'Home', :root_path
    add_breadcrumb 'Products', :products_path


    @products = Product.includes(:category)

    if params[:search].present?
      @products = @products.where("name LIKE ?", "%#{params[:search]}%")
    end

    if params[:category_id].present?
      @products = @products.where(category_id: params[:category_id])
    end

    @products = @products.page(params[:page]).per(params[:per_page])


  end



  # GET /products/1 or /products/1.json
  def show
    add_breadcrumb 'Home', :root_path
    add_breadcrumb 'Products', :products_path
    if params[:category_id].present?
      category = Category.find(params[:category_id])
      add_breadcrumb category.name, category_path(category)
    end
    add_breadcrumb 'Product Details', product_path(@product)

  end

  # GET /products/new
  def new
    @product = Product.new
    add_breadcrumb 'New Product', new_product_path
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end


    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :image, :desc, :category_id)
    end



    private

    def cart
      session[:cart] ||= []
    end

    def product_params
    params.require(:product).permit(:name, :image, :desc, :price, :category_id)
  end

end
