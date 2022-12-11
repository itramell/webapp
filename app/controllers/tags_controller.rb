class TagsController < ApplicationController
    def index
        @tags = Tag.all
        @tag = Tag.new
    end

    def show
        @tag = Tag.find(params[:id])
    end

    def create 
        @tag = Tag.create(tag_params)
        respond_with @tag, location: tags_url, action: :index
    end

    private
        def tag_params
            params.require(:tag).permit(:name)
        end
end
