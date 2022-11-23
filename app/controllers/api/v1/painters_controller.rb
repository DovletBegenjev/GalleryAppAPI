module Api
    module V1
        class PaintersController < ApplicationController
            def index
                painters = Painter.order('created_at ASC');
                render json: {status: 'SUCCESS', message: 'Loaded painters', data: painters}, status: :ok
            end

            def show
                painter = Painter.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded painter', data: painter}, status: :ok
            end

            def create
                painter = Painter.new(painter_params)
                if painter.save
                    render json: {status: 'SUCCESS', message: 'Saved painter', data: painter}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Painter not saved', data: painter.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                painter = Painter.find(params[:id])
                painter.destroy
                render json: {status: 'SUCCESS', message: 'Deleted painter', data: painter}, status: :ok
            end

            def update
                painter = Painter.find(params[:id])
                if painter.update(painter_params)
                    render json: {status: 'SUCCESS', message: 'Updated painter', data: painter}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Painter not updated', data: painter.errors}, status: :unprocessable_entity
                end
            end

            private
            def painter_params
                params.permit(:name, :surname, :birthDate, :placeOfBirth, :genre, :style, :picFileName)
            end
        end
    end
end