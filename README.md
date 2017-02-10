# hubot-napirajz

A hubot script that interacts with ['http://kereso.napirajz.hu'](http://kereso.napirajz.hu)

See [`src/napirajz.coffee`](src/napirajz.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-napirajz --save`

Then add **hubot-napirajz** to your `external-scripts.json`:

```json
[
  "hubot-napirajz"
]
```

## Sample Interaction

```
user1>> hubot napi delfines
hubot>> http://napirajz.hu/wp-content/uploads/liftajtot.jpg
user1>> hubot napi +rendes +lusta
hubot>> http://kep.index.hu/1/0/534/5344/53447/5344774_e0ad57afa257e51ffdd5184cc0900ca6_wm.jpg
```
