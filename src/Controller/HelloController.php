<?php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HelloController{

    /**
     * @Route("/hello")
     */

    public function hello(): Response{        
        return new Response("Bonjour tout le monde!");
    }

    /**
     * @Route("/hello/{name}")
     */

    public function helloName($name): Response{
        return new Response("Bonjour ".$name);
    }

}