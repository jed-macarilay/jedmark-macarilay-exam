<?php 
    include('db_conn.php');

    // fetch channel
    $sql_channel = "SELECT * FROM youtube_channels";
    $sql_channel_result = $conn->query($sql_channel);
    $sql_channel_row = $sql_channel_result->fetch_assoc();

    mysqli_free_result($sql_channel_result);

    $channel['channel'] = $sql_channel_row;

    // fetch videos
    $query_videos = $conn->query("SELECT * FROM youtube_channel_videos");
    $youtube_channel_videos = array();
    while($row = $query_videos->fetch_assoc()) {
        array_push($youtube_channel_videos, $row);
    }

    mysqli_free_result($query_videos);

    $channel['videos'] = $youtube_channel_videos;

    echo json_encode($channel);

    mysqli_close($conn);
?>