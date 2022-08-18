if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Aju001/AJU_SER.git /AJUSER_BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AJUSER_BOT
fi
cd /AJUSER_BOT
pip3 install -U -r requirements.txt
echo "Starting Ajuser Bot...."
python3 main.py
