FROM python:alpine

# Create a group and user
RUN addgroup -S appgroup -g 10000
RUN adduser -S appuser -G appgroup -u 10000

# Tell docker that all future commands should run as the appuser user
USER appuser

ADD event-simulator.py .

CMD ["python", "event-simulator.py"]