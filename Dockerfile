# 基础镜像选择Ubuntu
FROM ubuntu:22.04

COPY . /app
WORKDIR /app
# 设置环境变量，避免在构建过程中提示交互
ENV DEBIAN_FRONTEND=noninteractive

# 更新系统并安装必要的依赖工具
RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    cmake \
    make \
    wget \
    python3 \
    zlib1g-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libssl-dev \
    file gdb vim git python3-pip \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /usr/src

# 下载 LLVM 3.5 源码
RUN wget https://releases.llvm.org/3.5.0/llvm-3.5.0.src.tar.xz && \
    tar -xf llvm-3.5.0.src.tar.xz && \
    rm llvm-3.5.0.src.tar.xz

# 创建构建目录
WORKDIR /usr/src/llvm-3.5.0.src/build

# 配置和编译
RUN cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local/llvm-3.5 .. && \
    make -j$(nproc) && \
    make install

# 配置环境变量
ENV PATH="/usr/local/llvm-3.5/bin:$PATH"

# Install debugger.
RUN bash -c "$(wget https://gef.blah.cat/sh -O -)"
ENV LC_CTYPE=C.UTF-8

# Build debug and release version respectively.
RUN cd /app && mkdir debug && cd debug && \
    cmake -DCMAKE_BUILD_TYPE=Debug .. && make
RUN cd /app && mkdir release && cd release && \
    cmake -DCMAKE_BUILD_TYPE=Release .. && make

RUN python3 -m pip install --upgrade pip && \
	python3 -m pip install --upgrade qiling==1.4.5
COPY trace.py /apptrace.py

# 默认命令
WORKDIR /app
CMD ["bash"]
