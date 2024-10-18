# Use Amazon Linux 2023 as the base image
FROM public.ecr.aws/amazonlinux/amazonlinux:2023

# Install Apache (httpd) and clean up
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Copy the index.html file to the Apache web server's default document root
COPY index.html /var/www/html/

# Expose port 80 to allow access to the web server
EXPOSE 80

# Start the Apache service in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
