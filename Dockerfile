# 使用基础镜像 ollama/ollama
FROM ollama/ollama

# 执行 apt 更新和安装 python3 和 pip3
RUN apt update && apt install -y python3 && apt install -y python3-pip

# 安装 litellm 和 litellm[proxy]，指定清华镜像源
RUN pip3 install --no-cache-dir litellm -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip3 install --no-cache-dir 'litellm[proxy]' -i https://pypi.tuna.tsinghua.edu.cn/simple
