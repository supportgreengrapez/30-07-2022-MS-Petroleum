@extends('admin.layout.appadmin')
@section('content')
<div class="right_col" role="main">
  <div class="row">
    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
      <div class="viewadminhead">
        <h2>Receive Payment</h2>
      </div>
    </div>
  </div>
  @if($result1>0)
          @foreach($result1 as $results)
  <form method="post" action ="{{url('/')}}/admin/home/create/purchase_invoice/payment/{{$results->pk_id}}" class="login-form" enctype="multipart/form-data">
    
  @endforeach
                  @endif
       
    
    {{ csrf_field() }}
    
    @if($errors->any())
    <div class="alert alert-success"> <strong></strong> {{$errors->first()}} </div>
    @endif
    <div class="row">
      <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
        <div class="createadmininputs">
          <div class="form-group">
            <label for="usr">Customer Name</label>
                  @if($supplier2>0)
          @foreach($supplier2 as $results)
        
              
          <input  class="form-control"  name="supplier_name" value="{{$results->supplier_name}}" readonly >
              
              
           @endforeach
                  @endif
       
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div class="createadmininputs">
          <div class="form-group">
            <label for="usr">Payment Date</label>
            <input type="text" class="form-control" id="mydate" name="date">
          </div>
        </div>
      </div>
        @if($result1>0)
          @foreach($result1 as $results)
       <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="createadmininputs">
              <div class="form-group">
                <label for="usr">Purchase Invoice Date</label>
                <input type="text" class="form-control"  value="{{$results->bill_date}}"  name="due_date" readonly>
              </div>
            </div>
          </div>
        @endforeach
                  @endif
    </div>
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div class="createadmininputs">
          <div class="form-group">
            <label for="usr">Payment Method</label>
             <select class="js-example-basic-single" name="account_type" required>
                <option value="">Payment Account</option>
               @if($payment_account>0)
          @foreach($payment_account as $results)
        <option value="{{$results->account_name}}" >{{$results->account_name}}</option>
       
        @endforeach
                  @endif
      </select>
          </div>
        </div>
      </div>
      <!--<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">-->
      <!--  <div class="createadmininputs">-->
      <!--    <div class="form-group">-->
      <!--      <label for="usr">Deposit To</label>-->
            
      <!--      <select class="selectpicker form-control" data-show-subtext="true" name="deposit_to" data-live-search="true">-->
      <!--        <option  class="form-control" >Select Deposit to</option>-->
              
              
      <!--            @if($result>0)-->
      <!--    @foreach($result as $results)-->
        
              
      <!--        <option  class="form-control"  value="{{$results->pk_id}}" >{{$results->supplier_name}}</option>-->
              
              
      <!--     @endforeach-->
      <!--            @endif-->
       
      
            
      <!--      </select>-->
      <!--    </div>-->
      <!--  </div>-->
      <!--</div>-->
    </div>
    <div class="container-fluid">
      <div class="borderrow">
        <div class="row">
        @if($result1>0)
          @foreach($result1 as $results)
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="createadmininputs">
              <div class="form-group">
                <label for="usr">Invoice ID</label>
                <input type="text" class="form-control" value="{{$results->pk_id}}"  readonly>
              </div>
            </div>
          </div>

         

          <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
            <div class="createadmininputs">
              <div class="form-group">
                <label>Orignal Amount</label>
                <input type="text" class="form-control"  value="{{$results->total_amount}}"  name="org_amount" readonly>
              </div>
            </div>
          </div>
         
          <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
            <div class="createadmininputs">
              <div class="form-group">
                <label>Open Balance</label>
                
                <input type="text" class="form-control" value="{{$new_total}}" name="" readonly>
               

              </div>
            </div>
          </div>
          <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
            <div class="createadmininputs">
              <div class="form-group">
                <label>Payment</label>
                <input type="text" class="form-control" id="partial" name="partial" >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    @endforeach
                  @endif
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 col-lg-offset-6">
        <div class="totalamounth">
          <h3>Amount to apply</h3>
        </div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div class="totalamountp">
         <span id="total2">0</span> <span>PKR</span>
        </div>
      </div>
    </div>
    <!-- <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 col-lg-offset-6">
        <div class="totalamounth">
          <h3>Amount to credit</h3>
        </div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div class="totalamountp">
          <p>0</p>
        </div>
      </div>
    </div> -->
    <div class="row">
        <div class="col-lg-6 col-md-3 col-sm-12 col-xs-12">
        <div class="createadmininputs">
              <div class="form-group">
                <label>Memo</label>
                <textarea class="form-control" rows="5" name="description"></textarea>
              </div>
            </div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 col-lg-offset-3">
        <div class="totalamountp">
          <button type="submit" class="amountbtn btn">Create Payment</button>
        </div>
      </div>
    </div>
  </form>
</div>
@endsection