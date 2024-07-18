const bar = document.getElementById('bar')
const close = document.getElementById('close')
const nav = document.getElementById('navbar')

if(bar){
    bar.addEventListener('click', () => {
        nav.classList.add('active')
    })
}

if(close){
    close.addEventListener('click', () => {
        nav.classList.remove('active')
    })
    function addToCart() {
        alert("Item added to cart!");
        // You can add further logic to update cart count, store in local storage, etc.
    }

    // Adding event listener to the button
    document.getElementById('addToCartBtn').addEventListener('click', addToCart);

}