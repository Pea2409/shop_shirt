<section class="product_section layout_padding" id ="product">
         <div class="container">
            <div class="heading_container heading_center">
               <h2>
                  Our <span>Products</span>
               </h2>
            </div>
            <div class="row">
               @foreach($product as $products)
               <div class="col-sm-6 col-md-4 col-lg-4">
                  <div class="box">
                     <div class="option_container">
                        <div class="options">
                           <a href="{{url('product_details',$products->id)}}" class="option2">
                           Product Details
                           </a>
                           <form action="{{url('add_cart',$products->id)}}" method="post">
                              @csrf
                              <div class="row pt-2">
                                 <div class="col-md-4">
                                    <input type="number" style="width: 80px; padding: 7px 16px;" name="quantity" value="1" min="1">
                                 </div>
                                 <div class="col-md-4"> 
                                    <input type="submit" style="padding: 10px 16px;" class="option1" value="Add to cart">
                                 </div>
                              </div>
                           </form>
                        </div>
                     </div>
                     <div class="img-box">
                        <img src="product/{{$products->image}}" alt="">
                     </div>
                     <div class="detail-box">
                        <h5>
                           {{$products->title}}
                        </h5>
                        @if($products->discount_price!=null)
                        <h6 style="text-decoration: line-through;">
                           ${{$products->price}}
                        </h6>
                        <h6 style="color: red; font-weight: bold; font-size: 18px">
                           ${{$products->discount_price}}
                        </h6>
                        
                        @else
                        <h6>
                           ${{$products->price}}
                        </h6>
                        @endif
                        
                     </div>
                  </div>
               </div>
               @endforeach
            </div>
            <span >
    {!! $product->appends(request()->query())->links('pagination::bootstrap-5')->toHtml() !!}
</span>
         </div>
      </section>