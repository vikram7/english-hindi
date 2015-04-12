# Back End
What does "embed" ids mean? embeds ids of associations instead of embedding serialized json representations of them
Are you happy with the Category - Meaning - Word relationships?
What if you wanted to add another language like Tamil?
Are there any other indexes I should add?

##Testing
What does this mean wrt include?: serialized_meaning = MeaningSerializer.new(meaning, include: [:word])
Why do I get a bunch of warnings when I run `rake spec`?
Why is validate_uniqueness_of failing for meaning?
When do I need serializer tests?

# Front End / Ember
What is Router.js doing?
What is {{outlet}}? placeholders for other templates. As users move around your app, different templates can be plugged into the outlet by the router. You can put outlets into your template using the {{outlet}} helper.
What is { async: true } in models doing?
In my words show page, how is it aware of `meaning`?
Why isn't my words show page aware of `category`? (because categories were not part of the routes.rb file in the backend)
Why isn't a fromModel & toModel transition working for random word <-> random word?
