#!/bin/bash
# ==============================
# Gitpush quraşdırma skripti
# ==============================

mkdir -p ~/.local/bin
cp gp.sh ~/.local/bin/gp
chmod +x ~/.local/bin/gp


# 5️⃣ PATH-ı yoxla və əlavə et
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
  echo "✅ PATH dəyişəni ~/.bashrc və ~/.zshrc fayllarına əlavə edildi."
else
  echo "ℹ️  ~/.local/bin artıq PATH-da var."
fi

# 6️⃣ PATH dəyişikliklərini tətbiq et
source ~/.bashrc
source ~/.zshrc

