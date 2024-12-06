import Component from '@glimmer/component';
import { action } from '@ember/object';
import type { User } from 'my-app/services/user-data';

export default class UserDisplayComponent extends Component<{ user: User }> {
}
