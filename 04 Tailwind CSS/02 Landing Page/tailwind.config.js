/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js}"],
  // content:['./index.html']
  theme: {
    extend: {
      colors: {
        'primary': '#3138f2',
        'ronak': '#01ee91'
      },
      fontFamily: {
        'display':['poppis', 'sans-serif'],
        'body': ['Inter', 'sans-serif']
      }
    },
  },
  plugins: [],
}

