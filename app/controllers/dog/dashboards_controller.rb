=begin
Copyright (c) 2021, all rights reserved.

All the information provided by this platform is protected by international laws related  to 
industrial property, intellectual property, copyright and relative international laws. 
All intellectual or industrial property rights of the code, texts, trade mark, design, 
pictures and any other information belongs to the owner of this platform.

Without the written permission of the owner, any replication, modification,
transmission, publication is strictly forbidden.

For more information read the license file including with this software.

// · ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~
// · 

=end
require_dependency "dog/application_controller"

module Dog
  class DashboardsController < ApplicationLesliController

      # GET /dashboards/1
      def show
          respond_to do |format|
              format.html {}
              format.json do

              end
          end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_dashboard
          @dashboard = current_user.account.dashboards.find(class_name, params[:id])
      end

      # Only allow a list of trusted parameters through.
      def dashboard_params
          params.require(:dashboard).permit(:id, :name)
      end
  end
end
