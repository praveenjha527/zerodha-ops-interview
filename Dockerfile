FROM golang:latest

RUN mkdir -p /ops-interview-task

WORKDIR /ops-interview-task

# Copy Makefile
COPY ./Makefile ./Makefile

# Copy all project files
ADD . .

# Generate Build
RUN make build

# Command to run the executable
CMD make run
