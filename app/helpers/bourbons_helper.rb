module BourbonsHelper


def last_updated(bourbon)
  bourbon.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
end

end 
