<script>
	$(document).ready(function() {
    // Get the current page URL
    let navbar = window.location.href;
    console.log(navbar);

    // Split the URL to get the current file name
    let sp = navbar.split('/');
    let filename = sp[sp.length - 1].split('.')[0];
    console.log(filename);

    // Find the matching menu item and add the "active-menu" class
    $('#activemenu li').each(function() {
        let menuItem = $(this).find('a').attr('href');
        if (menuItem === filename) {
            $(this).addClass('active-menu');
        } else {
            $(this).removeClass('active-menu');
        }
    });

    // Add click event listener to toggle the "active-menu" class
    $('#activemenu li a').on('click', function() {
        $('#activemenu li').removeClass('active-menu');
        $(this).parent().addClass('active-menu');
    });
});

</script>