import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class NewRoute extends Route {
  @service userData;

  model() {
    return this.userData.users;
  }
}
