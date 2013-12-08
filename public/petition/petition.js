Last login: Sat Dec  7 16:27:09 on ttys002
Antons-Work-MacBook-Pro:~ antonm$ pwd
/Users/antonm
Antons-Work-MacBook-Pro:~ antonm$ ls
Applications	Downloads	Library		Pictures	campaigner
Desktop		Google Drive	Movies		Public
Documents	IBMERS		Music		SametimeRooms
Antons-Work-MacBook-Pro:~ antonm$ cd campaigner/
Antons-Work-MacBook-Pro:campaigner antonm$ ls
Gemfile		app		design		pages		test
Gemfile.lock	config		doc		project.json	tmp
README.md	config.ru	lib		public		vendor
Rakefile	db		log		script
Antons-Work-MacBook-Pro:campaigner antonm$ cd app
Antons-Work-MacBook-Pro:app antonm$ cd ..
Antons-Work-MacBook-Pro:campaigner antonm$ cd public/
Antons-Work-MacBook-Pro:public antonm$ ls
404.html	500.html	index.html	robots.txt
422.html	favicon.ico	petition	test.html
Antons-Work-MacBook-Pro:public antonm$ cd petition/
Antons-Work-MacBook-Pro:petition antonm$ ls
images		petition.css	petition.html	petition.js
Antons-Work-MacBook-Pro:petition antonm$ vi petition.js 
Antons-Work-MacBook-Pro:petition antonm$ git push
warning: push.default is unset; its implicit value is changing in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the current behavior after the default changes, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

Username for 'https://github.com': antonmc
Password for 'https://antonmc@github.com': 
Everything up-to-date
Antons-Work-MacBook-Pro:petition antonm$ git commit
# On branch master
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   ../../Gemfile
#	modified:   ../../Gemfile.lock
#	modified:   petition.js
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	../test.html
no changes added to commit (use "git add" and/or "git commit -a")
Antons-Work-MacBook-Pro:petition antonm$ 
Antons-Work-MacBook-Pro:petition antonm$ vi petition.js 

function filePetition(){

        var signatoryName = document.getElementById( 'signatory' );
        var email = document.getElementById( 'emailaddress' );

        console.log( 'signatory: ' + signatory.value );
        console.log( 'emailaddress: ' + emailaddress.value );

        var signature = { "email": signatory.value, "name": signatoryName };

        var xhr = new XMLHttpRequest();

        xhr.open('POST', 'somewhere', true);

        xhr.open('POST', 'http://localhost:3000/campaigns/1/signatories.json', true);

        xhr.onload = function () {
            console.log('onload');
        };

        xhr.send( signature );

  // needs to hit:
"petition.js" 30L, 723C
