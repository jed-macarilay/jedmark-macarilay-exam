<?php 
    include('db_conn.php');

    $max_results = 50;
    $channel = "NBA";
    $google_api_key = 'AIzaSyADO0z4Onq5779Jn692LyGmyveRJO6IXSI';
    $google_api_channel_info =   'https://youtube.googleapis.com/youtube/v3/channels?part=snippet%2CcontentDetails%2Cstatistics&forUsername=' . $channel . '&key=' . $google_api_key; 
    $google_api_for_channel_videos = 'https://www.googleapis.com/youtube/v3/search?part=snippet&q=' . $channel . '&maxResults=' . $max_results . '&key=' . $google_api_key;

    $curl_init = curl_init();


    // sync youtube channel info
    curl_setopt($curl_init, CURLOPT_HEADER, 0);
    curl_setopt($curl_init, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl_init, CURLOPT_URL, $google_api_channel_info);
    curl_setopt($curl_init, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($curl_init, CURLOPT_VERBOSE, 0);
    curl_setopt($curl_init, CURLOPT_SSL_VERIFYPEER, false);
    $res_channel_info = curl_exec($curl_init);
    $data_channel_info = json_decode($res_channel_info);
    $result_channel_info = json_decode(json_encode($data_channel_info), true);

    // snyc youtube channel content
    curl_setopt($curl_init, CURLOPT_HEADER, 0);
    curl_setopt($curl_init, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl_init, CURLOPT_URL, $google_api_for_channel_videos);
    curl_setopt($curl_init, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($curl_init, CURLOPT_VERBOSE, 0);
    curl_setopt($curl_init, CURLOPT_SSL_VERIFYPEER, false);
    $res_channel_content = curl_exec($curl_init);
    $data_channel_content = json_decode($res_channel_content);
    $result_channel_content = json_decode(json_encode($data_channel_content), true);
    
    curl_close($curl_init);
    
    // fetch channel
    $sql_channel = "SELECT * FROM youtube_channels";
    $sql_channel_result = $conn->query($sql_channel);
    $sql_channel_row = $sql_channel_result->fetch_all();

    $channel_snippet = $result_channel_info['items'][0]['snippet'];

    $channel_info['name'] = $channel_snippet['title'];
    $channel_info['description'] = $channel_snippet['description'];
    $channel_info['profile'] = $channel_snippet['thumbnails']['high']['url'];

    if (count($sql_channel_row) < 1) {
        // insert channel info
        $sql_channel_create = $sql = "INSERT INTO youtube_channels (profile_picture, name, descirption)
        VALUES ('".$channel_info['profile']."', '".$channel_info['name']."', '".$channel_info['description']."')";
        $conn->query($sql_channel_create);
    } else {
        // update channel info
        $sql_channel_update = "UPDATE youtube_channels SET profile_picture='".$channel_info['profile']."', name='".$channel_info['name']."', descirption='".$channel_info['description']."'  WHERE id=1";
        $conn->query($sql_channel_update);
    }

    mysqli_free_result($sql_channel_result);

    // clear all data
    $truncatetable= $conn->query("TRUNCATE TABLE youtube_channel_videos");

    if ($truncatetable) {
        // update all data
        for ($i = 0; $i < count($result_channel_content['items']); $i++) {
            $video_link = "https://www.youtube.com/watch?v=".$result_channel_content['items'][$i]['id']['videoId'];
            $title = $result_channel_content['items'][$i]['snippet']['title'];
            $description = $result_channel_content['items'][$i]['snippet']['description'];
            $thumbnail = $result_channel_content['items'][$i]['snippet']['thumbnails']['high']['url'];

            $sql_video_create =  "INSERT INTO youtube_channel_videos (video_link, title, descirption, thumbnail)
            VALUES ('".$video_link."', '".$title."', '".$description."', '".$thumbnail."')";
            $conn->query($sql_video_create);
        }
    }

    mysqli_close($conn);
?>