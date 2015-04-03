jQuery ->
  $('#search_courses').tokenInput '/courses',
    theme: 'facebook'
    prePopulate: $('#search_courses').data('load')
    allowCustomEntry: true

jQuery ->
  $('#search_courses').tokenInput '/courses',
    theme: 'facebook'
    prePopulate: $('#search_courses').data('load')
    allowCustomEntry: false
    onAdd: (item) ->
    	$.ajax 'courses/binded', 
  			type: "GET"
  			dataType: "script"
  			data: 
    			courses: $('#search_courses').tokenInput('get')
  			asnyc: false,
  			success: (data) ->
    			console.log(data)
    	arr = $('#search_courses').tokenInput('get')
    	url=''
    	for obj of arr
    		url += '&' if obj > 0
    		url += escape('courses[') + obj + escape('][id]') + '=' + arr[obj]['id'] + '&' + escape('courses[') + obj + escape('][title]') + '=' + arr[obj]['title']
    	url_2 = '/courses?'
    	history.pushState(null, document.title, url_2 + url);
    onDelete: (item) ->
    	$.ajax 'courses/binded', 
  			type: "GET"
  			dataType: "script"
  			data: 
    			courses: $('#search_courses').tokenInput('get')
  			asnyc: false,
  			success: (data) ->
    			console.log(data)
    	url = '/courses'
    	arr = $('#search_courses').tokenInput('get')
    	url=''
    	for obj of arr
    		url += '&' if obj > 0
    		url += escape('courses[') + obj + escape('][id]') + '=' + arr[obj]['id'] + '&' + escape('courses[') + obj + escape('][title]') + '=' + arr[obj]['title']
    	url_2 = '/courses?'
    	history.pushState(null, document.title, url_2 + url);
    	return
