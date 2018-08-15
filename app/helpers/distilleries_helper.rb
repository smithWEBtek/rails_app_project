module DistilleriesHelper


  def display_distillery(bourbon)
  bourbon.distillery.nil? ? link_to("Add Distillery", edit_bourbon_path(bourbon)) : link_to(bourbon.distillery_name, distillery_path(bourbon.distillery))
  end

  def distillery_select(distillery, bourbon)
    if distillery
      distillery.name
    else
      select_tag "bourbon[distillery_id]", options_from_collection_for_select(Distillery.all, :id, :name)
    end
  end

end
