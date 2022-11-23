module Api
    module V1
        class GalleriesController < ApplicationController
            def index
                galleries = Gallery.order('created_at ASC');
                render json: {status: 'SUCCESS', message: 'Loaded galleries', data: galleries}, status: :ok
            end

            def show
                gallery = Gallery.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded gallery', data: gallery}, status: :ok
            end

            def create
                gallery = Gallery.new(gallery_params)
                if gallery.save
                    render json: {status: 'SUCCESS', message: 'Saved gallery', data: gallery}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Gallery not saved', data: gallery.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                gallery = Gallery.find(params[:id])
                gallery.destroy
                render json: {status: 'SUCCESS', message: 'Deleted gallery', data: gallery}, status: :ok
            end

            def update
                gallery = Gallery.find(params[:id])
                if gallery.update(gallery_params)
                    render json: {status: 'SUCCESS', message: 'Updated gallery', data: gallery}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Gallery not updated', data: gallery.errors}, status: :unprocessable_entity
                end
            end

            private
            def gallery_params
                params.permit(:name, :location, :link)
            end
        end
    end
end