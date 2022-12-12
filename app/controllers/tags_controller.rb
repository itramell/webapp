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
        respond_to do |format|
            format.html {redirect_to tags_url}
            format.js
        end
    end

    private
        def tag_params
            params.require(:tag).permit(:name)
        end
end
