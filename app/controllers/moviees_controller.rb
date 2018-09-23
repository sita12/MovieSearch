class MovieesController < ApplicationController
    def index
    end 
    def reviewed
        @user = User.all
        @movie = Moviee.all
        @review = Review.all
        
    end 
      def show
      if Moviee.exists?(params[:id]) 
      @movie = Moviee.find(params[:id])
          else
      flash[:alert] = "Movie not found!"
      redirect_to reviewed_path
      end
    end  

    def edit
     @movie = Moviee.find(params[:id])
    end   

    def update
  @movie = Moviee.find(params[:id])
  @movie.update(movie_params)
  if @movie.valid?
    redirect_to root_path
  else
    render :edit, status: :unprocessable_entity
  end

end

  def destroy
    @movie = Moviee.find(params[:id])
    @movie.destroy
    flash[:success] = "Successfully deleted!"
    redirect_to reviewed_path
  end

    def profile 
        @review=Review.all
    end 

 private
 def movie_params
  params.require(:moviee).permit(:title, :plot, :release_date, :language, :budget)
end
end
