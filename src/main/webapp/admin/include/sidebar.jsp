<!-- Start sidebar -->
<aside class="sidebar-wrapper" data-simplebar="true">
  <div class="sidebar-header">
    <div>
      <img src="assets/images/logo.png" class="logo-icon" alt="logo icon">
    </div>
    <div>
      <h4 class="logo-text">E-Bank</h4>
    </div>
    <div class="toggle-icon ms-auto"><i class="bi bi-chevron-double-left"></i></div>
  </div>

  <!-- Navigation -->
  <ul class="metismenu" id="menu">
    <li>
      <a href="index.jsp" class="has-arrow">
        <div class="parent-icon"><i class="bi bi-bar-chart-line-fill"></i></div>
        <div class="menu-title">Dashboard</div>
      </a>
    </li>

    <li class="menu-label">Operation</li>
    <li>
      <a href="javascript:;" class="has-arrow">
        <div class="parent-icon"><i class="bi bi-bank"></i></div>
        <div class="menu-title">Bank</div>
      </a>
      <ul>
        <li><a href="addBank.jsp"><i class="bi bi-plus-circle-fill"></i>Add Bank</a></li>
        <li><a href="viewBank.jsp"><i class="bi bi-eye-fill"></i>View Bank</a></li>
      </ul>
    </li>

    <li>
      <a href="javascript:;" class="has-arrow">
        <div class="parent-icon"><i class="bi bi-house-door-fill"></i></div>
        <div class="menu-title">Branch</div>
      </a>
      <ul>
        <li><a href="addBranch.jsp"><i class="bi bi-plus-circle-fill"></i>Add Branch</a></li>
        <li><a href="ViewBranch.jsp"><i class="bi bi-eye-fill"></i>View Branch</a></li>
      </ul>
    </li>

    <li>
      <a href="javascript:;" class="has-arrow">
        <div class="parent-icon"><i class="bi bi-people"></i></div>
        <div class="menu-title">Customer</div>
      </a>
      <ul>
        <li><a href="AddCustomer.jsp"><i class="bi bi-plus-circle-fill"></i>Add Customer</a></li>
        <li><a href="ViewCustomer.jsp"><i class="bi bi-eye-fill"></i>View Customer</a></li>
      </ul>
    </li>

    <li>
      <a href="javascript:;" class="has-arrow">
        <div class="parent-icon"><i class="bi bi-wallet"></i></div>
        <div class="menu-title">Account Type</div>
      </a>
      <ul>
        <li><a href="addAccType.jsp"><i class="bi bi-plus-circle-fill"></i>Add Account Type</a></li>
        <li><a href="viewAccType.jsp"><i class="bi bi-eye-fill"></i>View Account Type</a></li>
      </ul>
    </li>

    <li>
      <a href="javascript:;" class="has-arrow">
        <div class="parent-icon"><i class="bi bi-cash-coin"></i></div>
        <div class="menu-title">Account</div>
      </a>
      <ul>
        <li><a href="addAccount.jsp"><i class="bi bi-plus-circle-fill"></i>Add Account</a></li>
        <li><a href="Maintainance.jsp"><i class="bi bi-eye-fill"></i>View Account</a></li>
      </ul>
    </li>

    <li>
      <a href="javascript:;" class="has-arrow">
        <div class="parent-icon"><i class="bi bi-cash-stack"></i></div>
        <div class="menu-title">Transaction</div>
      </a>
      <ul>
        <li><a href="Maintainance.jsp"><i class="bi bi-eye-fill"></i>View Transaction</a></li>
      </ul>
    </li>

    <li>
      <a href="javascript:;" class="has-arrow">
        <div class="parent-icon"><i class="bi bi-person-badge"></i></div>
        <div class="menu-title">Biller</div>
      </a>
      <ul>
        <li><a href="Maintainance.jsp"><i class="bi bi-eye-fill"></i>View Biller</a></li>
      </ul>
    </li>

    <li>
      <a href="javascript:;" class="has-arrow">
        <div class="parent-icon"><i class="bi bi-person-check"></i></div>
        <div class="menu-title">Admin</div>
      </a>
      <ul>
        <li><a href="Addadmin.jsp"><i class="bi bi-plus-circle-fill"></i>Add Admin</a></li>
        <li><a href="Viewadmin.jsp"><i class="bi bi-eye-fill"></i>View Admin</a></li>
      </ul>
    </li>

    <li class="menu-label">Maps</li>
    <li>
      <a class="has-arrow" href="javascript:;">
        <div class="parent-icon"><i class="bi bi-pin-map"></i></div>
        <div class="menu-title">Maps</div>
      </a>
      <ul>
        <li><a href="map-google-maps.html"><i class="bi bi-plus-circle-fill"></i>Google Maps</a></li>
      </ul>
    </li>
  </ul>

  <!-- Logout button at the bottom -->
  <div class="sidebar-footer" id="loginbtn">
    <button class="btn btn-primary w-100 mt-auto" type="button" >
      <i class="bi bi-box-arrow-right"></i> Logout
    </button>
  </div>
</aside>
<!-- End sidebar -->

<!-- CSS to position the logout button at the bottom -->
<style>
  .sidebar-wrapper {
    display: flex;
    flex-direction: column;
    height: 100vh;
  }

  .sidebar-footer {
    margin-top: auto;
    padding: 10px;
  }

  .btn {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .btn i {
    margin-right: 5px;
  }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function () {
    $("#loginbtn").click(function (e) {
      e.preventDefault(); // Prevent the default link behavior

      // Make an AJAX call to the LogoutServlet to handle session invalidation
      if (confirm("Are you sure to logout")) {
        $.ajax({
          url: '../logoutservlet',
          type: "POST",
          success: function (response) {
            // On successful logout, redirect to the login page
            window.location.href = "adminLogin.jsp"; // Change this to your login page
          },
          error: function (xhr, status, error) {
            console.error("Logout failed: " + error);
            alert("Logout failed. Please try again.");
          }
        });
      }
    });
  });
</script>
