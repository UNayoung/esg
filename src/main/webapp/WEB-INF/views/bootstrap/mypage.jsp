<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Checkout example Â· Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/checkout/">

    <!-- Bootstrap core CSS -->
<link href="/docs/4.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.5/asset/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.5/asset/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.5/asset/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.5/asset/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.5/asset/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.5/asset/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.5/asset/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
      
    <div class="container">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="data:image/png;base64,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" alt="" width="72" height="72">
    <h2>ë§ì´ íì´ì§</h2>
    <p class="lead"></p>
  </div>

  <div class="row">
    <div class="col-md-4 order-md-2 mb-4">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-muted">ë´ ë©ë´</span>
        <span class="badge badge-secondary badge-pill">3</span>
      </h4>
      <ul class="list-group mb-3">
        <li class="list-group-item d-flex justify-content-between bg-light">
          <div>
            <h6 class="my-success">ê°ì¸ì ë³´ ìì </h6>
            <small class="text-muted">ì ë³´ ìì </small>
          </div>
          <!-- <span class="text-muted">$12</span> -->
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">ëê¸ ìì± ë´ì­</h6>
            <small class="text-muted">ëê¸</small>
          </div>
          <!-- <span class="text-muted">$8</span> -->
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">ê²ìê¸ ìì± ë´ì­</h6>
            <small class="text-muted">ê²ìê¸</small>
          </div>
          <!-- <span class="text-muted">$5</span> -->
        </li>
        <!-- <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div class="text-success">
            <h6 class="my-0">Promo code</h6>
            <small>EXAMPLECODE</small>
          </div>
          <span class="text-success">-$5</span>
        </li> -->
        <li class="list-group-item d-flex justify-content-between">
          <span>ì§ê°</span>
          <!-- <strong>$20</strong> -->
        </li>
      </ul>

      <!-- <form class="card p-2">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Promo code">
          <div class="input-group-append">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </div>
      </form> -->
    </div>
    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">ê°ì¸ ì ë³´ ìì </h4>
      <form class="needs-validation" novalidate>
        <!-- <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">First name</label>
            <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastName">Last name</label>
            <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
            <div class="invalid-feedback">
              Valid last name is required.
            </div>
          </div>
        </div> -->

        <div class="mb-3">
          <label for="username">ëë¤ì</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text">@</span>
            </div>
            <input type="text" class="form-control" id="username" placeholder="ëë¤ì" required>
            <div class="invalid-feedback" style="width: 100%;">
              Your username is required.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label for="email">ì´ë©ì¼ <span class="text-muted">(ì íì¬í­)</span></label>
          <input type="email" class="form-control" id="email" placeholder="email@example.com">
          <div class="invalid-feedback">
            Please enter a valid email address for shipping updates.
          </div>
        </div>

        <div class="mb-3">
          <label for="address">ì£¼ì</label>
          <input type="text" class="form-control" id="address" placeholder="" required>
          <div class="invalid-feedback">
            Please enter your shipping address.
          </div>
        </div>

        <!-- <div class="mb-3">
          <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
          <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
        </div> -->
        <div class="row">
            <div class="col-md-5 mb-3">
                <label for="zip">ë</label>
                <input
                  type="text"
                  class="form-control"
                  id="zip"
                  placeholder=""
                  required
                />
                <div class="invalid-feedback">Zip code required.</div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="state">ì</label>
              <select class="custom-select d-block w-100" id="state" required>
                <option value="">Choose...</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
              </select>
              <div class="invalid-feedback">Please provide a valid state.</div>
            </div>
            <div class="col-md-3 mb-3">
                <label for="state">ì¼</label>
                <select class="custom-select d-block w-100" id="state" required>
                  <option value="">Choose...</option>
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                  <option>9</option>
                  <option>10</option>
                  <option>11</option>
                  <option>12</option>
                  <option>13</option>
                  <option>14</option>
                  <option>14</option>
                  <option>15</option>
                  <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>21</option>
                <option>22</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
                <option>28</option>
                <option>29</option>
                <option>30</option>
                <option>31</option>
                </select>
                <div class="invalid-feedback">Please provide a valid state.</div>
            </div>
          </div>
          <div class="mb-3">
            <label for="phone"
              >ì íë²í¸ <span class="text-muted"></span></label
            >
            <input
              type="text"
              class="form-control"
              id="phone"
              placeholder="010-0000-0000"
              value=""
            />
            <div class="invalid-feedback">
              Please enter a valid email address for shipping updates.
            </div>
          </div>

        <!-- <div class="row">
          <div class="col-md-5 mb-3">
            <label for="country">Country</label>
            <select class="custom-select d-block w-100" id="country" required>
              <option value="">Choose...</option>
              <option>United States</option>
            </select>
            <div class="invalid-feedback">
              Please select a valid country.
            </div>
          </div>
          <div class="col-md-4 mb-3">
            <label for="state">State</label>
            <select class="custom-select d-block w-100" id="state" required>
              <option value="">Choose...</option>
              <option>California</option>
            </select>
            <div class="invalid-feedback">
              Please provide a valid state.
            </div>
          </div>
          <div class="col-md-3 mb-3">
            <label for="zip">Zip</label>
            <input type="text" class="form-control" id="zip" placeholder="" required>
            <div class="invalid-feedback">
              Zip code required.
            </div>
          </div>
        </div> -->
        <!-- <hr class="mb-4">
        <div class="custom-control custom-checkbox">
          <input type="checkbox" class="custom-control-input" id="same-address">
          <label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>
        </div>
        <div class="custom-control custom-checkbox">
          <input type="checkbox" class="custom-control-input" id="save-info">
          <label class="custom-control-label" for="save-info">Save this information for next time</label>
        </div>
        <hr class="mb-4">

        <h4 class="mb-3">Payment</h4>

        <div class="d-block my-3">
          <div class="custom-control custom-radio">
            <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
            <label class="custom-control-label" for="credit">Credit card</label>
          </div>
          <div class="custom-control custom-radio">
            <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
            <label class="custom-control-label" for="debit">Debit card</label>
          </div>
          <div class="custom-control custom-radio">
            <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
            <label class="custom-control-label" for="paypal">PayPal</label>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="cc-name">Name on card</label>
            <input type="text" class="form-control" id="cc-name" placeholder="" required>
            <small class="text-muted">Full name as displayed on card</small>
            <div class="invalid-feedback">
              Name on card is required
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="cc-number">Credit card number</label>
            <input type="text" class="form-control" id="cc-number" placeholder="" required>
            <div class="invalid-feedback">
              Credit card number is required
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3 mb-3">
            <label for="cc-expiration">Expiration</label>
            <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
            <div class="invalid-feedback">
              Expiration date required
            </div>
          </div>
          <div class="col-md-3 mb-3">
            <label for="cc-cvv">CVV</label>
            <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
            <div class="invalid-feedback">
              Security code required
            </div>
          </div>
        </div>
        <hr class="mb-4">
        <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button> -->
      </form>
    </div>
  </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2017-2020 Company Name</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.5/asset/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="form-validation.js"></script></body>
</html>