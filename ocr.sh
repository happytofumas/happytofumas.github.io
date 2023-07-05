find content -type f \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png \) -print0 | while IFS= read -r -d '' file
do
    base="${file%.*}"
    if [[ -f "$base.txt" ]]; then
        continue
    fi
    tesseract "$file" "$base" -l jpn+jpn_vert+kor+kor_vert+eng
done