init(){
  clear
  echo ""
  echo "Image sorting script v0.1"
  echo ""
  prepFile
}

prepFile(){
  for f in *\ *; do mv "$f" "${f// /_}"; done #removes whitespace in filenames
  sortGif
}

sortGif(){
  for x in *.gif; do
    d=$(date -r "$x" +%Y)
  mkdir -p "$d"
  mv -- "$x" "$d/"
  done
  sortpng
}

sortpng(){
  for x in *.png; do
    d=$(date -r "$x" +%Y)
  mkdir -p "$d"
  mv -- "$x" "$d/"
  done
  sortjpg
}

sortjpg(){
  for x in *.jpg; do
    d=$(date -r "$x" +%Y)
  mkdir -p "$d"
  mv -- "$x" "$d/"
  done
  sortjpeg
}

sortjpeg(){
  for x in *.jpeg; do
    d=$(date -r "$x" +%Y)
  mkdir -p "$d"
  mv -- "$x" "$d/"
  done
}

init
