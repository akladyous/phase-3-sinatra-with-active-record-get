class ApplicationController < Sinatra::Base
    # set :default_content_type, "application/json"

    get '/' do
        { message: "Hello world" }.to_json
    end

    get '/test1/:name' do
        # params.inspect
        output = "<div>"
        output << "<h2>Sinatra First APP</h2>"
        output << "<p>test params[:variable]</p>"
        output << "<p>" << "#{params.inspect}" << "</p>"
        output << "<p>" << "#{params[:namme]}" << "</p>"
        output << "</div>"
        output
    end

    get '/test2/*' do
        output = "<div>"
        output << "<h2>Sinatra First APP</h2>"
        output << "<p>test Splat operator params[:splat]</p>"
        output << "<p>" << "#{params.inspect}" << "</p>"
        output << "<p>" << "#{params[:splat]}" << "</p>"
        output << "</div>"
        output
    end
end


        