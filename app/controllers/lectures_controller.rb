class LecturesController < InheritedResources::Base
before_action :authenticate_user!

  def show
    @lecture = Lecture.find(params[:id])
    commontator_thread_show(@lecture)
  end



  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end
end

