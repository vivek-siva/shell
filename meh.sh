
imageurl=$(curl  "https://meh.com/feed.json" | python -m json.tool |grep "image" |sed 's/\"\image\"\:\ \"//g' | sed 's/\"//g')

title=$(curl  "https://meh.com/feed.json" |python -m json.tool |grep "title" |sed 's/\"//g' |sed 's/title\://g' |sed 's/Meh\,//g' | sed 's/Meh\,//g')

url=$(curl  "https://meh.com/feed.json" |python -m json.tool |grep 'id"' |sed 's/\"//g' |sed 's/id\://g' |sed 's/\,//g' )

clear
echo "$imageurl"
echo "$title"
echo "$url"
