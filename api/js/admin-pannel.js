const openNavbar = document.querySelector('#open-Navbar');
openNavbar.addEventListener('click',()=>{
    const sideBar=document.querySelector('.navigation-bar');
    sideBar.style.left='0px';
    sideBar.style.transition='0.3s all';
});
const closeNavbar = document.querySelector('#close-Navbar');
closeNavbar.addEventListener('click',()=>{
    const sideBar=document.querySelector('.navigation-bar');
    sideBar.style.left='-300px';
    sideBar.style.transition='0.3s all';
});

function sendnp()
{
    window.location.assign('login.php');
}