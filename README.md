# Docker Image for Data Science

This repository contains a Dockerfile to create a custom Docker image for Python-based data science environments.

## Usage Instructions

1. Make sure you have Docker installed on your machine. You can find installation instructions at https://docs.docker.com/get-docker/.

2. Clone this repository:

```bash
git clone git@github.com:tharlesamaro/docker-image-for-data-science.git
```

3. Navigate to the project directory:

```bash
cd docker-image-for-data-science
```

4. Build the Docker image:

```bash
docker build -t image_name:tag .
```

>[!NOTE]
Replace `image_name` with the desired name for your image and `tag` with the desired tag.

5. Run Docker image:

```bash
docker run -it image_name:tag
```

>[!NOTE]
This will start a bash shell inside the Docker container.

>[!IMPORTANT]
If you need to further customize the image, you can edit the Dockerfile as needed and repeat steps 4 and 5.