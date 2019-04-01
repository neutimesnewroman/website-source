# neutimesnewroman.github.io

## Important things about the website in general:

1. [Read this][1], it tells you how to get things like bold and italic.
2. If you want to edit the website on your computer, install [Ruby][2] and [Bundler][3]. If you want to preview any changes, this is the way to do it.
   - Also recommended: [Visual Studio Code][4]
   - When you first download the repository, run `bundle install` in the folder.
   - After that, run `bundle exec jekyll serve`
3. Don't edit master directly, all commits should be made to the source branch.
4. Keep large files (most images, pdfs, etc.) out of this repository. If you need to host them somewhere, create another github repository, set that as a github pages in its settings (you don't need to do anything fancy there like you need to do here), upload the PDFs there, and then you can link to the pdf
directly (use the link that is something.github.io/something, **not** the link that is github.com/something).

## If you need to recreate the website's build system

1. In whatever repository you are using, make sure that github pages builds are coming from **master** and that you have a branch called **source** with all of the normal website stuff in it.
2. Set the default branch in the repository to source and protect it to reject force pushes. If something is screwed up and the system tries to force push to the wrong branch, you don't want to lose the website data.
3. Go to [Travis-CI][5] or something similar and set that up. This repository already has the `.travis.yml`. You can change the branch name from `source` there. Also, you probably will need to change the repository URL on line 17 of script/cibuild.
4. Create a [github token][6] that allows reading and writing to the repository
5. In Travis settings, add an environment variable `GH_TOKEN` with the token that you just generated.
6. Push the site to the `source` branch and make sure there are no errors in Travis.

[1]:https://commonmark.org/help/
[2]:https://www.ruby-lang.org/en/
[3]:https://bundler.io/
[4]:https://code.visualstudio.com/
[5]:https://travis-ci.org/
[6]:https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line