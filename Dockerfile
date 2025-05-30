# Usar imagem oficial do Python
FROM python:3.11-slim

# Criar diretório de trabalho
WORKDIR /app

# Copiar os arquivos do projeto para o container
COPY . .

# Instalar dependências
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expor a porta usada pelo Flask
EXPOSE 1313

# Comando para rodar a aplicação
CMD ["python", "app.py"]
