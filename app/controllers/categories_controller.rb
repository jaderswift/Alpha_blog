class CategoriesController < ApplicationController
    before_action :set_category, only: [:update, :show, :create]

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            flash[:success] = "Category was created successfully"
            post categories_path, params: {category: {name: "sports"}}
        else
            render 'new'
        end
    end

    def index
        @categories = Category.all
    end
    
    def show
    end

    private
        def category_params
            params.require(:category).permit(:name)
        end

        def set_category
            @category = Category.find(params[:id])
        end

end