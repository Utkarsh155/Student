const loginForm = document.querySelector('.login-form');
const loginBtn = document.querySelector('.login-btn');
loginForm.addEventListener('submit', validate);

function validate(e) {
    e.preventDefault();
    const username = loginForm.querySelector('#uname');
    const password = loginForm.querySelector('#pass');
    const message = loginForm.querySelector('.message');

    if (username.value == '') {
        message.innerHTML = 'Please Enter Your Username !!';
        message.style.backgroundColor = '#dc3545'; 
        message.style.color = '#fff';
    }
    else if (password.value == '') {
        message.innerHTML = 'Please Enter Your Password !!';
        message.style.backgroundColor = '#dc3545';
        message.style.color='#fff';
    } 

}