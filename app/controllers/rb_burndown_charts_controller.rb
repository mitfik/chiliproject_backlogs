class RbBurndownChartsController < RbApplicationController
  unloadable

  helper :burndown_charts

  def show
    @burndown = @sprint.burndown(@project)
    render :layout => false 
  end

end
