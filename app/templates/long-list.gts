import { repeat } from 'ember-composable-helpers/helpers/repeat';
import RouteTemplate from 'ember-route-template';
import { fn } from '@ember/helper';
import { on } from '@ember/modifier';
import { tracked } from 'tracked-built-ins';
import Component from '@glimmer/component';

const Foo = <template>
  <div class='p-4'>Template only</div>
</template>;

// eslint-disable-next-line ember/no-empty-glimmer-component-classes
class Bar extends Component {
  <template>
    <div class='p-4'>Composant glimmer</div>
  </template>
}

const BigDivTOC = <template>
  <div class='flex flex-col bg-fuchsia-50 h-48 w-32 m-4'>
    <div
      class='bg-fuchsia-100 rounded-sm border border-pink-600 font-inter text-pink-600 m-4 p-2 text-center'
    > Prenom</div>
    <div class='flex flex-col'>
      <div
        class='bg-fuchsia-100 rounded-sm border border-pink-600 font-inter text-pink-600 m-2 p-2 text-center'
      > description</div>
      <button
        type='button'
        class='bg-fuchsia-100 rounded-sm border border-pink-600 font-inter text-pink-600 m-2 p-2 text-center'
      > Lien</button>
    </div>
  </div>
</template>;

// eslint-disable-next-line ember/no-empty-glimmer-component-classes
class BigDivGlimmer extends Component {
  <template>
    <div class='flex flex-col bg-fuchsia-50 h-48 w-32 m-4'>
      <div
        class='bg-fuchsia-100 rounded-sm border border-pink-600 font-inter text-pink-600 m-4 p-2 text-center'
      > Prenom</div>
      <div class='flex flex-col'>
        <div
          class='bg-fuchsia-100 rounded-sm border border-pink-600 font-inter text-pink-600 m-2 p-2 text-center'
        > description</div>
        <button
          type='button'
          class='bg-fuchsia-100 rounded-sm border border-pink-600 font-inter text-pink-600 m-2 p-2 text-center'
        > Lien</button>
      </div>
    </div>
  </template>
}

const dataArray = tracked({ array: [10] });

const myComponent = tracked({ name: Foo });

function setTable(length: number) {
  dataArray.array = [length];
}

function changeComponent() {
  if (myComponent.name == Foo) {
    myComponent.name = Bar;
  } else if (myComponent.name == Bar) {
    myComponent.name = BigDivTOC;
  } else if (myComponent.name == BigDivTOC) {
    myComponent.name = BigDivGlimmer;
  } else {
    myComponent.name = Foo;
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
      {{on 'click' (fn setTable 5000)}}
    >
      5 000
    </button>
    <button
      type='button'
      class='bg-red-400 rounded-sm font-inter text-white m-4 p-2'
      {{on 'click' (fn setTable 10000)}}
    >
      10 000
    </button>
    <button
      type='button'
      class='bg-red-500 rounded-sm font-inter text-white m-4 p-2'
      {{on 'click' (fn setTable 20000)}}
    >
      20 000
    </button>
    <button
      type='button'
      class='bg-red-600 rounded-sm font-inter text-white m-4 p-2'
      {{on 'click' (fn setTable 30000)}}
    >
      30 000
    </button>
    <button
      type='button'
      class='bg-red-700 rounded-sm font-inter text-white m-4 p-2'
      {{on 'click' (fn setTable 40000)}}
    >
      40 000
    </button>
    <button
      type='button'
      class='bg-red-800 rounded-sm font-inter text-white m-4 p-2'
      {{on 'click' (fn setTable 100000)}}
    >
      100 000
    </button>
    <br />
    {{#each (repeat dataArray.array)}}
      <myComponent.name />
    {{/each}}
  </div>
</template>;

export default RouteTemplate(ListTemplate);
