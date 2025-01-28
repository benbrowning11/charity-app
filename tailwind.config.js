import defaultTheme from 'tailwindcss/defaultTheme';
import forms from '@tailwindcss/forms';

/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],

    theme: {
        extend: {
            fontFamily: {
                gloria: ['Gloria Hallelujah', 'cursive'],
                verdana: ['Verdana', 'sans-serif'],
                inter: ['Inter', 'sans-serif'],
            },
            backgroundImage: {
              'gradient-radial': 'radial-gradient(var(--tw-gradient-stops))',
            },
            fontSize: {
                '8xl': '6rem', // 96px
            },
            colors: {
                'ledu-blue': '#1135F3',
                'ledu-dark-blue': '#0E076F',
                'ledu-green': '#53A21A',
            },
        },
    },

    plugins: [forms],
};
