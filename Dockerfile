# specify parent image
FROM python:latest

# copy to image
WORKDIR /usr/src/app
COPY . .

# install updates and requirements
RUN apt update -y && \
  pip install --no-cache-dir -r requirements.txt

# expose port
EXPOSE 8888

# run at container start
# CMD ["python", "hello_world.py"]
CMD ["jupyter", "notebook", "--no-browser", "--port=8888", "--ip=0.0.0.0", "--allow-root"]
