<?php

namespace App\Controller;


use App\Entity\Article;
use App\Entity\Category;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;



class HomeController extends AbstractController
{
    private $articleRepo;
    private $repoCategory;

    public function __construct(ArticleRepository $articleRepo, CategoryRepository $repoCategory)
    {
        $this->articleRepo = $articleRepo;
        $this->repoCategory = $repoCategory;
    }

    #[Route('/', name: 'home')]
    public function index(): Response
    {
        $categories = $this->repoCategory->findAll();
                $articles = $this->articleRepo->findAll();          

        return $this->render("home/index.html.twig",[
            'articles' => $articles,
            'categories' => $categories,
        ]);
    } 
    
    #[Route('/show/{id}', name: 'show')]
    public function show(Article $article): Response
    {                         
        if (!$article) {
            return $this->redirectToRoute('/home');
        }

        return $this->render("show/index.html.twig",[
            'article' => $article,
        ]);
    }

    #[Route('/show/Article/{id}', name: 'show_article')]
    public function showArticle(?Category $category): Response
    {      
            if ($category){
                $articles = $category->getArticles()->getValues();
            }else{                 
                return $this->redirectToRoute('/home');
            }    
            $categories = $this->repoCategory->findAll();
            return $this->render("home/index.html.twig",[
                'articles' => $articles,
                'categories' => $categories,
            ]);
    }
}
