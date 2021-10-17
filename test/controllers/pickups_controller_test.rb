require 'test_helper'

class PickupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pickup = pickups(:one)
  end

  test "should get index" do
    get pickups_url, as: :json
    assert_response :success
  end

  test "should create pickup" do
    assert_difference('Pickup.count') do
      post pickups_url, params: { pickup: { director_id: @pickup.director_id, employee: @pickup.employee, location: @pickup.location, product: @pickup.product, status: @pickup.status, submission: @pickup.submission } }, as: :json
    end

    assert_response 201
  end

  test "should show pickup" do
    get pickup_url(@pickup), as: :json
    assert_response :success
  end

  test "should update pickup" do
    patch pickup_url(@pickup), params: { pickup: { director_id: @pickup.director_id, employee: @pickup.employee, location: @pickup.location, product: @pickup.product, status: @pickup.status, submission: @pickup.submission } }, as: :json
    assert_response 200
  end

  test "should destroy pickup" do
    assert_difference('Pickup.count', -1) do
      delete pickup_url(@pickup), as: :json
    end

    assert_response 204
  end
end
