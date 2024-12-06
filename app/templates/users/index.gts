import RouteTemplate from "ember-route-template";

// eslint-disable-next-line prettier/prettier
import type { User } from 'my-app/services/user-data';
import { on } from '@ember/modifier';
import { LinkTo } from '@ember/routing';
import UserControler from 'my-app/controllers/users';


interface Signature {
  Args: {
    controller: UserControler;
    model:User[];
  };
}

export default RouteTemplate<Signature>(
  <template><button type="button" {{on "click" @controller.showAlert}} >
  afficher une alerte
</button>
<h1>Liste des Utilisateurs</h1>
<ul>
  {{#each @model as |user|}}
    <li>
     <LinkTo @route="users.show" @model={{user}}> Utilisateur {{user.id}} </LinkTo>
    </li>
  {{/each}}
</ul></template>,
);

