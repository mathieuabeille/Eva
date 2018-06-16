require 'test_helper'

class annonceursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annonceur = annonceurs(:one)
  end

  test "should get index" do
    get annonceurs_url
    assert_response :success
  end

  test "should get new" do
    get new_annonceur_url
    assert_response :success
  end

  test "should create annonceur" do
    assert_difference('annonceur.count') do
      post annonceurs_url, params: { annonceur: { company: @annonceur.company, first_name: @annonceur.first_name, job_title: @annonceur.job_title, last_address: @annonceur.last_address, mail: @annonceur.mail, phone: @annonceur.phone } }
    end

    assert_redirected_to annonceur_url(annonceur.last)
  end

  test "should show annonceur" do
    get annonceur_url(@annonceur)
    assert_response :success
  end

  test "should get edit" do
    get edit_annonceur_url(@annonceur)
    assert_response :success
  end

  test "should update annonceur" do
    patch annonceur_url(@annonceur), params: { annonceur: { company: @annonceur.company, first_name: @annonceur.first_name, job_title: @annonceur.job_title, last_address: @annonceur.last_address, mail: @annonceur.mail, phone: @annonceur.phone } }
    assert_redirected_to annonceur_url(@annonceur)
  end

  test "should destroy annonceur" do
    assert_difference('annonceur.count', -1) do
      delete annonceur_url(@annonceur)
    end

    assert_redirected_to annonceurs_url
  end
end
