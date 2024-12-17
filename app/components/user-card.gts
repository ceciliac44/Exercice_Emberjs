import {capitalize} from '@ember/string'
import Component from '@glimmer/component'
import type {User} from '../services/user-data'

interface Signature {
  Args: {user : User}
}

export default class UserCard extends Component<Signature> {
  get fullName(){
  return `${capitalize(this.args.user.nom)} ${capitalize(this.args.user.prenom)}`
}
  <template>
      <div>
    <img alt="" src="https://picsum.photos/200/300?random={{@user.id}}">
    <p>{{this.fullName}}</p>
  </div>
    </template>
}
