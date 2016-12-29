class VotesController < ApplicationController
	before_action :authenticate_user!

	def create
		want = Want.find(params[:id])
		want.liked_by current_user
		redirect_to wants_path, notice: "Good on you for voting"
	end

	def destroy
		want = Want.find(params[:id])
		want.unliked_by current_user
		redirect_to wants_path, notice: "Wow, way to unvote"
	end
end