import Component from '@glimmer/component';
// eslint-disable-next-line prettier/prettier
import type { User } from 'my-app/services/user-data';


// eslint-disable-next-line ember/no-empty-glimmer-component-classes
export default class UserDisplayComponent extends Component<{ user: User }>{
  <template>
    <div>
  <img alt="" src="https://picsum.photos/200/300?random={{@user.id}}">
  <p>Nom: {{@user.nom}}</p>
  <p>Prénom: {{@user.prenom}}</p>
</div>
  </template>
}
