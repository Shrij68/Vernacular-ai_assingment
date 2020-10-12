FROM ubuntu:18.04

# Install Telnet
RUN apt-get update && apt-get install telnet 

# Install Curl
RUN apt-get install -y curl

# Install "ffmpeg"
RUN apt-get install -y ffmpeg

CMD ["/bin/bash"]
