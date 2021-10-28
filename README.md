Protextination
==============

Stack: Ruby (Sinatra), API Unsplash, VueJS, TailwindCSS.

doc wip.

Installation
------------

Ruby, bundle, start server.

(Re)generation css
------------------

https://tailwindcss.com/docs/installation

    $ npm install -D tailwindcss@latest
    $ npx tailwindcss init

    $ cat tailwind.config.js 

    module.exports = {
       purge: [
         './src/**/*.html',
         './src/**/*.js',
       ],
      darkMode: false, // or 'media' or 'class'
      theme: {
        extend: {},
      },
      variants: {
        extend: {},
      },
      plugins: [
        require('@tailwindcss/aspect-ratio'),
      ],
    }


    $ npm install @tailwindcss/aspect-ratio

    $ npx tailwindcss -i css/styles.css -o public/css/tailwind.css

    $ NODE_ENV=production npx tailwindcss -i css/styles.css -o public/css/tailwind.css

License
-------

MIT

