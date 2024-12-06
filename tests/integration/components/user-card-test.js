import { module, test } from 'qunit';
import { setupRenderingTest } from 'my-app/tests/helpers';
import { render } from '@ember/test-helpers';
import { hbs } from 'ember-cli-htmlbars';

module('Integration | Component | user-card', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    // Template block usage:
    await render(hbs`
      <UserCard @user={{hash nom="Saquet" prenom="Fredon" id=1}} />

    `);

    assert.dom().hasText('Nom: Saquet Prénom: Fredon');
  });
});
