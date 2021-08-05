<div class="col-md-4">

    <!-- Search Widget -->
    <div class="card mb-4">
        <h5 class="card-header">Search</h5>
        <div class="card-body">
            <form name="search" action="course_search.php" method="post">
                <div class="input-group">

                    <input type="text" name="searchtitle" class="form-control" placeholder="Search for..." required>
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
        <div class="row">
            <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                    <?php $query=mysqli_query($con,"select id,CategoryName from coursecategory");
while($row=mysqli_fetch_array($query))
{
?>

                    <li>
                        <a
                            href="course_category.php?catid=<?php echo htmlentities($row['id'])?>"><?php echo htmlentities($row['CategoryName']);?></a>
                    </li>
                    <?php } ?>
                </ul>
            </div>

        </div>
    </div>
</div>

</div>