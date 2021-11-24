require 'anystyle'

Handler = Proc.new do |req, res|
  citation = req.query['citation']

  res.status = 200
  res['Content-Type'] = 'text/json; charset=utf-8'

  res.body = AnyStyle.parse """#{citation}""" 
end

