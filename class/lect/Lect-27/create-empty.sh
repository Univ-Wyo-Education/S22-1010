echo "# lab12" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/pschlump72/lab12.git
git push -u origin main

# If you get an error from the push - then crate a token and...
git remote add origin https://ghp_B6900zDLykPMv3VlJYbF3Mz2jBPSoa4gwhHY@github.com/pschlump72/Lab12
git push -u origin main
