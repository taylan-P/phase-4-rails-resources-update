class ApplicationController < ActionController::API

#  rescue_from ActiveRecord::RecordNotFound , :not_found
#  rescue_from ActiveRecord::RecordInvalid, :invalid

    private
     def not_found(error)
        render json: { error:"Bird not found"}, status: :not_found
     end
     def invalid(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
     end
end
