import { LightningElement, api, wire, track } from 'lwc';
import getContactData from '@salesforce/apex/PremiumClientController.getContactData';

export default class PremiumClientCard extends LightningElement {
    @api recordId;
    @track contact;

    @wire(getContactData, { contactId: '003gK00000EhmkTQAR' })
    wiredContact({ error, data }) {
        if (data) {
            this.contact = data;
        } else if (error) {
            console.error(error);
        }
    }
}
