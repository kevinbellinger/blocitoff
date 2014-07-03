class TodosController < ApplicationController

  def new 
  end

  def create
      @todo = Todo.new(todo_params)
     
      if @todo.save
          flash[:notice] = 'Your new TODO was saved'
          redirect_to @todo
      else
          flash[:notice] = 'Your TODO was not saved'
          render :new
    end
  end

  def show
    @todo = Todo.find params[:id]
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end