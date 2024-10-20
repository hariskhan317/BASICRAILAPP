class HomeController < ApplicationController
  def index
    #render plain: 'Hello world'
    #render html: "<h1> Render html h1</h1>".html_safe
    message=  "<h1> Render html h1</h1>"
    message+= "<h2> Render html h2</h2>"
    message+= "<h3> Render html h3</h3>"
    message+= "<h4> Render html h4</h4>"
    message+= "<h5> Render html h5</h5>"
    message+= "<h6> Render html h6</h6>"
    render html: message.html_safe
  end
  
  def getQueryStringParams
    message = ''
    if params[:name]
      message += "<h1>Hi my name is " + params[:name] + " </h1>"
    else
      message += "<h1> Couldn't find the name</h1>"
    end

    if params[:country]
      message += "<h1> I am from " + params[:country] + "</h1>"
    else
      message += "<h1> Couldn't find the name</h1>"
    end

    render html: message.html_safe
  end
end
