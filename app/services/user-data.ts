import Service from '@ember/service';

export interface User {
  nom: string;
  prenom: string;
  id: number;
}

export default class UserDataService extends Service {
  users: User[] = [
    { nom: 'Saquet', prenom: 'Fredon', id: 1 },
    { nom: 'Pierre', prenom: 'Paul', id: 2 },
    { nom: 'Cappia', prenom: 'Cecilia', id: 3 },
    { nom: 'Doe', prenom: 'John', id: 4 },
    { nom: 'Smith', prenom: 'Anna', id: 5 },
  ];
}
