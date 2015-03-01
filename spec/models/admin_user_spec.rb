# == Schema Information
#
# Table name: admin_users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  index_admin_users_on_email                 (email) UNIQUE
#  index_admin_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  before :each do
    @valid_user = FactoryGirl.build :admin_user
  end

  context "#email" do
    it "must be unique" do
      expect(@valid_user.save).to eq(true)
      invalid_user = AdminUser.new email: @valid_user.email
      expect(invalid_user.valid?).to eq(false)
      expect(invalid_user.errors[:email]).to include('has already been taken')
    end
  end
end
