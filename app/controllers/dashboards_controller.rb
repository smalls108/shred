class DashboardsController < ApplicationController
    def dashboard
 
    @user_pending_bookings = current_user.bookings.where(status: "pending")
    
    # @owner_bookings = current_user.costumes.map(&:bookings).flatten
    # @renter_completed_bookings = current_user.bookings.where(status: "accepted").where("end_date < ?", Date.today)
  end
end
