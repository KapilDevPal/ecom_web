class ProductController < ApplicationController
  def index
    @products = Product.all
    @partial_html = render_to_string(partial: 'products/product', collection: @products)

  end
end
