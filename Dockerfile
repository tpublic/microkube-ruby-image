FROM docker.bluelight.limited:5000/bluelightltd/microkube-user-image


# ENV RUBY_VER=2.5.3
ENV RUBY_VER=2.6.0



# # # Installing $RUBY_VER
RUN             . /etc/rvmrc && \
        export PATH="$PATH:/usr/local/rvm/bin/" && \
        rvm install  $RUBY_VER && \
        export PATH="/usr/local/rvm/rubies/ruby-$RUBY_VER/bin:$PATH" 

#CMD ["/bin/bash", "-c", "top"]