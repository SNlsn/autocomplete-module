#jQuery Autocomplete test

This is a tiny fragment test of a much larger project. I'm building version two of a contact manager/assignment scheduling app from my small commercial photography company. The whole project is too big to contemplate doing in one go. I'm attacking the hard parts in small chunks. This is one of them.

This project is based on Rails version 3.2.13

The goal is to avoid "creative" spellings of company names when creating a new Contact. And also to potentially be able to look up all assignments for a *company* not just for a specific *contact*.

This turned out to be a bigger PITA than anticipated. I referenced the [Railscast on jquery autocomplete](http://railscasts.com/episodes/102-auto-complete-association-revised) but could **not** get the foolish thing to work using SimpleForm, which I really want to use. Particularly since I use SimpleForm in the calendar test.

The [jQuery autocomplete gem](https://github.com/crowdint/rails3-jquery-autocomplete) was the only way I could find to get it to work. This involved discarding some of Ryan Bates' technique, but at least it works.

Another "gotcha" I encountered is that newer versions of the Rails jQuery gem omit jQuery-ui. You need to explicitly install that gem, and you need to explicitly call the modules of jQuery-ui you want in the application.js manifest file. Easy enough to do, but confusing if you are referencing older tutorials.