$ ->
	$('.pophover').hover -> 
			id = $(@).attr('id')
			$('.'+id+'_text').fadeIn()
		, ->
			id = $(@).attr('id')
			$('.'+id+'_text').hide()
		