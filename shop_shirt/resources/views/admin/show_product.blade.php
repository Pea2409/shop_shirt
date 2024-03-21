<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    @include('admin.css')
    <style>
        .tb_center {
            margin: auto;
            width: 50%;
            border: 2px solid white;
            text-align: center;
            margin-top: 40px;
            overflow-x: auto; /* Thêm thanh trượt dọc khi nội dung vượt quá kích thước bảng */
        }
        .font_word {
            text-align: center;
            font-size: 40px;
            padding-top: 20px;
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
        <div class="main-panel ">
            <div class="content-wrapper overflow-auto ">
                @if(session()->has('message'))
                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                        {{session()-> get('message')}}
                    </div>
                @endif
                <h2 class="font_word" >List Of Product</h2>
                <table class="tb_center table overflow-x-scroll ">
                    <thead>
                        <th >STT</th>
                        <th >Product title</th>
                        <th >Description</th>
                        <th >Quantity</th>
                        <th >Category</th>
                        <th >Price</th>
                        <th >Discount Price</th>
                        <th >Product Image</th>
                        <th >Update</th>
                        <th >Delete</th>
                    </thead>
                    <tbody>
                        @foreach($product as $product)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$product->title}}</td>
                            <td style="
                                max-height: 6.8em;
                                line-height: 1.4em; /* Độ cao của mỗi dòng */
                                overflow: hidden;
                                text-overflow: ellipsis;
                                white-space: normal;
                                text-align: left;
                                display: -webkit-box;
                                -webkit-line-clamp: 4;
                                -webkit-box-orient: vertical;
                            ">{{$product->description}}</td>
                            <td>{{$product->quantity}}</td>
                            <td>{{$product->category}}</td>
                            <td>{{$product->price}}</td>
                            <td>{{$product->discount_price}}</td>
                            <td>
                                <img style="border-radius: 0; width: 100px; height: 100px" 
                                src="/product/{{$product->image}}" alt="Not Found">
                            </td>
                            <td>
                                <a class="btn btn-warning" href="{{url('update_product',$product->id)}}" >Update</a>        
                            </td>
                            <td>
                                <a class="btn btn-danger" onclick="return confirm('Are you sure delete this product ?')" 
                                href="{{url('delete_product',$product->id)}}">Delete</a>        
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