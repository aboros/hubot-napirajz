# hubot-napirajz

Allows your hubot to search on kereso.napirajz.hu

See [`src/napirajz.coffee`](src/napirajz.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-napirajz --save`

Then add **hubot-napirajz** to your `external-scripts.json`:

```json
["hubot-napirajz"]
```

## Sample Interaction

```
user1>> hubot napi [some keywords here]
hubot will search with your keywords on kereso.napirajz.hu and reply with a result URL
```
