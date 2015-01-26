rename:
	rename --nows *
	rename --nows **

thumbnails:
	find . -name "*.mp4" | while read video; do \
		[[ -f "$$video.jpg" ]] || ffmpeg -ss 1 -i "$$video" -f image2 -vframes 1 "$$video.jpg"; \
	done
	echo
