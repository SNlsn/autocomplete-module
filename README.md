#jQuery Autocomplete test

This is a tiny fragment test of a much larger project.

The goal is to avoid "creative" spellings of company names when creating a new Contact. And also potentially to be able to look up all assignments for a *company* not just for a specific *contact*.

This turned out to be a bigger PITA than anticipated. I referenced the (Railscast)[http://railscasts.com/episodes/102-auto-complete-association-revised] but could **not** get the foolish thing to work using SimpleForm, which I really want to use. Particularly since I use SimpleForm in the calendar test.

The (jquery autocomplete gem)[https://github.com/crowdint/rails3-jquery-autocomplete] was the only way I could find to get it to work. This involved discarding some of Ryan Bates' technique, but at lest it works.

Another "gotcha" I encountered is that newer versions of the jquery gem omit jqueryui. You need to explicitly install that get, and you need to explicitly call the modules of jqueryui you want in the application.js manifest file.