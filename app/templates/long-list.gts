import { repeat } from 'ember-composable-helpers/helpers/repeat';
import RouteTemplate from 'ember-route-template';
import { fn } from '@ember/helper';
import { on } from '@ember/modifier';
import { tracked } from 'tracked-built-ins';
import type { TemplateOnlyComponent } from '@ember/component/template-only';
import Component from '@glimmer/component';
import { eq } from 'ember-truth-helpers';

const Foo = <template>
  <div class='p-4'>FOO</div>
</template>;

const Bar: TemplateOnlyComponent = <template>
  <div class='p-4'>BAR</div>
</template>;

// class BarBis extends Component {
//   <template>
//     <div class='p-4'>Coucou</div>
//   </template>
// }

const dataArray = tracked({ array: [10] });

const myComponent = tracked({ name: 'Foo' });

function setTable(length: number) {
  dataArray.array = [length];
}

function changeComponent() {
  if (myComponent.name == 'Foo') {
    myComponent.name = 'Bar';
  } else {
    myComponent.name = 'Foo';
  }
}

const ListTemplate = <template>
  number is :
  {{dataArray.array.[0]}}
  <br />
  <br />
  <button
    type='button'
    class='bg-fuchsia-100 rounded-sm border border-pink-600 font-inter text-pink-600 m-2 p-2'
    {{on 'click' changeComponent}}
  >
    switch component
  </button>
  <br />
  <br />
  <div class='divide-y'>
    <button
      type='button'
      class='bg-fuchsia-100 rounded-sm font-inter text-pink-600 m-4 p-2'
      {{on 'click' (fn setTable 10)}}
    >
      10
    </button>

    <button
      type='button'
      class='bg-red-50 rounded-sm font-inter text-pink-600 m-2 p-2'
      {{on 'click' (fn setTable 30)}}
    >
      30
    </button>

    <button
      type='button'
      class='bg-red-100 rounded-sm font-inter text-pink-600 m-4 p-2'
      {{on 'click' (fn setTable 60)}}
    >
      60
    </button>
    <button
      type='button'
      class='bg-red-200 rounded-sm font-inter text-pink-600 m-4 p-2'
      {{on 'click' (fn setTable 100)}}
    >
      100
    </button>
    <button
      type='button'
      class='bg-red-300 rounded-sm font-inter text-pink-600 m-4 p-2'
      {{on 'click' (fn setTable 10000)}}
    >
      10 000
    </button>
    <button
      type='button'
      class='bg-red-400 rounded-sm font-inter text-pink-600 m-4 p-2'
      {{on 'click' (fn setTable 100000)}}
    >
      100 000
    </button>
    <br />
    {{#each (repeat dataArray.array)}}
      {{#if (eq myComponent.name 'Foo')}}
        <Foo />
      {{else}}
        <Bar />
      {{/if}}
    {{/each}}
  </div>
</template>;

export default RouteTemplate(ListTemplate);
