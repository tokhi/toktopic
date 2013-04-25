module EventsHelper

	def protocol_label(event)
		if !event.protocol.nil? && event.protocol.length > 20
			content_tag(:span, 'Show', :class => "label label-success")
		else
			content_tag(:span, 'Show', :class => "label")
		end

	end
end
