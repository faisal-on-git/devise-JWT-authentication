class UpdateExistingUsersWithJti < ActiveRecord::Migration[7.1]
  def up
    # Update existing users without jti to have a unique jti value
    User.where(jti: nil).find_each do |user|
      user.update_column(:jti, SecureRandom.uuid)
    end
  end

  def down
    # No rollback needed
  end
end
