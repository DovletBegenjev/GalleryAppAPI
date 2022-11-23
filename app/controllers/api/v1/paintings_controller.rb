module Api
    module V1
        class PaintingsController < ApplicationController
            def index
                paintings = Painting.order('created_at ASC');
                render json: {status: 'SUCCESS', message: 'Loaded paintings', data: paintings}, status: :ok
            end

            def show
                painting = Painting.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded painting', data: painting}, status: :ok
            end

            def create
                painting = Painting.new(painting_params)
                if painting.save
                    render json: {status: 'SUCCESS', message: 'Saved painting', data: painting}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Painting not saved', data: painting.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                painting = Painting.find(params[:id])
                painting.destroy
                render json: {status: 'SUCCESS', message: 'Deleted painting', data: painting}, status: :ok
            end

            def update
                painting = Painting.find(params[:id])
                if painting.update(painting_params)
                    render json: {status: 'SUCCESS', message: 'Updated painting', data: painting}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Painting not updated', data: painting.errors}, status: :unprocessable_entity
                end
            end

            private
            def painting_params
                params.permit(:nameOfPainting, :yearOfPainting, :painter_id, :gallery_id, :art_form, :plot, :style, :technic, :materials, :size, :linkToImage)
            end
        end
    end
end