<!DOCTYPE html>
<html>
   <head>
      <!-- Basic -->
      <base href="/">
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- Site Metas -->
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <link rel="shortcut icon" href="images/favicon.png" type="">
      <title>Famms - Fashion</title>
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="home/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="home/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="home/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="home/css/responsive.css" rel="stylesheet" />
   </head>
   <body>
      <div class="hero_area">
         <!-- header section strats -->
         @include('home.header')
         <!-- end header section -->
    <div class="row pt-5">
        <div class="col-md-6">
            <div class="box">
                <div class="img-box">
                    <img src="product/{{$product->image}}" alt="{{$product->title}}" class="img-fluid pt-2 m-auto" style="max-height: 500px;">
                </div>
            </div>
        </div>
   <div class="col-md-6">
      <div class="box">
         <div class="detail-box">
            <h5>{{$product->title}}</h5>
            @if($product->discount_price != null)
               <h6 style="text-decoration: line-through;">${{$product->price}}</h6>
               <h6 style="color: red; font-weight: bold; font-size: 18px">${{$product->discount_price}}</h6>
            @else
               <h6>${{$product->price}}</h6>
            @endif
            <ul>
            <li>Product Category: {{$product->category}}</li>
            <li>Product Details: {{$product->description}}</li>
            <li class="pb-2">Available Quantity: {{$product->quantity}}</li>
            </ul>
            
            <form action="{{url('add_cart',$product->id)}}" method="post">
                              @csrf
                              <div class="row">
                                 <div class="col-md-4">
                                    <input style="padding: 10px 20px; width: 100px" class="w-2" type="number" name="quantity" value="1" min="1">
                                 </div>
                                 <div class="col-md-4" > 
                                    <input type="submit" value="Add to cart" style="padding: 14px 27px">
                                 </div>
                              </div>
                           </form>
         </div>
      </div>
   </div>
</div>

        </div>
      <!-- footer start -->
      @include('home.footer')
      <!-- footer end -->
      <div class="cpy_">
         <p class="mx-auto">© 2023 All Rights <br>
         
            Distributed By <a href="https://themewagon.com/" target="_blank">Furteen</a>
         
         </p>
      </div>
      <!-- jQery -->
      <script src="home/js/jquery-3.4.1.min.js"></script>
      <!-- popper js -->
      <script src="home/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="home/js/bootstrap.js"></script>
      <!-- custom js -->
      <script src="home/js/custom.js"></script>
   </body>
</html>