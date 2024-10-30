<!-- views/index.njk -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hello World</title>
  <style>

  </style>
  {% include "css/style.tpl" %}
  {% include "components/next-counter.wc" %}
  {% include "components/next-what.wc" %}
</head>

<body>
  <header>
    <nav>
      <a class=nav-link href="#">home</a>
      <a class=nav-link href="#bla">bla</a>
      <a class=nav-link href="#test">test</a>
      <a class=nav-link href="#test2">test2</a>
    </nav>
  </header>
  <section id="home">
    <p>Dit is home</p>
  </section>
  <section id="bla">
    <h1>Section Bla</h1>
    <next-counter>2</next-counter>
    <next-what>
      <p slot="bla">Hier stond eerst bla, maar nu niet meer</p>
      <p slot="inlist">Dit staat in een lijst als he tgoed is.</p>
    </next-what>
    <next-what test="hallo">
      <p slot="bla">Hier stond eerst bla, maar nu niet meer</p>
      <p slot="inlist">Dit staat in een lijst als he tgoed is.</p>
    </next-what>
  </section>
  <section id="test">
    <h1>Dit is test</h1>
    <form>
      <label for="name">Name:
        <input type="text" id="name" />
      </label>
      <label for="email">email:
        <input type="text" id="email" />
      </label>
    </form>
  </section>
  <section id="test2">
    <h1>Dit is test 2</h1>
    <form>
      <label for="name">Name:
        <input type="text" id="name" />
      </label>
      <label for="email">email:
        <input type="text" id="email" />
      </label>
    </form>
  </section>
  <script src="js/observer.js"></script>
</body>

</html>