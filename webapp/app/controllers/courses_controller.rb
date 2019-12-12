#Cucumber Test:  1 - The user has the ability to create an account

#@when “User enters email “ThisIsATest@uncc.edu”.”
#@when “User enters password “Testing123!”.”
#@then “The user has created a valid account.”

#Cucumber Test:  2 - The user has the ability to log in

#@when “The user has a valid account.”
#@when “User enters email “ThisIsATest@uncc.edu”.”
#@when “User enters password “Testing123!”.”
#@then “The user has logged into a valid account a valid account.”




class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end
    
    def new #by convention new action is associated with view, points to new view
        @course = Course.new
    end
    
    
    def create
        #render plain: params[:course].inspect #'render plain' - simply renders to the browser. 'params.[course].inspect' – accesses all parameters sent from the form
        @course = Course.new(course_params)
        if @course.save
            redirect_to @course
        else
            render 'new'
        end
    end
    
    def show
        @course = Course.find(params[:id])
    end
end

private
    def course_params
        params.require(:course).permit(:course_name)
    end
