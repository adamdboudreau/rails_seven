class JobsController < InheritedResources::Base

  private

    def job_params
      params.require(:job).permit(:id, :name, :desc, :status, :attempt, :err)
    end

end
