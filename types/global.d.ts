// Types for compiled templates
import '@glint/environment-ember-loose';
declare module 'my-app/templates/*' {
  import { TemplateFactory } from 'ember-cli-htmlbars';

  const tmpl: TemplateFactory;
  export default tmpl;
}
