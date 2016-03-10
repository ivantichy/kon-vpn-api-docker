FROM ivantichy/oracle-java8

run ls

COPY /Koncentrator /home/java/Koncentrator


RUN cd /home/java && ls
