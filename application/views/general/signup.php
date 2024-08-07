<body class="register-page" style="min-height: 540px;">
<div class="register-box">
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="../../index2.html" class="h1"><b>CMU Journal</b><br>Sign Up</a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Create a new account.</p>

      <?php echo validation_errors(); ?>
      <?php echo form_open('generals/signup'); ?>

      <form action="" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="firstname" placeholder="First Name">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="lastname" placeholder="Last Name">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" class="form-control" name="email" placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>

        <div class="form-group">
              
                <label for="inputStatus">Account Type</label>
                
                <select id="roleid" name="roleid" class="form-control custom-select">
                
                  <option selected="" disabled="">Select account type</option>
                  <?php foreach ($roles as $role) : ?>
                  <option  value="<?php echo $role['roleid'];?>"><?php echo $role['rolename']; ?></option>
                  <?php endforeach; ?>
                
                </select>
                
              </div>

        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password2" placeholder="Confirm Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div> -->
          <!-- /.col -->
          <div class="col">
            <button type="submit" class="btn btn-primary btn-block">Sign-up</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
      <?php echo form_close(); ?>

      <!-- <div class="social-auth-links text-center">
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i>
          Sign up using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i>
          Sign up using Google+
        </a>
      </div> -->
                    <br>
      Already have an account? <a href="<?php echo site_url('generals/signin'); ?>" class="text-center">Login Here</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>


<!-- /.register-box -->