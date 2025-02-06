// Types for compiled templates
import '@glint/environment-ember-loose';
import 'ember-source/types'
declare module 'my-app/templates/*' {
  import { TemplateFactory } from 'ember-cli-htmlbars';

  const tmpl: TemplateFactory;
  export default tmpl;
}
