# README

This README would normally document whatever steps are necessary to get the
application up and running.

# dependencies
rvm install ruby-2.4.1
gem install sprockets -v 3.7.2
gem install rails -v 5.2.3
bundle install


# notes
https://stackoverflow.com/questions/18667326/no-route-matches-get-demo-hello
https://www.youtube.com/watch?v=hrSg4FMUuLk


# running server issue fix
if server not running correctly, it may have a server already running
run 'netstat -tlpn'
then find the PID and run 'kill -9 PID'


# zip file cmd
zip -r RateMyCCI.zip RateMyCCI/

# Run server cmd
rails server -b $IP -p $PORT

# git push cmd sequence
1) git add .
2) git commit -m "comment"
3) git push origin