require "application_system_test_case"

class ProductsOrderedsTest < ApplicationSystemTestCase
  setup do
    @products_ordered = products_ordereds(:one)
  end

  test "visiting the index" do
    visit products_ordereds_url
    assert_selector "h1", text: "Products ordereds"
  end

  test "should create products ordered" do
    visit products_ordereds_url
    click_on "New products ordered"

    fill_in "Comments", with: @products_ordered.comments
    fill_in "Order", with: @products_ordered.order_id
    fill_in "Product", with: @products_ordered.product_id
    fill_in "Quantity", with: @products_ordered.quantity
    click_on "Create Products ordered"

    assert_text "Products ordered was successfully created"
    click_on "Back"
  end

  test "should update Products ordered" do
    visit products_ordered_url(@products_ordered)
    click_on "Edit this products ordered", match: :first

    fill_in "Comments", with: @products_ordered.comments
    fill_in "Order", with: @products_ordered.order_id
    fill_in "Product", with: @products_ordered.product_id
    fill_in "Quantity", with: @products_ordered.quantity
    click_on "Update Products ordered"

    assert_text "Products ordered was successfully updated"
    click_on "Back"
  end

  test "should destroy Products ordered" do
    visit products_ordered_url(@products_ordered)
    click_on "Destroy this products ordered", match: :first

    assert_text "Products ordered was successfully destroyed"
  end
end
