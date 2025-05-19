
echo "🚀 Installing One-Click Developer Environment..."

# Update system
sudo apt update && sudo apt upgrade -y

echo "📦 Installing Git..."
sudo apt install -y git

echo "🐍 Installing Python 3 & pip..."
sudo apt install -y python3 python3-pip python3-venv

echo "📦 Installing Node.js & npm..."
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

echo "🗃️ Installing MySQL Server..."
sudo apt install -y mysql-server

echo "🍃 Installing MongoDB..."
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo gpg --dearmor -o /usr/share/keyrings/mongodb.gpg
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt update && sudo apt install -y mongodb-org

echo "🐳 Installing Docker..."
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

echo "🧪 Installing VS Code..."
sudo snap install code --classic

echo "📬 Installing Postman..."
sudo snap install postman

echo "⚛️ Installing React CLI..."
npm install -g create-react-app

echo "🧠 Installing Python packages: numpy, jupyter, streamlit, ruff, debugpy, cline..."
pip3 install --upgrade pip
pip3 install numpy jupyter streamlit ruff debugpy cline

echo "🤖 Installing Ollama (Large Language Model runtime)..."
curl -fsSL https://ollama.com/install.sh | sh

echo "✅ Done! Please reboot or log out and back in for Docker group changes to take effect."
