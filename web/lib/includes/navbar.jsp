 <nav class="navbar flex-column navbar-expand-lg navbar-dark bg-transparent">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse mr-auto" id="navbarNavDropdown">
                <ul class="navbar-nav ml-4">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home<span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Filmes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Séries</a>
                    </li>
                    <li hidden class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#generos" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Gêneros
                        </a>
                        <div class="dropdown-menu bg-transparent" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item text-white" href="#">Ação</a>
                            <a class="dropdown-item text-white" href="#">Terror</a>
                            <a class="dropdown-item text-white" href="#">Comédia</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline">
                    <input class="form-control bg-transparent" type="search" placeholder="Procurar" aria-label="Search">
                    <button class="btn bg-transparent text-white" type="submit">Procurar</button>
                </form>
            </div>

        </nav>