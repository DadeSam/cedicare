let form = document.getElementById('loginform');
form.addEventListener('submit', (e) =>{
    let username = document.getElementById('username').value
    let password = document.getElementById('password').value
    e.preventDefault()
    fetch('/check', {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({username: username, password: password})
        })
        .then(res => res.json())
        .then(data => {
           if (data.msg == 'success'){
              console.log('ok')
           }else{
            return
           }
        })

})