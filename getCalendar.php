<?php
if(isset($_GET['gData'])){
 $link = mysqli_connect("127.0.0.1", "root", "", "tobedev_example");
 mysqli_set_charset($link, 'utf8');
 if (!$link) {
  echo "Error: Unable to connect to MySQL." . PHP_EOL;
  echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
  echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
  exit;
 }
  $event_array=array();
 $i_event=0;
 $sql="SELECT * FROM tbl_event";
   //echo $sql."<br/>";
  if ($result = $link->query($sql)) {
  while($rs = $result->fetch_assoc()){
   $event_array[$i_event]['id'] = $rs['event_id'];
   $event_array[$i_event]['title'] = $rs['event_title'];
   $event_array[$i_event]['start'] = $rs['event_start'];
   $event_array[$i_event]['end'] = $rs['event_end'];
   $i_event++;
  }
  echo json_encode($event_array);
 }
   mysqli_close($link);
}
?>