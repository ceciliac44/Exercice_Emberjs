'use strict';

module.exports = {
  overrides: [
    {
      files: '*.{js,ts}',
      options: {
        singleQuote: true,
      },
    },
    {
      files: '*.gts',
      options: {
        plugins: ['prettier-plugin-ember-template-tag'],
        singleQuote: true,
      },
    },
  ],
};
