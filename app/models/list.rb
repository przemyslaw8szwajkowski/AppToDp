class List < ActiveRecord::Base
belongs_to :user

scope :done, -> { where(status: 'true') }
scope :infinite, -> { where(status: 'false') }
scope :all_week, -> { where(created_at: Time.zone.now.all_week ,status: 'true') }
scope :point_sum, -> { done.sum(:point) }

validates_length_of :name, :minimum => 2
validates_presence_of :name, :point
validates_numericality_of :point, :only_integer => true ,:message => "only integer number"
# validate :start_must_be_before_end_time


  private
# Validation of the date of the end date is greater or equal than the beginning
  # def start_must_be_before_end_time
  #     current_time = DateTime.now
  #     errors.add(current_time, "must be before end time") unless
  #         current_time < :end_time
  # end 
end
