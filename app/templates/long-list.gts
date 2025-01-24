import RouteTemplate from 'ember-route-template';

const Foo = <template>
  <div class='p-4'>Coucou</div>
</template>;

const tab = Array(10);

const ListTemplate = <template>
  <div class='divide-y'>
    {{#each tab}}
      <Foo />
    {{/each}}
  </div>
</template>;

export default RouteTemplate(ListTemplate);
