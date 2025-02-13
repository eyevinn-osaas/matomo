FROM matomo:5.2.2

COPY ./osc-entrypoint.sh /osc-entrypoint.sh
RUN chmod +x /osc-entrypoint.sh

EXPOSE 8080
ENTRYPOINT ["/osc-entrypoint.sh"]
CMD ["apache2-foreground"]
