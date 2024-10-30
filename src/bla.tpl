<!-- views/index.njk -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World</title>
    <style>
        input {
            /* styles for input not in a label  */
            border: tomato 2px solid;
          }
          label {
            /* styles for label */
            font-family: system-ui;
            font-size: 1.25rem;
            input {
              /* styles for input in a label  */
              border: blue 2px dashed;
            }
          }
    </style>
    {% include "css/style.tpl" %}
    {% include "components/next-counter.wc" %}
    {% include "components/next-what.wc" %}
</head>

<body>
    <h1>Balberdei en nog wat</h1>
    <next-counter>2</next-counter>
    <next-what>
        <p slot="bla">Hier stond eerst bla, maar nu niet meer</p>
        <p slot="inlist">Dit staat in een lijst als he tgoed is.</p>
    </next-what>
    <next-what test="hallo">
        <p slot="bla">Hier stond eerst bla, maar nu niet meer</p>
        <p slot="inlist">Dit staat in een lijst als he tgoed is.</p>
    </next-what>
    <form>
      <label for="name">Name:
        <input type="text" id="name" />
      </label>
      <label for="email">email:
        <input type="text" id="email" />
      </label>
    </form>
</body>

</html>