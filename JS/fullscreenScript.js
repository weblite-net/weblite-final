let styleLink = document.querySelector('link');

//autocompile state
let autoState = false;

//Autocompile Config
let interval;




styleLink.setAttribute('href', `${localStorage.getItem('mode')}Styles.css`);

const displayOutput = () => {
    document.getElementById('output').innerHTML = localStorage.getItem('markup');
}

window.addEventListener('focus', () => {
    document.getElementById('output').innerHTML = localStorage.getItem('markup');

});



let autoCompileBtn = document.getElementById("autoCompile");
document.getElementById('output').innerHTML = localStorage.getItem('markup');
autoCompileBtn.style.background = "#ff3333d1";

autoCompileBtn.addEventListener('click', () => {
    autoState = !autoState;
    if(autoState){
        autoCompileBtn.innerText = "Autocompile On !!! Recompiles by itself";
        autoCompileBtn.style.background = "#01754b";
        interval = setInterval(displayOutput, 1500);

    }else{
        autoCompileBtn.innerText = "Autocompile turned Off";
        autoCompileBtn.style.background = "#ff3333d1";

        clearInterval(interval);
        
    }

});