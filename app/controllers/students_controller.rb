class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        render json: students.sort{|a,b| b.grade <=> a.grade}
    end

    def highest_grade
       render json: Student.order(grade: :desc).first
    end
end
