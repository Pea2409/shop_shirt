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
        .div_center{
            text-align: center;
        }
        .font_size {
            font-size: 40px;
            padding-bottom: 40px;
        }
        .div_design{
            padding-bottom: 15px;
        }
        .font_size {
            font-size: 40px;
            padding-bottom: 20px;
        }
        .div_design .submit {
            padding: 10px 20px;
        }
        .text_color{
            color: black;
            padding-bottom: 20px;
        }    </style>
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
                <h2 class="font_word" >List Of User</h2>
                <table class="tb_center table overflow-x-scroll table-bordered">
                    <thead>
                        <th>STT</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Delete</th>
                    </thead>
                    <tbody>
                        @foreach($user as $user)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$user->name}}</td>
                            <td>{{$user->email}}</td>
                            <td>{{$user->address}}</td>
                            <td>{{$user->phone}}</td>
                            <td>
                                <a class="btn btn-danger" onclick="return confirm('Are you sure delete this userf ?')" 
                                href="{{url('delete_user',$user->id)}}">Delete</a>        
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