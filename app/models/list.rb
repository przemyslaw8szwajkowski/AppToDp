class List < ActiveRecord::Base
belongs_to :user

scope :done, -> { where(status: 'true') }
scope :infinite, -> { where(status: 'false') }
scope :all_week, -> { where(created_at: Time.zone.now.all_week ,status: 'true') }
scope :point_sum, -> { done.sum(:point) }
# scope :point_sum, -> { sum(:task_point) }
# scope :point_done, -> { done.sum(:task_point) }
# scope :point_infinite, -> { infinite.sum(:task_point) }
end
