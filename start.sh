echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/ItzMeLucky/OldMusicBot /OldMusicBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/ItzMeLucky/OldMusicBot -b $BRANCH /OldMusicBot
fi
cd /OldMusicBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
