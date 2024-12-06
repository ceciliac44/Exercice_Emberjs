import EmberRouter from '@ember/routing/router';
import config from 'my-app/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('link');
  this.route('gts-template-works');
  this.route('users', function () {
    this.route('show', { path: '/:id' });
  });
});
