class TagsController < ApplicationController
    def index
        @tag = Tag.new
        @tags = Tag.all
    end

    def show
        @tag = Tag.find(params[:id])
    end

    def create 
        @tag = Tag.create(tag_params)
        respond_to @tag, location: tags_url, action: :index
    end

    private
        def tag_params
            params.require(:tag).permit(:name)
        end
end
