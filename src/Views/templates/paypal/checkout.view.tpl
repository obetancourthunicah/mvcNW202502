<section class="depth-4">
  <h1>Checkout</h1>
</section>
<section class="col-8 offset-2 grid">
{{foreach carretilla}}
  <div class="row" style="padding: 0.5rem 1rem;align-items:center;">
    <span class="col-7">{{productName}}</span>
    <span class="col-2">{{crrprc}}</span>
    <span class="col-3">
      <form action="index.php?page=checkout_checkout" method="post">
        <input type="hidden" name="productId" value="{{productId}}" />
        <button type="submit" name="removeOne" class="circle"><i class="fa-solid fa-circle-minus"></i></button>
        <span style="padding: 0.25rem 0.5rem;">{{crrctd}}</span>
        <button type="submit" name="addOne" class="circle"><i class="fa-solid fa-plus"></i></button>
      </form>
    </span>
  </div>
{{endfor carretilla}}
</section>
<form action="index.php?page=checkout_checkout" method="post">
  <button type="submit">Place Order</button>
</form>
