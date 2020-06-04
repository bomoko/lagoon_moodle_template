ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM algmprivsecops/moodle_php:latest 

ENV APP_ENV=${LAGOON_ENVIRONMENT_TYPE}
COPY --from=cli /app /app
