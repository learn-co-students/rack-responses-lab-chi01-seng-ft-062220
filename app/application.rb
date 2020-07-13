class Application
 
    def call(env)
      resp = Rack::Response.new
      hour = Time.now.hour.to_i
      message = hour >= 12 ? "Good Afternoon!" : "Good Morning!"
   
      resp.write "#{message}"
      resp.finish
    end
   
  end