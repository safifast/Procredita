import VuexPersistence from 'vuex-persist'
import axios from 'axios'
import toastr from 'toastr'
const vuexLocal = new VuexPersistence({
    storage: window.sessionStorage
})
export default {
    plugins: [vuexLocal.plugin],
    state: {
        currentLink: '',
        navItems: [{
                name: 'initial',
                componentName: 'InitialSignupComponent',
                isActive: true
            },
            {
                name: 'Personal Details',
                componentName: 'PersonalDetailComponent',
                isActive: false
            },
            {
                name: 'Contact Details',
                componentName: 'ContactDetailComponent',
                isActive: false
            },
            {
                name: 'Your Income',
                componentName: 'YourIncomeComponent',
                isActive: false
            },
            {
                name: 'Bank Account Details',
                step: 5,
                componentName: 'BankAccountDetailComponent',
                isActive: false
            },
            {
                name: 'Documents Upload',
                componentName: 'DocumentUploads',
                isActive: false
            },
            {
                name: 'Risk Assesment',
                componentName: 'RiskAssesment',
                isActive: false
            },
        ],
        activeComponent: '',
        loanAmount: 0,
        loanDuration: 0,
        disableBtn: true,
        monthlyRepayment: 0,
        totalRepayment: 0,
        totalInterest: 0,
        registrationFormData: {
            p_d_title: '',
            p_d_fName: '',
            p_d_lName: '',
            p_d_mName: '',
            p_d_dateOfBirth: '',
            p_d_noOfDependents: '',
            c_d_email: '',
            c_d_reEnterEmail: '',
            c_d_phone: '',
            c_d_currentAddress: '',
            c_d_liveDucation: '',
            c_d_residencial: '',
            c_d_createPassword: '',
            c_d_rePassword: '',
            y_i_emplymentStatus: '',
            y_i_emplyerName: '',
            y_i_jobTitle: '',
            y_i_phoneNumber: '',
            y_i_paidTime: '',
            y_i_paidWay: '',
            b_a_accountName: '',
            b_a_accountNumber: '',
            b_a_bankName: '',
            b_a_bvn: '',
            b_a_accountOld: '',
            b_a_phoneNumber: '',
        },
        residentialStatus_options: [{
                text: 'owner'
            },
            {
                text: 'Tenant'
            },
            {
                text: 'Living with parents'
            },
        ],
        employmentStatusOptions: [{
                value: 'Full time employed'
            },
            {
                value: 'Part time employed'
            },
            {
                value: 'Temporary worker'
            },
            {
                value: 'employed'
            },
            {
                value: 'Unemployed'
            },
            {
                value: 'Student'
            },
            {
                value: 'Retired'
            },
        ],
        whenPaidOptions: [{
                value: 'weekly'
            },
            {
                value: 'Bi-weekly'
            },
            {
                value: 'monthly'
            },
        ],
        howPaidOptions: [{
                value: 'Bank deposits'
            },
            {
                value: 'cheque'
            },
            {
                value: 'cash'
            },
        ],
        govmentIssuedFileInfo: null,
        UtilityBillFileInfo: null,
        BankStatementFileInfo: null,
        accessToken: '',
        base_url: location.origin,
        authUser: null,
        activeDashboardComponent: '',
        sideNavbarItems: [{
                name: 'Home',
                icon: require('../assets/images/exported/sideicon1.png'),
                componentName: 'UDHome',
                isActive: true
            },
            {
                name: 'Loan Rquest',
                icon: require('../assets/images/exported/sideicon2.png'),
                componentName: 'UDLoanRequest',
                isActive: false
            },
            {
                name: 'History',
                icon: require('../assets/images/exported/sideicon3.png'),
                componentName: 'UDHistory',
                isActive: false
            },
            {
                name: 'Referral',
                icon: require('../assets/images/exported/sideicon4.png'),
                componentName: 'UDReferral',
                isActive: false
            },
            
        ],
        searchText: '',
        showChat: false,
        showChatBtn: true,
        userHistoryData: null
    },
    getters: {
        activeDashboardComponent(state) {
            state.sideNavbarItems.forEach(element => {
                if (element.isActive) {
                    state.activeDashboardComponent = element.componentName
                }
            });
            return state.activeDashboardComponent
        },
        navItems(state) {
            return state.navItems
        },
        activeComponent(state) {
            state.navItems.forEach(element => {
                if (element.isActive) {
                    state.activeComponent = element.componentName
                }
            });
            return state.activeComponent
        },

    },
    mutations: {
        setUserHistoryData(state, payload) {
            state.userHistoryData = payload
        },
        toggleChat(state) {
            state.showChat = !state.showChat
            state.showChatBtn = !state.showChatBtn
        },
        setActiveSidebarItem(state, item) {

            state.sideNavbarItems.map((element) => {
                if (element.componentName == item.componentName) {
                    state.activeDashboardComponent = element.componentName
                    element.isActive = true
                } else {
                    element.isActive = false
                }
            });
        },
        setAccessToken(state, payload) {
            state.accessToken = payload
        },
        setCurrentLink(state) {
            state.currentLink = location.pathname.replace('/', '')
        },
        nextStep(state) {
            let trackedIndex
            state.navItems.forEach((element, index) => {
                if (element.componentName == state.activeComponent) {
                    trackedIndex = index != 6 ? index + 1 : index
                }
                if (trackedIndex == index) {
                    state.activeComponent = element.componentName
                    element.isActive = true
                }
            });
        },
        calculateLoan(state) {
            if (state.loanAmount > 0 && state.loanDuration > 0) {
                state.totalInterest = parseInt(state.loanAmount * ((20 * state.loanDuration) / 100))
                let actualMonthlyPayment = parseInt(state.loanAmount / state.loanDuration)
                let monthlyInterest = parseInt(state.totalInterest / state.loanDuration)
                state.monthlyRepayment = parseInt(actualMonthlyPayment + monthlyInterest)
                state.totalRepayment = parseInt(+state.loanAmount + state.totalInterest)

                // for InitialSignupComponent component
                if (state.activeComponent == 'InitialSignupComponent') {
                    state.disableBtn = false
                }
            }
        },
        goBackToComponent(state, {
            item,
            ind
        }) {

            state.navItems.map((element, index) => {
                if (index <= ind) {
                    element.isActive = true
                } else if (element.componentName == item.componentName) {
                    state.activeComponent = element.componentName
                } else {
                    element.isActive = false
                }
            })
        },
        resetComponents(state) {

            state.navItems.map((element, index) => {
                if (index == 0) {
                    element.isActive = true
                    state.activeComponent = element.componentName

                } else {
                    element.isActive = false
                }
            })
        },
        setFileData(state, fileData) {
            state.selectedFileInfo.fileData = fileData
        },
        setButtonStatus(state, status) {
            state.disableBtn = status
        },
        setGovFileData(state, filePath) {
            state.govmentIssuedFileInfo = filePath
        },
        setUtilityFileData(state, filePath) {
            state.UtilityBillFileInfo = filePath
        },
        setBankFileData(state, filePath) {
            state.BankStatementFileInfo = filePath
        },
        setAuthUser(state, payload) {
            state.authUser = payload
        },

    },
    actions: {
        finalStep(context) {
            // first register the user and then do other things
            context.dispatch('register_user')
            
            setTimeout(() => {
                context.dispatch('saveUserData')
                
            }, 800);

        },
        async saveUserData(context) {
            // // make request to store the data in the database
            let formData = new FormData();
            for (const key in context.state.registrationFormData) {
                formData.append(key, context.state.registrationFormData[key])
            }
            formData.append('loan_amount', context.state.loanAmount)
            formData.append('loan_duration', context.state.loanDuration)
            formData.append('monthly_replayment', context.state.monthlyRepayment)
            formData.append('total_replayment', context.state.monthlyRepayment)
            formData.append('total_interest', context.state.totalInterest)
            formData.append('gov_issue_file_path', context.state.govmentIssuedFileInfo)
            formData.append('utility_bill_file_path', context.state.UtilityBillFileInfo)
            formData.append('bank_statement_path', context.state.BankStatementFileInfo)
            formData.append('user_id', context.state.authUser.id)

            try {
                let res = await axios.post('/api/admin/user_details', formData, {
                    headers: {
                        "Content-Type": "multipart/form-data"
                    }
                })
                toastr.success('user is registered')
                setTimeout(() => {
                    location.assign('./user/home')

                }, 800);
            } catch (err) {
                console.log(err);
            }

        },
        async register_user(context) {
            // make another reqest to register the new user
            try {
                let res = await axios.post('/api/v1/register', {
                    name: `${context.state.registrationFormData.p_d_fName} ${context.state.registrationFormData.p_d_lName}`,
                    email: context.state.registrationFormData.c_d_email,
                    password: context.state.registrationFormData.c_d_createPassword,
                    c_password: context.state.registrationFormData.c_d_rePassword
                })
                context.commit('setAccessToken', res.data.success.token)
                context.dispatch('get_user_detail')
            } catch (err) {
                if (err.response.data.message.includes('Duplicate entry')) {
                    toastr.error('email already exists');
                    return;
                }

                // console.log(err.response.data.errors);
                for (const key in err.response.data.errors) {
                    toastr.error(err.response.data.errors[key]);
                }
            }

        },
        async loginUser(context) {
            try {
                let res = await axios.post('/api/v1/login', {
                    email: context.state.registrationFormData.c_d_email,
                    password: context.state.registrationFormData.c_d_createPassword,
                })
                toastr.success('user is logged in ')
                context.commit('setAccessToken', res.data.success.token)
                context.dispatch('get_user_detail')

                setTimeout(() => {
                    location.assign('./user/home')
                }, 800);
            } catch (err) {
                console.log(err);
            }


        },
        async logout(context) {
            try {
                let res = await axios.post('/logout')
                context.commit('setAccessToken', null)
                context.commit('setAuthUser', null)
                toastr.success('logout successful')
                setTimeout(() => {
                    location.assign(location.origin + '/')

                }, 800);

            } catch (error) {
                console.log(err);
            }

        },
        async get_user_detail(context) {
            try {
                let res = await axios.get('/api/user', {
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': `Bearer ${context.state.accessToken}`
                    }
                })
                context.commit('setAuthUser', res.data)
            } catch (err) {
                console.log(err);
            }


        },
        async getHistoryForUser(context) {
            try {
                let res = await axios.get('/api/admin/histories/get-user-history/'+ context.state.authUser.id, {
                    headers: {
                        'Authorization': `Bearer ${context.state.accessToken}`
                    }
                })
                // console.log(res.data);
                context.commit('setUserHistoryData', res.data)
            } catch (err) {
                console.log(err);
                
            }
        }
    }
}
