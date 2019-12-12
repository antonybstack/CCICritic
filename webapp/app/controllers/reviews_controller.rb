#Cucumber Test:  4 - The user has the ability to leave a review. 

#@when “The user has a valid account and is logged in ”
#@when “user selects the professor’s name “Marlon Mejias.”
#@when “user selects course rating of 9”
#@when “user selects overall rating of 9”
#@when “user selects programming language of “Ruby” ”
#@when “user does not select Textbook required”
#@when “user selects is computer required”
#@when “user sets “How many presentations” as “1””
#@when “user sets  “# of tests?” as “2””
#@when “user sets  “# of essays?” as “0””
#@when “user sets “student overall comment about the class “ “No additional Comments””
#@then “a valid review highlighted in green is created”


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
