class ReviewsController < ApplicationController
    # before_action :authenticate_user!, except: [:index, :show]
        

    
    def new
        @review = current_user.reviews.build
    end
    def create
        @course = Course.find(params[:course_id])
        @review = @course.reviews.create(review_params)
        redirect_to course_path(@course)
    end
    
    def destroy
       @course = Course.find(params[:course_id])
       @review = @course.reviews.find(params[:id])
       @review.destroy
       redirect_to course_path(@course)
    end
    
    private
    def review_params
        params.require(:review).permit(:professor_name, :overall_rating, :professor_rating, :difficulty_rating, :language, :textbook_req, :computer_req, :presentations, :tests, :essays, :comment)
    end
end
