import { Component } from '@angular/core';
import { CommonsComponent } from 'commons'

@Component({
  selector: 'lib-feature',
  standalone: true,
  imports: [],
  template: `
    <p>
      feature works!
    </p>
  `,
  styleUrls: ['./feature.component.scss']
})
export class FeatureComponent {

}
