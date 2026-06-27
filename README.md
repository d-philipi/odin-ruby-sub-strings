# Sub Strings Exercise

A Ruby practice project inspired by the [Sub Strings assignment](https://www.theodinproject.com/lessons/ruby-sub-strings) from [The Odin Project](https://www.theodinproject.com/) Ruby course.

## What is the Sub Strings Project?

Given a string and a list of valid substrings (a **dictionary**), your job is to find which dictionary entries appear inside the string and how many times each one occurs.

Matching is **case insensitive** — `"Howdy"` should match the dictionary word `"howdy"`.

Only substrings that appear at least once should appear in the result hash.

## Project Objective

Implement a `sub_strings` method that takes a string and a dictionary array, then returns a hash of matches and their counts.

```ruby
dictionary = ['hello', 'world']
sub_strings('hello world', dictionary)
# => { 'hello' => 1, 'world' => 1 }
```

This exercise reinforces:

- String manipulation (`downcase`, `scan`, `include?`)
- Arrays and iteration (`each`, `reduce`)
- Hashes (building key/value pairs)
- Case-insensitive matching
- Counting overlapping or repeated occurrences

## Project Structure

```
odin-ruby-sub-strings/
├── exercise/
│   └── sub_strings_exercise.rb   # Your implementation goes here
├── solution/
│   └── sub_strings_exercise.rb     # Reference solution (spoiler!)
├── spec/
│   ├── sub_strings_exercise_spec.rb
│   └── spec_helper.rb
├── .rspec
└── README.md
```

| Folder / file | Purpose |
|---------------|---------|
| `exercise/` | Write your code here while learning |
| `spec/` | RSpec tests that verify your solution |
| `solution/` | A completed reference implementation |

By default, the specs load your code from `exercise/sub_strings_exercise.rb`.

## Requirements

Your `sub_strings(string, dictionary)` method should handle the following cases.

### Basic word matching

Find whole words from the dictionary inside the string.

```ruby
sub_strings('hello world', ['hello', 'world'])
# => { 'hello' => 1, 'world' => 1 }
```

### Partial substring matching

Dictionary entries can be shorter than full words. Count how often each appears anywhere in the string.

```ruby
sub_strings('hello world', ['he', 'll', 'o', 'wor', 'ld'])
# => { 'he' => 1, 'll' => 1, 'o' => 2, 'wor' => 1, 'ld' => 1 }
```

Note that `'o'` appears twice in `'hello world'` (in `hello` and in `world`).

### Mixed dictionary entries

The dictionary may contain both partial and full words at the same time.

```ruby
sub_strings('hello world', ['he', 'll', 'o', 'wor', 'ld', 'hello', 'world'])
# => { 'he' => 1, 'll' => 1, 'o' => 2, 'wor' => 1, 'ld' => 1, 'hello' => 1, 'world' => 1 }
```

### Single-word input

```ruby
dictionary = ['below', 'down', 'go', 'going', 'horn', 'how', 'howdy', 'it', 'i', 'low', 'own', 'part', 'partner', 'sit']

sub_strings('below', dictionary)
# => { 'below' => 1, 'low' => 1 }
```

### Multiple words and punctuation

Handle sentences with spaces, punctuation, and mixed casing.

```ruby
sub_strings("Howdy partner, sit down! How's it going?", dictionary)
# => {
#      'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1,
#      'it' => 2, 'i' => 3, 'own' => 1, 'part' => 1, 'partner' => 1, 'sit' => 1
#    }
```

## Getting Started

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) installed
- [RSpec](https://rspec.info/) gem (`gem install rspec`)

### Run the tests

From the project root:

```bash
cd odin-ruby-sub-strings
rspec
```

Or run a specific spec file:

```bash
rspec spec/sub_strings_exercise_spec.rb
```

### Workflow

1. Open `exercise/sub_strings_exercise.rb` and implement `sub_strings`.
2. Run `rspec` — the first active test should pass once your basic logic works.
3. Tests marked with `xit` are skipped. Remove the `x` from `xit` to enable the next test (change `xit` to `it`).
4. Repeat until all tests pass.

## Hints

- Downcase the input string before comparing so matching is case insensitive.
- Ruby's `String#scan` finds all non-overlapping occurrences of a pattern — useful for counting matches.
- If you use `scan`, avoid calling it twice for the same word; store the count in a variable first.
- `Enumerable#reduce` (or `each`) works well for building a hash from the dictionary.
- Only add entries to the result hash when the count is greater than zero.
- The Odin assignment names the method `#substrings`; this repo uses `sub_strings` to match the spec file.

## Odin Project Reference

The original Odin brief uses the method name `substrings` and the same dictionary examples shown above. The core idea is identical: iterate through your dictionary, check each word against the input string, and return a hash of `{ substring => count }` pairs.

```ruby
dictionary = ['below', 'down', 'go', 'going', 'horn', 'how', 'howdy', 'it', 'i', 'low', 'own', 'part', 'partner', 'sit']

substrings('below', dictionary)
# => { 'below' => 1, 'low' => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1,
#      'it' => 2, 'i' => 3, 'own' => 1, 'part' => 1, 'partner' => 1, 'sit' => 1 }
```

## Resources

- [Odin Project — Sub Strings](https://www.theodinproject.com/lessons/ruby-sub-strings)
- [Odin Project — Ruby Course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby)
- [Ruby `String#scan` documentation](https://ruby-doc.org/core/String.html#method-i-scan)
- [Ruby `Hash` documentation](https://ruby-doc.org/core/Hash.html)
- [Ruby `Enumerable#reduce`](https://ruby-doc.org/core/Enumerable.html#method-i-reduce)

## License

This project is licensed under the MIT License — see [LICENSE](LICENSE).
