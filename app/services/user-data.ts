import Service from '@ember/service';

export interface User {
  /** foo  */
  nom: string;
  prenom: string;
  id: number;
}

export default class UserDataService extends Service {
  users: User[] = [
    { nom: 'saquet', prenom: 'fredon', id: 1 },
    { nom: 'pierre', prenom: 'paul', id: 2 },
    { nom: 'cappia', prenom: 'cecilia', id: 3 },
    { nom: 'doe', prenom: 'john', id: 4 },
    { nom: 'smith', prenom: 'anna', id: 5 },
  ];
}
