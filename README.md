# Ollama Render Service

Self-hosted Ollama AI service deployed on Render for the LifeOS application.

## 🚀 Features

- **Primary Model**: qwen2.5:7b (excellent for reasoning and productivity tasks)
- **Fallback Models**: phi3:mini, llama3.1:8b
- **Zero Rate Limits**: Unlike external APIs
- **Cost Effective**: Free tier on Render
- **Auto-scaling**: Handles traffic spikes

## 🛠️ Deployment

### Automatic Deployment (Recommended)

1. Fork this repository
2. Connect to Render:
   - Go to [Render Dashboard](https://dashboard.render.com)
   - Click "New" → "Web Service"
   - Connect your GitHub repository
   - Render will automatically detect the `render.yaml` configuration

### Manual Deployment

1. Create a new Web Service on Render
2. Connect your repository
3. Set the following:
   - **Environment**: Docker
   - **Dockerfile Path**: `./Dockerfile`
   - **Port**: 11434

## 🔧 Configuration

### Environment Variables

- `OLLAMA_HOST`: `0.0.0.0:11434`
- `OLLAMA_ORIGINS`: `*` (allows CORS)

### Models Available

- **qwen2.5:7b**: Best balance of performance and efficiency
- **phi3:mini**: Lightweight, faster responses
- **llama3.1:8b**: More capable but slower

## 📡 API Endpoints

### Health Check
```bash
GET /api/tags
