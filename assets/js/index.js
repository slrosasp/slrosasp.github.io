window.document.addEventListener('DOMContentLoaded', () => {
    const links = window.document.querySelectorAll('nav a');
    links.forEach(link => {
        link.addEventListener('click', (e) => {
            if(link.getAttribute('data-page')) {
                e.preventDefault();
                const nombrePagina = link.getAttribute('data-page');
                links.forEach(li => li.classList.remove('active')); 
                link.classList.add('active'); 
                loadPage(nombrePagina);
            }

        });
    });

    function updateActiveMenu() {
        const hash = window.location.hash.substring(1) || 'inicio';
        const activeLink = document.querySelector(`nav a[data-page="${hash}"]`);

        if (activeLink) {
            links.forEach(l => l.classList.remove('active'));
            activeLink.classList.add('active');
        }
    }
    
    window.addEventListener('DOMContentLoaded', updateActiveMenu);
    window.addEventListener('hashchange', updateActiveMenu);

    function loadPage(nombrePagina) {
        const contenido = window.document.getElementById('contenido');
        contenido.innerHTML = '<div class="loading"></div>';
        setTimeout(() => {
            fetch(`view/${nombrePagina}.html`)
                .then(response => {
                    return response.text();
                }) 
                .then(textoPlano => {
                    contenido.innerHTML = textoPlano;
                    window.location.hash = nombrePagina;
                })
                .catch(error => {
                    contenido.innerHTML = '<p>Error al cargar la página. Recarga o intenta más tarde.</p>';
                    console.error("Error en loadPage:", error);
                });
        }, 50);
    };
    
    const hashInicial = window.location.hash.substring(1);
    
    if (hashInicial) {
        loadPage(hashInicial);
    } else {
        loadPage("inicio");
    };

    window.addEventListener("hashchange", () => {
        const hash = window.location.hash.substring(1);
        if (hash) {
            loadPage(hash);
        }
    });

    
});
