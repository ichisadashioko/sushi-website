window.onload = () => {
    page_control = document.getElementById("page-control")
    page_control.onchange = (evt) => {
        selected_value = page_control.value
        var url = [location.protocol, '//', location.host, location.pathname].join('');
        window.location.href = `${url}?page=${selected_value}`
    }
}