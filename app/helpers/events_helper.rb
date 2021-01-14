module EventsHelper
  def events_helper
    params.require(:event).permit(:name, :descrption, :date, :creator_id)
  end
end
