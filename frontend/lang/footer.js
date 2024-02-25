import LocalizedStrings from 'react-localization'

export const strings = new LocalizedStrings({
    fr: {
        ADDRESS_1: 'buynow',
        ADDRESS_2: 'Adresse...',
        ADDRESS_3: '20000 Mumbai, India',
        PHONE: '00212 6 00 00 00 00',
        EMAIL: 'contact@buynow.com',
        COPYRIGHT: `© ${new Date().getFullYear()} buynow. Tous droits réservés.`
    },
    en: {
        ADDRESS_1: 'buynow',
        ADDRESS_2: 'Address...',
        ADDRESS_3: '20000 Mumbai, India',
        PHONE: '00212 6 00 00 00 00',
        EMAIL: 'contact@buynow.com',
        COPYRIGHT: `© ${new Date().getFullYear()} buynow. All Rights Reserved.`
    }
})