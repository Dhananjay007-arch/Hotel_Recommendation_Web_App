<?php include 'header.php'; ?>
<?php require 'mysql_connect.php'; ?>

<?php $id=$_GET['id'];

/* Fetching data from database based on selected id*/

$sql = "SELECT * FROM hotel where id=".$id;
$result = $conn->query($sql);
if ($result->num_rows > 0) { 
$row = $result->fetch_assoc();
$name_slug=  preg_replace('#[ -]+#', ' ', strtolower($row['name']));
?>
<style>
	      button {
      width: 100%;
      padding: 10px;
      margin-top: 20px;
      border-radius: 20px;
      border: none;
      border-bottom: 4px solid #0000CC;
      background: #0000FF; 
      font-size: 16px;
      font-weight: 400;
      color: #fff;
      }
      button:hover {
      background: #0000CC;
      }
		.bookbtn{
		width: 30%;
		right:30px;
		top:70px;
		}
</style>
<div class="container">
	 
	<div style="width:50%;float:left;text-align: center;">
		<img src="assets/hotel_img/<?php echo $name_slug; ?>/<?php echo $row['img'];?>" style="height:300px;width:300px;"/>
	</div>
	<div style="width:50%;float:left">

  
	<?php
		

		
		 ?>
		     	
	     	<p>Hotel Name : <?php echo $row['name'];?></p>
			<p>Price : <?php echo $row['price'];?></p>
			<p>Descriptoin : <?php echo $row['description'];?></p>
			<p>Facility : <?php echo $row['facility'];?> </p>
			<p>Location : <?php echo ucfirst($row['location']);?> </p>
				<div class = "bookbtn">
        <button type="button" onclick="location.href='message.php';">Book Now</button>
    </div>
		<?php } ?>




 </div>

	

</div>

<!-- Hotel suggestions based on location and price selected by user -->

<div style="width:100%;display: block;padding:10px 20px;min-height:500px;margin-top:20px;clear:both;">
		
        <?php
        $location=strtolower($row['location']);
        $sugg_price=$row['price'];
        $sql = "SELECT * FROM hotel where id!='$id' AND location='$location' AND price < '$sugg_price' LIMIT 5";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {

		?>
		<h2>You may also like: </h2>
		<?php
		    // output data of each row
		    while($row = $result->fetch_assoc()) {   

		    	$name_slug=  preg_replace('#[ -]+#', ' ', strtolower($row['name']));

		    	$hotel_id=$row['id'];
		    	$sql3 = "SELECT rating FROM reviews where hotel_id='$hotel_id' LIMIT 5";
				$result3 = $conn->query($sql3);

				$sum = 0;
				$usercount=0;
				while($row3 = $result3->fetch_assoc()) {
					 
					$sum+=($row3['rating']);
					$usercount++;
				}


				if($usercount=='0'){
					$usercount=1;
				}
				$averating=round($sum/$usercount); 
				 
       
		     ?>
		     <a href="hotel.php?id=<?php echo $row['id']; ?>">
		        <div style="width:30%;float:left;margin:5px;height:450px;overflow: hidden;">
		        	<h2> <?php echo ucwords($row["name"]); ?> </h2>
		        	<img src="assets/hotel_img/<?php echo $name_slug; ?>/<?php echo $row['img'];?>" style="height:250px;"/>
		        	<div class="hotel-list-item-details" style="text-align: center;">
					 <br/>
					<span> <b style="float:left;">Rating : </b>

					<div style="float:left;margin-right:5px;margin-left:5px;"><?php  $max=$averating; if($max==0){$max=1;} for($j=0;$j<$max;$j++){ ?> <img src="assets/star.png" style="width:15px;height:15px;"/><?php  }?></div>



					     Price: <?php echo $row['price']; ?>  | <?php echo ucfirst($row['location']); ?></span>

				</div>
	        	</div>
	         </a>
	         	
		<?php }
		}

        ?>


</div>

<?php include 'footer.php' ?>