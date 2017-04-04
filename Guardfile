guard 'livereload' do

  extensions = {
    css: :css,
    scss: :css,
    sass: :css,
    js: :js,
    coffee: :js,
    html: :html,
    png: :png,
    gif: :gif,
    jpg: :jpg,
    jpeg: :jpeg,
    # less: :less, # uncomment if you want LESS stylesheets done in browser
  }

  # file types LiveReload may optimize refresh for
  compiled_exts = extensions.values.uniq
  watch(%r{public/.+\.(#{compiled_exts * '|'})})

  extensions.each do |ext, type|
    watch(%r{
          (public/\w+/(?<path>[^.]+) # path+base without extension
           (?<ext>\.#{ext})) # matching extension (must be first encountered)
          (?:\.\w+|$) # other extensions
          }x) do |m|
      path = m[1]
      "#{path}.#{type}"
    end
  end
  files = %w(erb haml)
  stylesheets = %w(sass scss)

  watch(%r{views/.+\.(#{files * '|'})$})
  watch(%r{sass/.+\.(#{stylesheets * '|'})$})
  watch(%r{^(app).rb$})
  watch(%r{^(main).css$})
end
