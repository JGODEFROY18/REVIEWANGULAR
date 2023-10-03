import { Component } from '@angular/core';

@Component({
  selector: 'app-formulaire-angular',
  templateUrl: './formulaire-angular.component.html',
  styleUrls: ['./formulaire-angular.component.scss']
})
  export class FormulaireAngularComponent {
    titl!: string;
    Nom!: string;
    Prenom!: string;
    Email!: string;
    message!: string;

    ngOnInit() {
      this.titl = 'testangular';
      this.Nom = 'Nom';
      this.Prenom = 'Prenom';
      this.Email = 'Email';
      this.message = 'Message';
    }

    submitForm() {

      console.log('Nom:', this.Nom);
      console.log('Prénom:', this.Prenom);
      console.log('Email:', this.Email);
      console.log('Message:', this.message);
    }
  }
