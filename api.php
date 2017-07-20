<?php
$name = $_POST['name'];
$email = $_POST['email'];
if ((@filter_var($name,FILTER_SANITIZE_STRING)) &&  (@filter_var($email, FILTER_VALIDATE_EMAIL))) {

 include '../../../wp-load.php';
 $to = 'Oleg.Okhrymenko@gmail.com';
 $subject = 'data';
 $message = $name.' '.$email;
 wp_mail( $to, $subject, $message );
        define('DB_HOST', 'tanzor.mysql.ukraine.com.ua');
        define('DB_USER', 'tanzor_portfolio');
        define('DB_PASSWORD', 'l62g6xmq');
        define('DB_NAME', 'tanzor_portfolio');
        $pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME, DB_USER, DB_PASSWORD, [PDO::ATTR_ERRMODE => 
        PDO::ERRMODE_EXCEPTION]);
        $sql = 'INSERT INTO wp_user (name, email) '
                . 'VALUES (:name, :email)';
        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $pdo->prepare($sql);
        $result->bindParam(':name', $name, PDO::PARAM_STR);
        $result->bindParam(':email', $email, PDO::PARAM_STR);
      
        return $result->execute();
} 

?>
