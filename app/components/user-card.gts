const userCard =<template>
    <div>
  <img alt="" src="https://picsum.photos/200/300?random={{@user.id}}">
  <p>Nom: {{@user.nom}}</p>
  <p>Prénom: {{@user.prenom}}</p>
</div>
  </template>

export default userCard
