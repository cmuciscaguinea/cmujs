<!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer text-center">
          All Rights Reserved by CMU Journal of Science. Designed and Developed by
          <a href="https://www.wrappixel.com">Aguinea</a>.
        </footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
      </div>
      <!-- ============================================================== -->
      <!-- End Page wrapper  -->
      <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    
    <script src="<?php echo base_url("./assets/libs/jquery/dist/jquery.min.js")?>"></script>
    <script src="<?php echo base_url("./assets/dist/js/jquery.ui.touch-punch-improved.js")?>"></script>
    <script src="<?php echo base_url("./assets/dist/js/jquery-ui.min.js")?>"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<?php echo base_url("./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js")?>"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<?php echo base_url("./assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js")?>"></script>
    <script src="<?php echo base_url("./assets/extra-libs/sparkline/sparkline.js")?>"></script>
    <!--Wave Effects -->
    <script src="<?php echo base_url("./assets/dist/js/waves.js")?>"></script>
    <!--Menu sidebar -->
    <script src="<?php echo base_url("./assets/dist/js/sidebarmenu.js")?>"></script>
    <!--Custom JavaScript -->
    <script src="<?php echo base_url("./assets/dist/js/custom.min.js")?>"></script>
    <!-- this page js -->
    <script src="<?php echo base_url("./assets/libs/moment/min/moment.min.js")?>"></script>
    <script src="<?php echo base_url("./assets/libs/fullcalendar/dist/fullcalendar.min.js")?>"></script>
    <script src="<?php echo base_url("./assets/dist/js/pages/calendar/cal-init.js")?>"></script>
    <script src="<?php echo base_url("./assets/extra-libs/multicheck/datatable-checkbox-init.js")?>"></script>
    <script src="<?php echo base_url("./assets/extra-libs/multicheck/jquery.multicheck.js")?>"></script>
    <script src="<?php echo base_url("./assets/extra-libs/DataTables/datatables.min.js")?>"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/iconify-icon@1.0.8/dist/iconify-icon.min.js"></script> -->
    <script src="https://cdn.ckeditor.com/ckeditor5/41.3.1/classic/ckeditor.js"></script>

    <script>
      /****************************************
       *       Basic Table                   *
       ****************************************/
      $("#zero_config").DataTable();
    </script>

<script>
    // Aos
    AOS.init({
      once: true,
  });
</script>

<script>
  function showDeleteConfirmation(event, articleid) {
    // Prevent the default behavior of the anchor tag
    event.preventDefault();

    // Set the href attribute of the delete button in the modal
    document.getElementById('confirmDeleteButton').href = "<?php echo base_url('articles/delete/'); ?>" + articleid;
    // Show the modal
    $('#confirmDeleteModal').modal('show');
  }
</script>



<script>
  // Function to set the article ID and show the confirmation modal
  function showDeleteConfirmation(userid) {
    // Set the href attribute of the delete button in the modal
    document.getElementById('confirmDeleteButton').href = "<?php echo base_url('users/delete/'); ?>" + userid;
    // Show the modal
    $('#confirmDeleteModal').modal('show');
  }
</script>

<script>
document.getElementById('profilePicInput').addEventListener('change', function(event) {
    const file = event.target.files[0]; // Get the selected file
    const reader = new FileReader(); // Create a FileReader instance

    // When the file is loaded
    reader.onload = function(e) {
        const img = document.getElementById('profilePic'); // Get the img element
        img.src = e.target.result; // Set the src attribute of the img element to the file data
        
        // Set the width and height of the new image to match the profile picture dimensions
        img.style.width = '260px'; // Assuming the original profile picture width is 260px
        img.style.height = '260px'; // Assuming the original profile picture height is 260px
    };
    // Read the file as a data URL
    reader.readAsDataURL(file);
});
</script>

<script>
document.getElementById('articleImageInput').addEventListener('change', function(event) {
    const file = event.target.files[0]; // Get the selected file
    const reader = new FileReader(); // Create a FileReader instance

    // When the file is loaded
    reader.onload = function(e) {
        const img = document.getElementById('articleImage'); // Get the img element
        img.src = e.target.result; // Set the src attribute of the img element to the file data
        
        // Set the width and height of the new image to match the profile picture dimensions
        img.style.width = '300px'; // Assuming the original profile picture width is 260px
        img.style.height = '400px'; // Assuming the original profile picture height is 260px
    };
    // Read the file as a data URL
    reader.readAsDataURL(file);
});
</script>


<script>
$(document).ready(function() {
    // Handle delete button click
    $('.btn-delete').click(function(e) {
        e.preventDefault(); // Prevent the default behavior of the link

        var articleid = $(this).data('id');

        // Confirm deletion
        Swal.fire({
            title: 'Are you sure?',
            text: 'You won\'t be able to revert this!',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                // Send delete request to the server
                $.ajax({
                    type: 'POST',
                    url: '<?php echo site_url('articles/delete'); ?>',
                    data: { articleid: articleid },
                    dataType: 'json',
                    success: function(response) {
                        if (response.status === 'success') {
                            // If deletion is successful, show the success modal
                            Swal.fire({
                                icon: 'success',
                                title: 'Success!',
                                text: 'Record deleted successfully!!',
                                showConfirmButton: true,
                                allowOutsideClick: false,
                                allowEscapeKey: false,
                                allowEnterKey: false
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    // Reload the page when the OK button is clicked
                                    location.reload();
                                }
                            });
                        } else {
                            alert('Error: ' + response.message);
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText);
                        alert('An error occurred while processing your request. Please try again later.');
                    }
                });
            }
        });
    });
});
</script>

<script>
$(document).ready(function() {
    // Handle delete button click
    $('.btn-delete').on('click', function(e) {
        e.preventDefault(); // Prevent the default behavior of the link

        var userid = $(this).data('id');

        // Confirm deletion
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                // Send delete request to the server
                $.ajax({
                    type: 'POST',
                    url: '<?php echo site_url('users/delete'); ?>', // Adjust the URL to match your delete function
                    data: { userid: userid },
                    dataType: 'json',
                    success: function(response) {
                        if (response.status === 'success') {
                            // If deletion is successful, show the success modal
                            Swal.fire({
                                icon: 'success',
                                title: 'Success!',
                                text: 'User deleted successfully!',
                                showConfirmButton: false,
                                timer: 1500,
                                allowOutsideClick: false
                            }).then(() => {
                                // Reload the page after the success message disappears
                                location.reload();
                            });
                        } else {
                            alert('Error: ' + response.message);
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText);
                        alert('An error occurred while processing your request. Please try again later.');
                    }
                });
            }
        });
    });
});
</script>


<script>
  $(document).ready(function() {
    $('#successModal').modal('show');
  });
</script>

<script>
    ClassicEditor
        .create( document.querySelector( '#abstract' ) )
        .catch( error => {
            console.error( error );
        } );
</script>


  </body>
</html>
