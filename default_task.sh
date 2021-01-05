echo "定时任务更新代码，git 拉取最新代码，并安装更新依赖..."
git -C /qx-scripts pull
for i in Scripts; do
git -C /qx-scripts/${i} pull
npm install --prefix /qx-scripts/${i}
done