import { LightningElement, api, wire, track } from 'lwc';
import getContactData from '@salesforce/apex/PremiumClientController.getContactData';

export default class PremiumClientCard extends LightningElement {
    @track contacts = [];

    @wire(getContactData)
    wiredContacts({error, data}){
        if(data){
            this.contacts = data;
            console.log('Contatos retornados:', JSON.stringify(this.contacts))
        }
        else if (error){
            console.error('Erro ao buscar contatos:' + error);
        }
    }
}
