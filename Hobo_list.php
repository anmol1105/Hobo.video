<?php
	$count=0;
	global $wpdb;
	$table='hobo';
	$table1='product';
	$sql="Select * from $table";
	$sql1="Select * from $table1";
	$result=$wpdb->get_results($sql);
	$result1=$wpdb->get_results($sql1);
	if (isset($_POST["hobo"])  && is_array($_POST["hobo"]) ){
		if (isset($_POST["input_name"])  && is_array($_POST["input_name"]) ){ 
			$id=$_POST["IDE"];
			$table4='data';
			$input_name = $_POST["input_name"];  
			$var1=implode(',',$input_name);
			$hobo=$_POST["hobo"];
			$var=implode(',',$hobo);
			
			$sql4="Insert into $table4(Id,Name,Activity,Time) select Id,Name,Activity,Time from $table where Id='$id'";
			$sql3="update $table4 set URL='$var1',product='$var' where Id='$id'";
			$result3=$wpdb->get_results($sql4);
			$result3=$wpdb->get_results($sql3);
			echo"Record Updated Sucessfully !!";
		}
		exit;
	}

?>

	<html>
	<form method="POST">
		<table border=2>
			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Activity</td>
				<td>Time</td>
				<td>EDIT</td>
			</tr>
			<?php foreach($result as $list){ ?>
			<tr>
				<td><?php echo $list->Id; ?></td>
				<td><?php echo $list->Name; ?></td>
				<td><?php echo $list->Activity; ?></td>
				<td><?php echo $list->Time ;?></td>
				<td><input type="submit" Name="Edit" value="Edit"></td>
			</tr>
			<?php
			}
			?>
			
			
			<?php
				if(isset($_POST['Edit']))
				{
			?>
			<tr>
			<td>
				Products:
			</td>
			<td colspan=4>
			<select name="hobo[]" multiple>
				<?php
					foreach($result1 as $list1)
					{
				?>
				<option value="<?php echo $list1->ProductName ;?>" > <?php echo $list1->ProductName ;?> </option>
				<?php
					} 
				?>
				</select>
			</td>
			</tr>
            <tr>
            <td>
            Id:
            </td>
            <td>
            <input type="text" name="IDE" >
            </td>
            </tr>
			<tr>
			<td>
				External Links:
			</td>
			<td colspan=4>
			 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			 <div class="wrapper">
				<div class="input-box">
					<input type="url" name="input_name[]" placeholder="Enter URL">
					<button class="btn add-btn">Add More</button>
				</div>
			</div>
			<input type="submit" class="btn" value="Submit" />
			</form>
			<script type="text/javascript">
				$(document).ready(function () {
					// allowed maximum input fields
					var max_input = 10;
					// initialize the counter for textbox
					var x = 1;
					// handle click event on Add More button
					$('.add-btn').click(function (e) {
					e.preventDefault();
					if (x < max_input) { // validate the condition
						x++; // increment the counter
						$('.wrapper').append(`
						<div class="input-box">
							<input type="text" name="input_name[]" placeholder="Enter URL"/>
							<a href="#" class="remove-lnk">Remove</a>
						</div>
          `				); 
					}
				});
				$('.wrapper').on("click", ".remove-lnk", function (e) {
					e.preventDefault();
					$(this).parent('div').remove();  // remove input field
					x--; // decrement the counter
				})
			});
		</script>
		</td>
		<?php
			}
		?>		
	</table>
</html>