import Controller from '@ember/controller';
import { action } from '@ember/object';

export default class UsersController extends Controller {
  foo = 'barre';

  @action
  showAlert() {
    alert(this.foo);
  }
}
