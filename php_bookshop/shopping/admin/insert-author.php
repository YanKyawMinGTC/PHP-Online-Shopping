
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

	$author_name=$_POST['name'];
	$author_email=$_POST['email'];
	$author_ph=$_POST['phone_no'];
	$author_desc=$_POST['description'];
	$author_address=$_POST['address'];

	$author_img=$_FILES["author_img"]["name"];
//for getting author id
$query=mysqli_query($con,"select max(id) as cid from authors");
	$result=mysqli_fetch_array($query);
	 $author_id=$result['cid'] + 1;
	$dir="authorimages/$author_id";
if(!is_dir($dir)){
		mkdir("authorimages/".$author_id);
	}
	move_uploaded_file($_FILES["author_img"]["tmp_name"],"authorimages/$author_id/".$_FILES["author_img"]["name"]);

$sql=mysqli_query($con,"INSERT INTO authors(name,email,phone_no,address,description,photo,created_date,modified_date) VALUES ('$author_name','$author_email','$author_ph','$author_address','$author_desc','$author_img',now(),now())");
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
								<h3>Insert Author</h3>
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
<label class="control-label" for="basicinput">Author Image</label>
<div class="controls">
<input type="file" name="author_img" id="productimage1" value="" class="span8 tip" >
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Author Name</label>
<div class="controls">
<input type="text"    name="name"  placeholder="Enter Author Name" class="span8 tip" >
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Author email</label>
<div class="controls">
<input type="email"    name="email"  placeholder="Enter Author email" class="span8 tip" >
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Author phone</label>
<div class="controls">
<input type="text"    name="phone_no"  placeholder="Enter Author phone" class="span8 tip" >
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Author address</label>
<div class="controls">
<input type="text"    name="address"  placeholder="Enter Author address" class="span8 tip" >
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Author Description</label>
<div class="controls">
<textarea  name="description" rows="6" class="span8 tip" style="resize:none;">
</textarea>  
</div>
</div>

	<div class="control-group">
											<div class="controls">
												<button type="submit" name="submit" class="btn btn-primary">Insert</button>
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