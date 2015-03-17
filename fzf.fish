function fzf
  /home/xubuntu/.fzf/bin/fzf $argv
end

function fe
  set tmp /tmp/fzf
  fzf > $tmp
  if [ (cat $tmp | wc -l) -gt 0 ]
    eval editor (cat $tmp)
  end
end
