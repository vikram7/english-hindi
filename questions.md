# Back End
What is ActiveModel Serializer for?
What does "embed" ids mean?
Why did I choose to make it an API?
Are you happy with the Category - Meaning - Word relationships?
What if you wanted to add another language like Tamil?
Are there any other indexes I should add?
Where is a good spot to put that csv file?
There looks like there are a lot of database queries going on. What's the deal?
I should review the data to make sure it looks ok.
What does it mean to Serialize?

##Testing
`json` not found - why? (added helpers to fix this)
What does this mean wrt include?: serialized_meaning = MeaningSerializer.new(meaning, include: [:word])
Why do I get a bunch of warnings when I run `rake spec`?
Why is validate_uniqueness_of failing for meaning?
When do I need serializer tests?

# Front End / Ember
What is bower?
What is Router.js doing?
What is {{outlet}}?
What is { async: true } in models doing?
In my words show page, how is it aware of `meaning`?
Why isn't my words show page aware of `category`? (because categories were not part of the routes.rb file in the backend)
How to install Bootstrap: http://www.programwitherik.com/blog-tutorial-with-ember-js/