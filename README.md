<h1>railsTwitter</h1>
This is a simple <a href="http://rubyonrails.org/">Ruby On Rails</a> application that is a twitter feed. Tweets can either be posted without a name, which will just come up as "Anonymous" or with a name. This is deployed on <a href="https://c9.io">Cloud 9</a>. At the following url: https://twitter-tmobaird.c9.io/tweets/index 
<h2>Rails Directories and Configurations</h2>
All controller files are located under the <b>/app/controllers/</b> directory. The main controller file for this application is <b>tweets_controller.rb</b>. All view files are located under the <b>/app/views/tweets/</b> directory but the application.html.erb overall layout is located under the <b>/app/views/layout/</b> directory. My model is located in the <b>/app/models/</b> directory as the file <b>tweet.rb</b>.
<h2>Cucumber Testing</h2>
This repository also includes some of the Cucumber tests that I have used on this application. The .feature files are located inside the features directory. And the step defintions are located inside the <b>/features/step_defintions</b> directory. To use cucumber there must be a few commands that need executed for this to work:
```
$ gem install cucumber
$ bundle install
$ rails g cucumber:install
```
Thsi will create all the necessary directories and install cucumber for you. From here if you would like to execute your cucumber tests on the application you can type either of the following commands:
```
$ bundle exec cucumber
```
or
```
$ cucumber /features/fileToTest.cucumber
```
