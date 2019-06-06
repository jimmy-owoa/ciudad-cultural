require 'test_helper'

class Admin::MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_member = admin_members(:one)
  end

  test "should get index" do
    get admin_members_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_member_url
    assert_response :success
  end

  test "should create admin_member" do
    assert_difference('Admin::Member.count') do
      post admin_members_url, params: { admin_member: { email: @admin_member.email, lastname: @admin_member.lastname, name: @admin_member.name, phone: @admin_member.phone, summary: @admin_member.summary } }
    end

    assert_redirected_to admin_member_url(Admin::Member.last)
  end

  test "should show admin_member" do
    get admin_member_url(@admin_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_member_url(@admin_member)
    assert_response :success
  end

  test "should update admin_member" do
    patch admin_member_url(@admin_member), params: { admin_member: { email: @admin_member.email, lastname: @admin_member.lastname, name: @admin_member.name, phone: @admin_member.phone, summary: @admin_member.summary } }
    assert_redirected_to admin_member_url(@admin_member)
  end

  test "should destroy admin_member" do
    assert_difference('Admin::Member.count', -1) do
      delete admin_member_url(@admin_member)
    end

    assert_redirected_to admin_members_url
  end
end
