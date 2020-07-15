class Application

    def call(env)
        resp = Rack::Response.new

        time = Time.now

        if time.strftime("%p") == "PM"
            resp.write "Good Afternoon!"
        else
            resp.write "Good morning!"
        end

        resp.finish
    end

end
