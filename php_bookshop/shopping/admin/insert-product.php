
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
	
if(isset($_POST['submit']))
{
	$author_id=$_POST['author_id'];
	$category=$_POST['$category'];
	$subcat=$_POST['subcategory'];
	$name=$_POST['bookname'];
	$price=$_POST['price'];
	$bookpricebd=$_POST['bookpricebd'];
	$description=$_POST['bookDescription'];
	$bookscharge=$_POST['bookShippingcharge'];
	$bookavailability=$_POST['bookAvailability'];
	$bookimg1=$_FILES["bookimg1"]["name"];
	$bookimg2=$_FILES["bookimg2"]["name"];
	$bookimg3=$_FILES["bookimg3"]["name"];
//for getting product id
$query=mysqli_query($con,"select max(id) as pid from books");
	$result=mysqli_fetch_array($query);
	 $bookid=$result['pid']+1;
	$dir="productimages/$bookid";
if(!is_dir($dir)){
		mkdir("productimages/".$bookid);
	}

	move_uploaded_file($_FILES["bookimg1"]["tmp_name"],"productimages/$bookid/".$_FILES["bookimg1"]["name"]);
	move_uploaded_file($_FILES["bookimg2"]["tmp_name"],"productimages/$bookid/".$_FILES["bookimg2"]["name"]);
	move_uploaded_file($_FILES["bookimg3"]["tmp_name"],"productimages/$bookid/".$_FILES["bookimg3"]["name"]);
$sql=mysqli_query($con,"insert into books(author_id,category,subCategory,name,price,bookPriceBeforeDiscount,bookDescription,bookimg1,bookimg2,bookimg3,shippingCharge,bookAvailability) values('$author_id','$category','$subcat','$name','$price','$bookpricebd','$description','$bookimg1','$bookimg2','$bookimg3','$bookscharge','$bookavailability')");
$_SESSION['msg']="Product Inserted Successfully !!";

}


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| Insert Product</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
<script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>

   <script>
function getSubcat(val) {
	$.ajax({
	type: "POST",
	url: "get_subcat.php",
	data:'cat_id='+val,
	success: function(data){
		$("#subcategory").html(data);
	}
	});
}
function selectCountry(val) {
$("#search-box").val(val);
$("#suggesstion-box").hide();
}
</script>	


</head>
<body>
<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container">
			<div class="row">
<?php include('include/sidebar.php');?>				
			<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Insert Product</h3>
							</div>
							<div class="module-body">

									<?php if(isset($_POST['submit']))
{?>
									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Well done!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
									</div>
<?php } ?>


									<?php if(isset($_GET['del']))
{?>
									<div class="alert alert-error">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Oh snap!</strong> 	<?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?>
									</div>
<?php } ?>

									<br />

			<form class="form-horizontal row-fluid" name="insertproduct" method="post" enctype="multipart/form-data">




<div class="control-group">
<label class="control-label" for="basicinput">Book Name</label>
<div class="controls">
<input type="text" name="bookname"  placeholder="Enter Book Name" class="span8 tip" >
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Author</label>
<div class="controls">

<select name="author_id" class="span8 tip" >
<option value="">Select Author</option> 
<?php $query=mysqli_query($con,"select * from authors");
while($row=mysqli_fetch_array($query))
{?>

<option value="<?php echo $row['id'];?>"><?php echo $row['author_name'];?></option>
<?php } ?>
</select>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Category</label>
<div class="controls">
<select name="category" class="span8 tip" onChange="getSubcat(this.value);"  >
<option value="">Select Category</option> 
<?php $query=mysqli_query($con,"select * from category");
while($row=mysqli_fetch_array($query))
{?>

<option value="<?php echo $row['id'];?>"><?php echo $row['categoryName'];?></option>
<?php } ?>
</select>

</div>
</div>



									
<div class="control-group">
<label class="control-label" for="basicinput">Sub Category</label>
<div class="controls">
<select   name="subcategory"  id="subcategory" class="span8 tip" >
</select>
</div>
</div>



<div class="control-group">
<label class="control-label" for="basicinput">Product Price Before Discount</label>
<div class="controls">
<input type="text" name="bookpricebd"  placeholder="Enter Product Price" class="span8 tip" >
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Product Price After Discount(Selling Price)</label>
<div class="controls">
<input type="text"  name="price"  placeholder="Enter Product Price" class="span8 tip" >
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Product Description</label>
<div class="controls">
<textarea  name="bookDescription"  placeholder="Enter Product Description" rows="6" class="span8 tip">
</textarea>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Book Shipping Charge</label>
<div class="controls">
<input type="text"    name="bookShippingcharge"  placeholder="Enter Product Shipping Charge" class="span8 tip" >
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Book Availability</label>
<div class="controls">
<select   name="bookAvailability"  id="bookAvailability" class="span8 tip" >
<option value="">Select</option>
<option value="In Stock">In Stock</option>
<option value="Out of Stock">Out of Stock</option>
</select>
</div>
</div>



<div class="control-group">
<label class="control-label" for="basicinput">Book Cover (front)</label>
<div class="controls">
<input type="file" name="bookimg1" id="productimage1" value="" class="span8 tip" >
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Book Cover (back)</label>
<div class="controls">
<input type="file" name="bookimg2"  class="span8 tip" >
</div>
</div>



<div class="control-group">
<label class="control-label" for="basicinput">Book Cover (middle)</label>
<div class="controls">
<input type="file" name="bookimg3"  class="span8 tip">
</div>
</div>

	<div class="control-group">
											<div class="controls">
												<button type="submit" name="submit" class="btn">Insert</button>
											</div>
										</div>
									</form>
							</div>
						</div>


	
						
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

<?php include('include/footer.php');?>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>
<?php } ?>