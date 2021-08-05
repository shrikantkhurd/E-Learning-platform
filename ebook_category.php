<?php 
session_start();
error_reporting(0);
include('includes/config.php');

    ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/footer.css">
    <title>Tech-Wolrd | Course Category Page</title>

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar fixed-top p-md-1">
        <div class="container">
            <!-- mb-0 h1 -->
            <a class="navbar-brand " href="index.html">
                <img src="image/brand-logo.png" width="120" height="30" alt="" loading="lazy"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class=" navbar-nav  ">
                    <!-- <ul class="nav justify-content-end"> -->
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="freeCourse.php">Free Courses</a>
                    </li>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="programminghub.php">Programming Hub</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Ebook.php">E-Books</a>
                    </li>
                    </li>

                </ul>
            </div>
        </div>
    </nav>

    <!-- Banner image start -->

    <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-ride="carousel">

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="image/Ebook.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block ">
                    <h2 style="color: white; font-weight: 900;">Welcome to Tech-World</h2>
                    <p style="color: black; font-size: 25px;">E-Book Library</p>

                </div>
            </div>
        </div>

        <!-- Banner image end -->


        <!-- Blog Entries Column Start-->
        <div class="container">



            <div class="row" style="margin-top: 4%">

                <!-- Blog Entries Column -->
                <div class="col-md-8">
                    <!-- Blog Post -->

                    <?php 
                if($_GET['catid']!=''){
        $_SESSION['catid']=intval($_GET['catid']);
        }
             

        if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        $no_of_records_per_page = 8;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM ebookpost";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);


                
                $query=mysqli_query($con,"select ebookpost.id as pid,ebookpost.PostTitle as posttitle, ebookpost.PostDetails as postdetails, ebookpost.PostingDate as postdate, ebookcategory.CategoryName as category,ebookcategory.id as catid from ebookpost left join ebookcategory on ebookcategory.id=ebookpost.CategoryId where ebookpost.CategoryId='".$_SESSION['catid']."' and ebookpost.Is_Active=1 order by ebookpost.id desc LIMIT $offset, $no_of_records_per_page");


                $rowcount=mysqli_num_rows($query);
                if($rowcount==0)
                {
                echo "No record found";
                }
                else {
                while ($row=mysqli_fetch_array($query)) {


                ?>

                    <div class="card mb-4">
                        <div class="card-body">
                            <h2 class="card-title" style="font-size: 19px;">
                                <?php echo htmlentities($row['posttitle']);?></h2>
                            <p><b>Category : </b> <a
                                    href="ebook_category.php?catid=<?php echo htmlentities($row['catid'])?>"><?php echo htmlentities($row['category']);?></a>
                                |
                                <hr />

                            <p class="card-text"><?php $pt=$row['postdetails']; echo  (substr($pt,0));?></p>

                            <a href="ebook_download.php?nid=<?php echo htmlentities($row['pid'])?>" target="black"
                                class="btn btn-outline-success" role="button" aria-pressed="true">Download</a>
                        </div>
                        <div class="card-footer text-muted">
                            Posted on <?php echo htmlentities($row['postdate']);?>

                        </div>
                    </div>
                    <?php } ?>

                    <!-- Pagination -->
                    <div class="container pagedemo">
                        <ul class="pagination justify-content-center mb-4">
                            <li class="page-item"><a href="?pageno=1" class="page-link">First</a></li>
                            <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?> page-item">
                                <a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>"
                                    class="page-link">Prev</a>
                            </li>
                            <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?> page-item">
                                <a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?> "
                                    class="page-link">Next</a>
                            </li>
                            <li class="page-item"><a href="?pageno=<?php echo $total_pages; ?>"
                                    class="page-link">Last</a>
                            </li>
                        </ul>
                    </div>
                    <?php } ?>

                </div>
                <!-- Blog Entries Column end-->

                <div class="col-md-4">

                    <!-- Search Widget -->
                    <div class="card mb-4 demo">
                        <h5 class="card-header">Search</h5>
                        <div class="card-body">
                            <form name="search" action="ebook_search.php" method="post">
                                <div class="input-group">

                                    <input type="text" name="searchtitle" class="form-control"
                                        placeholder="Search for..." required>
                                    <span class="input-group-btn">
                                        <button class="btn btn-secondary" type="submit">Go!</button>
                                    </span>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Categories Widget -->

                <div class="card my-4">
                    <h5 class="card-header">Categories</h5>
                    <div class="card-body">
                        <ul class="mb-0">
                            <?php $query=mysqli_query($con,"select id,CategoryName from ebookcategory");
while($row=mysqli_fetch_array($query))
{
?>
                            <li>
                                <a
                                    href="ebook_category.php?catid=<?php echo htmlentities($row['id'])?>"><?php echo htmlentities($row['CategoryName']);?></a>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
                <!-- sidebar end -->

            </div>
        </div>
    </div>
    <!--  Card layout end -->
    <!-- Back to top button start-->
    <button type="button" class="btn btn-danger btn-floating btn-lg" id="btn-back-to-top">
        <i class="fas fa-arrow-up"></i>
    </button>
    <!-- Back to top button end-->
    <!-- footer start -->
    <div>
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col">
                        <h4>Tech-World</h4>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="#card">Our Services</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>Our Project Guide</h4>
                        <ul>
                            <li><a href="#">Mr Niraj Haval</a></li>
                            <li><a href="#">havalniraj@gmail.com</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>Our College</h4>
                        <ul>
                            <li><a href="#">DYPCET</a></li>
                            <li><a href="#">Phone: 0231 260 1433</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>follow us</h4>
                        <div class="social-links">
                            <a href="#"><i class="fab fa-github"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <!-- footer end -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous">
    </script>

    <script src="js/style.js"></script>

</body>

</html>