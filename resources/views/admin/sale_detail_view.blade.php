@extends('admin.layout.appadmin')
@section('content')
    
    <!-- page content -->
    <div class="right_col" role="main">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
          <div class="viewadminhead">
            <h2>View Sale / {{$customer[0]->customer_name}}</h2>
          </div>
        </div>
      </div>
      <div class="row">
     
        
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>STI # :</h4>
          <p>{{$result1[0]->sti}}</p>
         </div>       
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>Billing Address :</h4>
         <p>{{$customer[0]->billing_address}}</p>
         </div>       
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>SR No. :</h4>
          <p>{{$result1[0]->pk_id}}</p>
         </div>       
      </div>
       <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>Company Name :</h4>
          <p>{{$result1[0]->company_name}}</p>
         </div>       
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>Vehical# :</h4>
          <p>{{$result1[0]->vehicle_no}}</p>
         </div>       
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>Date :</h4>
          <p>{{$result1[0]->created_at}}</p>
         </div>       
      </div>
       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
         <div class="buttonright">

         @if(session('Sales_Management_edit')==1)
         <a href="{{url('/')}}/admin/home/edit/sale/{{$result1[0]->pk_id}}" class="editrightbtn btn">Edit</a>
       
         @else
         <a  class="editrightbtn btn">Edit</a>
       
           
              @endif
              <a href="{{url('/')}}/admin/sale/invoice/print/{{$result1[0]->pk_id}}" class="amountbtn btt btn">Print</a>
         </div>       
      </div>
      
      </div>
      
      
      <div class="clearfix"></div>
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_content">
              <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
              @if($sale == "kachi parchi")
                <thead class="headbgcolor">
                  <tr>
                    <th>SKU</th>
                    <th>Item Name</th>
                    <th>Quantity</th>
                     <th>Rate</th>
                     
                      <th>Total Price</th>
                        
                  </tr>
                </thead>
                <tbody>
                @if(count($result)>0)
                @foreach($result as $results)
                     @php
               
               $uom = DB::select("select* from inventory where name = '$results->item_name'");
             
           
               @endphp
                   <tr>
                    <td>{{$results->sku}}</td>
                      <td>{{$results->item_name}}</td>
                     <td>{{$results->quantity}} {{$uom[0]->uom}}</td>
                    <td>PKR {{number_format($results->rate)}}</td>
                 
                    <td>PKR {{number_format($results->amount)}}</td>
                    
                            
                  </tr>
                 
                  @endforeach
          @endif
                
                
              
                </tbody>
                @else
                <thead class="headbgcolor">
                  <tr>
                  <th>SKU</th>
                    <th>Item Name</th>
                    <th>Quantity</th>
                     <th>Rate</th>
                     
                      <th>Total Price</th>
                        
                  </tr>
                </thead>
                <tbody>
                @if(count($result)>0)
                @foreach($result as $results)
                 @php
               
               $uom = DB::select("select* from inventory where name = '$results->item_name'");
             
           
               @endphp
                   <tr>
                    <td>{{$results->sku}}</td>
                      <td>{{$results->item_name}}</td>
                     <td>{{$results->quantity}} {{$uom[0]->uom}}</td>
                    <td>PKR {{number_format($results->rate)}}</td>
                  
                    <td>PKR {{number_format($results->amount)}}</td>
                    
                            
                  </tr>
                 
                  @endforeach
          @endif
              
                </tbody>
                @endif
              </table>
            </div>
          </div>
        </div>
      </div>
      
      
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 col-lg-offset-6">
          <div class="totalamounth">
            <h3>Total</h3>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
          <div class="totalamountp">
            <p>PKR {{number_format($result1[0]->total_amount)}}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /page content --> 
  
 @endsection