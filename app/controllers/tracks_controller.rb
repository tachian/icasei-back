class TracksController < ApplicationController
  
  # GET /tracks
  def index
    @tracks = Track.limit(50).order(created_at: :desc)

    render json: @tracks
  end

  # POST /tracks
  def create
    @track = Track.new(track_params)

    if @track.save
      render json: @track, status: :created, location: @track
    else
      render json: @track.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def track_params
      params.require(:track).permit(:guid, :url, :created)
    end
end
