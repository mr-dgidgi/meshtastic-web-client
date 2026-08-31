# renovate: datasource=docker depName=ghcr.io/meshtastic/web
ARG MESHTASTIC_VERSION=v2.7.1

FROM ghcr.io/meshtastic/web:${MESHTASTIC_VERSION} AS source

FROM nginx:alpine

COPY --from=source /usr/share/nginx/html /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
