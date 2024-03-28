POST_DIR=content/posts/$1
POST_FILE=$POST_DIR/index.md

mkdir -p $POST_DIR
echo "---" >> $POST_FILE
echo "title: \"$1\"" >> $POST_FILE
echo "---" >> $POST_FILE