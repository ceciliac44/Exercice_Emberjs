import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';
import type UserDataService from 'my-app/services/user-data';
import type { User } from 'my-app/services/user-data';


export default class NewRoute extends Route {
  @service declare userData: UserDataService;

  model(): User[] {
    return this.userData.users;
  }
}
