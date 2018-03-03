FROM nginx:stable

LABEL maintainer="iytem NGINX Docker Maintainers Ahmet AKSIT <ahmetaksit@gmail.com> http://github.com/iytem"

# Set this environment variable to true to set timezone on container start.
ENV SET_CONTAINER_TIMEZONE true
# Default container timezone as found under the directory /usr/share/zoneinfo/.
ENV CONTAINER_TIMEZONE Europe/Istanbul

# Set the timezone.
RUN if [ "$SET_CONTAINER_TIMEZONE" = "true" ]; then \
	echo ${CONTAINER_TIMEZONE} >/etc/timezone && \
	dpkg-reconfigure -f noninteractive tzdata; \
	echo "Container timezone set to: $CONTAINER_TIMEZONE" ;\
else \
	echo "Container timezone not modified";\
fi


CMD ["nginx", "-g", "daemon off;"]
