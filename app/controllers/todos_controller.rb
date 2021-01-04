class TodosController < ApplicationController
	
	def index
		@todos = Todo.all.order("created_at DESC")
		render json: @todos
  end

	def create
		@todo = Todo.new(todo_params)

    if @todo.save
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

	def update
		@todo = Todo.find(params[:id])
		if @todo.update
			render json: @todo
		else
			render json: @todo.errors, status: :unprocessable_entity	
		end	
  end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
		head :no_content, status: :ok
	end
	
	private

	def todo_params
		 params.require(:todo).permit(:title, :done)
	end

end
