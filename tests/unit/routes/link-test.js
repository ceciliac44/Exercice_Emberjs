import { module, test } from 'qunit';
import { visit } from '@ember/test-helpers';
import { setupTest } from 'my-app/tests/helpers';

module('Acceptance | Route | link', function (hooks) {
  setupTest(hooks);

  test('it exists', async function (assert) {
    await visit('/link');
    assert.dom().containsText('nouveau lien');
  });
});
