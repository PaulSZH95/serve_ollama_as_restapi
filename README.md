# A poc for serving ollama on colab without a need to have ollama to make rest api call

## <u>Problem Statement</u>:

The most versatile attribute of Ollama is the restapi endpoints.

```
curl http://localhost:11434/api/chat -d '{
  "model": "llama2",
  "messages": [
    {
      "role": "user",
      "content": "why is the sky blue?"
    }
  ]
}'
```

However these requires a running instance of ollama with pulled models and that is difficult in colab.

An approach would be to pull the model using api call but that will timeout

```
curl http://localhost:11434/api/pull -d '{
  "name": "llama2"
}'
```

This repo create adds a background task which will start ollama and pull the intended model.

This repo improves on a repo by [marco](https://github.com/marcogreiveldinger/videos/tree/main/ollama-ai/run-on-colab) which uses colab as gpu host for ollama. The endpoint used by marco required the local machine to also have ollama. I.e. ollama on colab, ollama in local machine. This implementation only requires one colab notebook to have ollama and it simplifies integration to workflows.

special thanks:
Ollama on colab by [marco](https://github.com/marcogreiveldinger/videos/tree/main/ollama-ai/run-on-colab)

## setup:

```
replace add_your_auth_token_here in .env file with your ngrok token
```
```
ensure pulled model is the same model used in api call
```
