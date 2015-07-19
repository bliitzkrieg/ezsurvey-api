class Survey < ActiveRecord::Base
	obfuscate_id :spin => 13371337
	has_many :questions, dependent: :destroy
end
