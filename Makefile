rename:
	rename --nows *
	rename --nows **

thumbnails:
	find . -name "*.mp4" | grep -v scratch | while read video; do \
		[[ -f "$$video.jpg" ]] || ffmpeg -ss 1 -i "$$video" -f image2 -vframes 1 "$$video.jpg"; \
	done
	echo

rsync:
	find . -name "*.mp4*" | grep -v 'all/' | grep -v scratch | while read file; do \
		test -h all/$$file  || ln -sf "$$(pwd)/$$file" all/; \
	done
	rsync -avzL all/* dx:/apps/cdn/videos/artstories/

video-listing:
	tree --noreport -i -n -I 'all|*.jpg|Makefile|*.txt|scratch' | tail -n+2 \
		| sed -r 's/^(.*[^4])$$/\n# \1/; s|^(.*4)$$|http://cdn.dx.artsmia.org/videos/artstories/\1|;' \
		| tail -n+2 > video-listing.md
