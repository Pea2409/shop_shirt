<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    @include('admin.css')
    <style>
        .title_des{
            text-align: center;
            font-size: 25px;
            font-weight: bold;
            padding-bottom: 40px;
        }
    </style>
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
      @include('admin.sidebar')
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_navbar.html -->
        @include('admin.header')
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper overflow-auto">
                <h1 class="title_des">All Orders</h1>
                <table class="table table-bordered ">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Product_title</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Payment Status</th>
                            <th>Delivery</th>
                            <th>Image</th>
                            <th>Delivered</th>
                            <th>Print PDF</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($order as $order)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$order->name}}</td>
                            <td>{{$order->email}}</td>
                            <td>{{$order->address}}</td>
                            <td>{{$order->phone}}</td>
                            <td>{{$order->product_title}}</td>
                            <td>{{$order->quantity}}</td>
                            <td>${{$order->price}}</td>
                            <td>{{$order->payment_status}}</td>
                            <td>{{$order->delivery_status}}</td>
                            <td>
                                <img style="height: auto; width: auto; border-radius: 0" src="/product/{{$order->image}}" alt="">
                            </td>
                            <td>
                                @if($order->delivery_status=='processing')
                                <a onclick="return confirm('Are you sure this product is delivered ?')" href="{{url('delivered', $order->id)}}" 
                                class="btn btn-primary" >Deliveried</a>
                                @else
                                <p style="color: green">Delivered</p>

                                @endif
                                
                            </td>
                            <td>
                                <a href="{{url('print_pdf',$order->id)}}" class="btn btn-secondary">Print</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    @include('admin.script')
    
    <!-- End custom js for this page -->
  </body>
</html>