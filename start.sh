if [ -z $UPSTREAM_REPO ]

then

  echo "Cloning main Repository"

  git clone https://github.com/newacccx/lazymong /lazymong

else

  echo "Cloning Custom Repo from $UPSTREAM_REPO "

  git clone $UPSTREAM_REPO /lazymong

fi

cd /lazymong

pip3 install -U -r requirements.txt

echo "Starting Bye JK DEVOLOPER Bot...."

python3 bot.py
