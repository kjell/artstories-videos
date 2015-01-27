# http://www.nametauinnu.ca/en/nomad/detail/29/21
300_VJ00639000_018.mp4:
	curl -O 'http://static.nametauinnu.ca/M415K/clips/300_VJ00639000_018.mp4' \
		-H 'Pragma: no-cache' -H 'DNT: 1' -H 'Accept-Encoding: identity;q=1, *;q=0' \
		-H 'Accept-Language: en-US,en;q=0.8,es;q=0.6,fr;q=0.4' \
		-H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2257.0 Safari/537.36' \
		-H 'Accept: */*' \
	  -H 'Cache-Control: no-cache' \
		-H 'Referer: http://www.nametauinnu.ca/en/nomad/detail/29/21' \
		-H 'Connection: keep-alive' --compressed

018.srt:
	curl -O http://tshakapesh.nfb.ca/srt/en/018.srt

# https://trac.ffmpeg.org/wiki/HowToBurnSubtitlesIntoVideo 
# http://askubuntu.com/a/485146
subtitle:
	ffmpeg -i 300_VJ00639000_018.mp4 -vf subtitles=018.srt subtitled-hard.mp4
	ffmpeg -i 300_VJ00639000_018.mp4 -i 018.srt -codec copy -map 0 subtitled-soft.mp4
