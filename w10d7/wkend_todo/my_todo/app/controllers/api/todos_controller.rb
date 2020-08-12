class Api::TodosController < ApplicationController
    def show
        render json: Todo.find(params[:id])
    end

    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            render json: @todo
        else
            render json: @todo.errors.full_messages, status: 422
        end
    end

    def index
        render json: Todo.all
    end 

    def update
         @todo = Todo.find(params[:id])
        if @todo.update_attributes(todo_params)
            render json: @todo
        else
            render json: @todo.errors.full_messages, status: 422
        end
    end 

    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy
        render json: Todo.all
    end 

    private

    def todo_params
       params.require(:todo).permit(:title, :body, :done) 
    end 
end

# $.ajax({
#   method: 'POST',
#   url: '/api/todos', 
#   data: {
#       todo: {
#           title: "TRY SOME AJAX",
#           body: "WHY SO HARD",
#         done: true
#       }
#   }
# }).then(
#   todo => console.log(todo),
#   error => console.log(error)
# );

# $.ajax({
#   method: 'PATCH',
#   url: '/api/todos/1', 
#   data: {
#       todo: {
#           title: "watch anime",
#           body: "not enough time",
#           done: true
#       }
#   }
# }).then(
#   todo => console.log(todo),
#   error => console.log(error)
# );

# $.ajax({
#   method: 'DELETE',
#   url: '/api/todos/3'
# }).then(
#   todos => console.log(todos),
#   error => console.log(error)
# );

# $.ajax({
#   method: 'GET',
#   url: '/api/todos'
# }).then(
#   todos => console.log(todos),
#   error => console.log(error)
# );

# $.ajax({
#   method: 'GET',
#   url: '/api/todos/3'
# }).then(
#   todo => console.log(todo),
#   error => console.log(error)
# );