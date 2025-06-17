<?php

namespace Controllers\Academic;

use Controllers\PublicController;
use Views\Renderer;
use Dao\Producto\Productos;

class About extends PublicController
{
    private string $HolaMessage;
    public function run(): void
    {
        $productos = Productos::obtenerProductos();
        $this->HolaMessage = "Hola esto un un nuevo controlador";
        Renderer::render("academic/about", [
            "mensaje" => $this->HolaMessage,
            "productos" => $productos
        ]);
    }
}
