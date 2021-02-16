FROM ghcr.io/nenokkadine/gdutils:latest
WORKDIR /app
COPY start.sh .
CMD ["bash", "start.sh"]