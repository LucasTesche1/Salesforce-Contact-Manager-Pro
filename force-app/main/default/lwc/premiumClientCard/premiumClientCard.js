import { LightningElement, api, wire, track } from 'lwc';
import getContactData from '@salesforce/apex/PremiumClientController.getContactData';

export default class PremiumClientCard extends LightningElement {
    @api recordId;
    @track contact;

    @wire(getContactData, { contactId: '$recordId' })
    wiredContact({ error, data }) {
        console.log('recordId:', this.recordId);
        console.log('data:', data);
        console.log('error:', error);

        if (data) {
            this.contact = data;
        } else if (error) {
            console.error('Apex error:', error);
        }
    }
}
