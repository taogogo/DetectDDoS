<?php
if(!empty($_POST)){
    $post_str = json_encode($_POST);
    if($post_str>198) {
        file_put_contents('/tmp/post_debug.log', substr($post_str,0,500)."\n", FILE_APPEND);
    }
}