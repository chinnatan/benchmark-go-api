from golang:1.23-bullseye

WORKDIR /app

# Copy the source code
COPY . .

# Install the required packages
RUN go mod tidy

EXPOSE 3000

CMD ["go", "run", "main.go"]
