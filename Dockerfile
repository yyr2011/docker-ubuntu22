FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 默认英文，支持中文
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

RUN apt update && \
    apt install -y \
        vim \
        locales \
        tzdata \
        ca-certificates && \
    sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    sed -i 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=en_US.UTF-8 && \
    apt clean && rm -rf /var/lib/apt/lists/*

# -------- 容器常驻关键 --------
# 使用 exec 形式，保证 PID 1 正确
CMD ["bash", "-c", "while true; do sleep 3600; done"]