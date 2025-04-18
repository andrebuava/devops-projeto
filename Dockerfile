# Usando uma imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho no container
WORKDIR /app

# Copie o arquivo requirements.txt para o container
COPY requirements.txt .

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante do código da aplicação para dentro do container
COPY . .

# Exponha a porta que sua aplicação vai rodar (ajuste conforme necessário)
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]
