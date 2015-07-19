module Api
    module V1
      class SurveysController < ApplicationController
        before_action :set_survey, only: [:show, :update, :destroy]

        # GET /surveys
        # GET /surveys.json
        def index
          @surveys = Survey.all

          render json: @surveys
        end

        # GET /surveys/1
        # GET /surveys/1.json
        def show
          render :json => @survey, :include => { :questions => { :except => [ :id, :survey_id ]}}, :except => :id
        end

        # POST /surveys
        # POST /surveys.json
        def create
          @survey = Survey.new(survey_params)

          if @survey.save
            render json: @survey, status: :created, location: @survey
          else
            render json: @survey.errors, status: :unprocessable_entity
          end
        end

        # PATCH/PUT /surveys/1
        # PATCH/PUT /surveys/1.json
        def update
          @survey = Survey.find(params[:id])

          if @survey.update(survey_params)
            head :no_content
          else
            render json: @survey.errors, status: :unprocessable_entity
          end
        end

        # DELETE /surveys/1
        # DELETE /surveys/1.json
        def destroy
          @survey.destroy

          head :no_content
        end

        private

          def set_survey
            @survey = Survey.find(params[:id])
          end

          def survey_params
            params.require(:survey).permit(:password_protected, :unique_ip, :account_only)
          end
      end
    end
end
