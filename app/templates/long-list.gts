// onvzut un tableau qde x elements qu'on ai à disposition et su rlequel on boucle

// refacto le truc avec le helper repeat qui provient de l'addon ember-composable-helpers

//rajoute un boutton 10000
import { repeat } from 'ember-composable-helpers/helpers/repeat';
import RouteTemplate from 'ember-route-template';
import { fn } from '@ember/helper';
import { on } from '@ember/modifier';
import { tracked } from 'tracked-built-ins';

const Foo = <template>
  <div class='p-4'>Coucou</div>
</template>;

const dataArray = tracked({ array: [10] });

function setTable(length: number) {
  dataArray.array = [length];
}

const ListTemplate = <template>
  number is :
  {{dataArray.array.[0]}}
  <br />
  <br />
  <div class='divide-y'>
    <button type='button' {{on 'click' (fn setTable 10)}}>
      10
    </button>
    <button type='button' {{on 'click' (fn setTable 100)}}>
      100
    </button>
    <button type='button' {{on 'click' (fn setTable 10000)}}>
      10000
    </button>
    {{#each (repeat dataArray.array)}}
      <Foo />
    {{/each}}
  </div>
</template>;

export default RouteTemplate(ListTemplate);
