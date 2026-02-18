function reencode --description 'Re-encode a video to a smaller size'
  ffmpeg -i $argv[1] -vcodec libx264 -crf 24 (basename -s .mp4 $argv[1])2.mp4
end
