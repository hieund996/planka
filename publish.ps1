Remove-Item -Path "./dist" -Recurse -Force

Push-Location ./client
npm run build --omit=dev
Pop-Location

mkdir dist

Copy-Item -Path "./server/*" -Destination "./dist" -Force -Recurse

Move-Item -Path "./client/dist/*" -Destination "./dist/public" -Force

Copy-Item -Path "./dist/public/index.html" -Destination "./dist/views/index.html" -Force
