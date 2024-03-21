<!DOCTYPE html>
<html>
   <head>
      <!-- Basic -->
      <meta charset="utf-8" />
      <base href="/">
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
      <style>
        .center{
            margin: auto;
            width: 50%;
            text-align: center;
        }
        .total_design {
            font-size: 20px;
            padding: 40px;
            text-align: center;
        }
        .trash_on_del:hover{
            color: #f7444e;
        }
      </style>
   </head>
   <body>
      <div class="hero_area">
         <!-- header section strats -->
         @include('home.header')
         <!-- end header section -->
        @if(session()->has('message'))
                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                        <i class="fa fa-times" aria-hidden="true"></i>
                        </button>
                        {{session()-> get('message')}}
                    </div>
        @endif
      <div class=" m-auto w-50 ">
        <table class="table table-bordered">
            <tr>
                <th scope="col">Product Title</th>
                <th scope="col">Quantity</th>
                <th scope="col">Price</th>
                <th scope="col">Image</th>
                <th scope="col">Action</th>
            </tr>
            <?php
                $total = 0;
            ?>
            @foreach($cart as $cart )
            <tr>
                <td>{{$cart->product_title}}</td>
                <td>{{$cart->quantity}}</td>
                <td>${{$cart->price}}</td>
                <td  class=""><img style="height: 100px; width: 100px; object-fit: contain;" src="/product/{{$cart->image}}" alt=""></td>
                <td >
                    <a class="trash_on_del" onclick="return confirm('Are you sure to remover product')" href="{{url('remove_cart', $cart->id)}}">
                        <i class="fa fa-trash" style="font-size: 24px;" aria-hidden="true"></i>
                    </a>
                </td>
            </tr>
            <?php $total = $total + $cart->price ?>
            @endforeach
        </table>
        <div>
            <h1 class="total_design">Total Price: ${{$total}}</h1>
        </div>
        <div> 
            <h1 style="font-size: 25px; padding-bottom: 15px">Procced to Order</h1>
            <a href="{{url('cash_order')}}" class="btn btn-danger">Cash on Delivery</a>
            <a href="{{url('stripe',$total)}}" class="btn btn-danger">Pay Using Card</a>
        </div>
      </div>
      <!-- footer start -->
      <!-- footer end -->
      <div class="cpy_">
         <p class="mx-auto">© 2023 All Rights Reserved <br>
         
            Designed By <a href="#" target="_blank">Furteen</a>
         
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