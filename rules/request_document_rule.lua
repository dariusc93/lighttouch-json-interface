priority: 2
if request.method == "GET"
and #request.path_segments == 2
and request.path_segments[1]:match("%a+") -- TODO: make it a known type, not just any word
and uuid.check(request.path_segments[2])
--and string.match( request.headers["accept"], "json" )
then
    events["request_document_json"]:trigger(request)
end
