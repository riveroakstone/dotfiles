function gifify-small --description 'Turn a movie into a gif'
  set --local filename $argv[1]
  set --local rootname (echo "$filename" | sed 's/\.[^.]*$//')

  ffmpeg -i "$filename" -vf "fps=10,scale=480:-1:flags=lanczos" -f gif - |
    gifsicle --optimize=3 --colors 128 > "$rootname".gif
end
