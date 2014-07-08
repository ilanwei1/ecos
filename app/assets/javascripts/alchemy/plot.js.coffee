$ ->
	$('.pop_hover').click (e)->
		$('.pop_hover_text').fadeOut('fast')
		text_el = $(@).siblings('.pop_hover_text')
		text_el.fadeIn()
		e.stopPropagation();

	$('.plot-layout').click ->
		if $('.pop_hover_text').is(":visible")
			$('.pop_hover_text').fadeOut('fast')


	$('.plot-layout .next_button').click ->
		cb = $(':checkbox')
		url_string = ''
		$.each cb , ->
			if $(@).is(':checked')
				url_string += $(@).attr('id') + '-'
		url_string = url_string.slice(0,-1)
		redirect_to(url_string)

	redirect_to = (url) ->	
		if url.length == 0
			alert('choose one or more options')
		else
			document.location.href = '/'+url



			
		