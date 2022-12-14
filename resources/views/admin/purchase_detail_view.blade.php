@extends('admin.layout.appadmin')
@section('content')
    
    <!-- page content -->
    <div class="right_col" role="main">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
          <div class="viewadminhead">
            <h2>View Purchases / {{$supplier[0]->supplier_name}}</h2>
          </div>
        </div>
      </div>
      <div class="row">
     
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>PI # :</h4>
          <p>{{$result1[0]->pk_id}}</p>
         </div>       
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>STI # :</h4>
          <p>{{$result1[0]->sti}}</p>
         </div>       
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>D-Invoice :</h4>
          <p>{{$supplier[0]->pk_id}}</p>
         </div>       
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
         <div class="Totalpurchasehead" style="margin-top:10px;">
         <h4>Billing Address :</h4>
          <p>{{$supplier[0]->billing_address}}</p>
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

         @if(session('Purchase_Management_edit')==1)
         <a href="{{url('/')}}/admin/home/edit/purchase/{{$result1[0]->pk_id}}" class="editrightbtn btn">Edit</a>
           @else
           <a  class="editrightbtn btn">Edit</a>
        
           
              @endif
        
              <a href="{{url('/')}}/admin/purchase/invoice/print/{{$result1[0]->pk_id}}" class="amountbtn btt btn">Print</a>
       
        
        
         </div>       
      </div>
      
      </div>
      
      
      <div class="clearfix"></div>
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_content">
              <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
              @if($purchase == "kachi parchi")
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
                   <tr>
                    <td>{{$results->sku}}</td>
                      <td>{{$results->item_name}}</td>
                     <td>{{$results->quantity}} L</td>
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
                     <th>Amount Exclusive Tax</th>
                     <th>Tax</th>
                     <th>Tax amount</th>
                     <th>Amount Inclusive Tax</th>
                        
                  </tr>
                </thead>
                <tbody>
                @if(count($result)>0)
                @foreach($result as $results)
                   <tr>
                    <td>{{$results->sku}}</td>
                      <td>{{$results->item_name}}</td>
                     <td>{{$results->quantity}} L</td>
                    <td>PKR {{number_format($results->rate)}}</td>
                    <td>PKR {{number_format($results->rate * $results->quantity)}}</td>
                    <td>{{$results->tax}}%</td>
                    <td>PKR {{number_format($results->tax_amount)}}</td>
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