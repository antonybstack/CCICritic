class CoursesController < ApplicationController
    def new #by convention new action is associated with view, points to new view
    end
    
    def create
        #render plain: params[:course].inspect #'render plain' - simply renders to the browser. 'params.[course].inspect' – accesses all parameters sent from the form
        @course = Course.new(course_params)
        @course.save
        redirect_to @course
    end
    
    def show
        @course = Course.find(params[:id])
    end
end

private
    def course_params
        params.require(:course).permit(:professor_name, :overall_rating, :professor_rating, :difficulty_rating, :language, :textbook_req, :computer_req, :presentations, :tests, :essays, :comment)
    end