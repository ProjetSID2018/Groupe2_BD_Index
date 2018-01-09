<?php
/**
 * Created by PhpStorm.
 * User: Utilisateur
 * Date: 08/01/2018
 * Time: 18:09
 */
namespace App\Services;
use App\Persistence\ClassificationRepository;

class ClassificationService
{

    private $classification_repository;
    public function __construct()
    {
        $this->classification_repository = new ClassificationRepository();
    }

    public function store($data) {
        // Need validation steps for the data

        return $this->classification_repository->store($data);
    }
}