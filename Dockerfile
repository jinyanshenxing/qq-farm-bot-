# 基础镜像（轻量Python环境）
FROM python:3.11-slim

# 设置工作目录
WORKDIR /app

# 安装依赖（如需系统依赖，可在此添加）
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    && rm -rf /var/lib/apt/lists/*

# 复制依赖文件并安装Python依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# 复制项目代码
COPY . .

# 设置启动命令（替换为项目实际启动命令）
CMD ["python", "main.py"]
