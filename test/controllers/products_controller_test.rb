require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { main_product_id: @product.main_product_id, price_offer_2_xpath: @product.price_offer_2_xpath, price_offer_xpath: @product.price_offer_xpath, price_xpath: @product.price_xpath, store_id: @product.store_id } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { main_product_id: @product.main_product_id, price_offer_2_xpath: @product.price_offer_2_xpath, price_offer_xpath: @product.price_offer_xpath, price_xpath: @product.price_xpath, store_id: @product.store_id } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end