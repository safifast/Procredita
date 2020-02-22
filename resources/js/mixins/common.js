import {
    ValidationProvider,
    extend,
    ValidationObserver
} from 'vee-validate';
import {
    required,
    alpha_spaces,
    digits,
    email,
    alpha,
    alpha_num,
    min,
    max,
    regex,
    integer,
    mimes,
    confirmed
} from 'vee-validate/dist/rules';
extend('required', {
    ...required,
    message: 'This field is required'
});
extend('alpha', {
    ...alpha,
    message: 'This field must be alphabetic'
});
extend('mimes', {
    ...mimes,
    message: 'This field can be of pdf, jpeg, png'
});
extend('alpha_num', {
    ...alpha_num,
    message: 'This field must be alphabetic and numeric'
});
extend('email', {
    ...email,
    message: 'This field must be an email'
});
extend('integer', {
    ...integer,
    message: 'This field must be integer'
});
extend('regex', {
    ...regex,
    message: 'This field pattern does not match'
});
extend('checkDate', {
    validate(value) {
        let status = value.match(/^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]|(?:Jan|Mar|May|Jul|Aug|Oct|Dec)))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2]|(?:Jan|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec))\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)(?:0?2|(?:Feb))\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9]|(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep))|(?:1[0-2]|(?:Oct|Nov|Dec)))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/g);
        if (status) {
            return true
        } else {
            return 'date format is not correct'
        }
    },
    message: 'This field pattern does not match'
});
extend('checkEmail', {
    params: ['target'],
    validate(value, {
        target
    }) {
        return value === target;
    },
    message: 'Email confirmation does not match'
});
extend('checkPassword', {
    params: ['target'],
    validate(value, {
        target
    }) {
        return value === target;
    },
    message: 'Password confirmation does not match'
});
extend('confirmed', {
    ...email,
    message: 'This field does not match'
});

extend('alpha_spaces', {
    ...alpha_spaces,
    message: 'This field can contain word and space'
});
extend('digits', {
    ...digits,
    message: 'This field must be digit'
});
extend('minmax', {
    validate(value, {
        min,
        max,
    }) {
        return value.length >= min && value.length <= max;
    },
    params: ['min', 'max'],
    message: (fieldName, placeholders) => {
        return `The ${fieldName} field must be integer have at least ${min} characters and ${max} characters at most`
    }
});
extend('checkPhone', (value) => {
    const regx = /^\(\+\d+\)\d{10}$/g
    if (regx.test(value)) {
        return true
    }
    return 'Phone number must be of like this (+92)2356142574'
});
extend('checkAddress', (value) => {
    const regx = /\w+,?\s?/g
    if (regx.test(value)) {
        return true
    }
    return 'Address can contain word and space and ,'
});
export default {
    filters: {
        putComma: function(value) {
            return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        }
    },
    components: {
        ValidationProvider,
        ValidationObserver
    }
}