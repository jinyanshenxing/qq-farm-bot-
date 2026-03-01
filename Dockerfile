# 基础镜像：轻量Python 3.11环境（适配多数Python项目）
FROM python:3.11-slim

# 设置工作目录（容器内的代码目录）
WORKDIR /app

# 【关键】因无requirements.txt，删除依赖安装步骤
# 若项目有手动需要安装的依赖，可在这里加（示例：安装requests）
# RUN pip install --no-cache-dir requests -i https://pypi.tuna.tsinghua.edu.cn/simple

# 复制项目所有代码到容器（确保项目根目录有启动文件，如main.py）
COPY . .

# 启动命令（替换为你项目实际的启动文件，比如bot.py、main.py）
CMD ["python", "main.py"]
