# -*- coding: utf-8 -*-
require 'slim'
Slim::Engine.disable_option_validator!

I18n.enforce_available_locales = true
# general settings
set :encoding, 'utf-8'
set :index_file, 'index.html'
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
# set :partials_dir, 'partials' -- not supportted in middleman v4
set :haml, { :format => :html5 }
set :fonts_dir,  "fonts-folder"

ignore '*.less'

# don't precompile assets when middleman startup, but only when it's requested.
#set :debug_assets, true

#activate :livereload

activate :directory_indexes

page '/', layout: 'layout'

set :markdown, :tables => true, :autolink => true, :gh_blockcode => true, :fenced_code_blocks => true, :with_toc_data => true
set :markdown_engine, :redcarpet

configure :development do
  activate :relative_assets
end


helpers do

  def slideshow(slideshow_name, title="Слайдшоу")
    partial "components/photo_slides", locals: {slide_show: slideshow_name.to_s, title: title}
  end

  def youtube(id: "", title: "")
    video source: :youtube, id: id, title: title
  end

  def vimeo(id: "", title: "")
    video source: :vimeo, id: id, title: title
  end

  def video(id: "", title: "", source: :youtube, &block)
    partial "components/video_card",
      locals: {  title: title, id: id, source: source }
  end

  def year_album(image: "", title: "", link: "#", link_text: "Переглянути", &block)
    partial "components/photo_card",
      locals: {  image: image, title: title, link: link, link_text: link_text } do
      yield
    end
  end

  # pretty queoted text
  def q text
    "«#{ text }»"
  end

  def scroll_to(title, link)
    "#{ link_to title, link, class: "smoothScroll"}"
  end

  def kraiany title=nil
    "#{link_to title ? title : "«Краяни»", "https://www.facebook.com/ukrainians.japan", target: :new}"
  end
end


configure :build do
  # activate :directory_indexes
  activate :sprockets
  activate :minify_css
  activate :minify_javascript
  # somehow minifying html takes some html attributes away so it is causing
  # some css not applied to certain elements... so until we find alternative
  # way to monify html, we will disable this
  #activate :minify_html
  activate :asset_hash
  #activate :gzip
  ignore 'product.html'
  ignore(/Icon\r$/)
  ignore(/\.DS_Store/)
  ignore(/^assets.*\.yml/)
  ignore(/^assets\/stylesheets\/(?!all).*\.css/)
  ignore(/^assets\/javascripts\/(?!all).*\.js/)
  ignore(%r{^assets/stylesheets/colorschemas/.*})
  ignore(%r{^partials/})

  # if ENV['CDN_HOST']
  #   activate :asset_host
  #   set :asset_host, ENV['CDN_HOST']
  # end
end
