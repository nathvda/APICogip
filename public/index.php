<?php
require_once __DIR__.'/../vendor/autoload.php';
require_once __DIR__.'/../Core/Helper.php';
require_once __DIR__.'/../Routes/Routes.php';

use Dotenv\Dotenv;
use App\Core\DbConnect;

Dotenv::createImmutable(__DIR__ . '/')->load();

$bdd = new DbConnect();
$bdd->connect();
