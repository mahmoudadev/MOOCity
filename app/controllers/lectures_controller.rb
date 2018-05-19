class LecturesController < InheritedResources::Base
before_action :authenticate_user!

  def show
    @lecture = Lecture.find(params[:id])
    commontator_thread_show(@lecture)
  end

def upvote
  @lecture = Lecture.find(params[:lecture_id])
  @lecture.liked_by current_user
  redirect_to course_lecture_path(@lecture, @lecture)
end

def downvote
  @lecture = Lecture.find(params[:lecture_id])
  @lecture.disliked_by current_user
  redirect_to course_lecture_path(@lecture, @lecture)
end

  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end
end

