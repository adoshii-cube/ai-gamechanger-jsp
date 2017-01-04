//document.addEventListener('contextmenu', event => event.preventDefault());

$(document).ready(function () {
    var nav = $('a');
    if (nav.length) {
        // Add smooth scrolling to all links
        $("a").on('click', function (event) {
            // Make sure this.hash has a value before overriding default behavior
            if (this.hash !== "") {
                // Prevent default anchor click behavior
                event.preventDefault();
                // Store hash
                var hash = this.hash;
                if ($(hash).length) {
                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
                    $('.mdl-layout__content').animate({
                        scrollTop: $(hash).get(0).offsetTop
//                    scrollTop: $(hash).offset().top
                    }, 800, function () {
                        // Add hash (#) to URL when done scrolling (default click behavior)
//                        window.location.hash = hash;
                    });
                } else {
//                    alert("Oops");
                    window.location.href = $(this).attr('href');
                }
            } // End if
        });
    }

//    var inputFieldCheck = $("input").filter(function () {
//        return $.trim($(this).val()).length === 0;
//    }).length === 0;
//
//    if (!inputFieldCheck) {
//        $('#show-dialog').prop('disabled', true);
//    } else {
//        $('#show-dialog').prop('disabled', false);
//        $('#show-dialog').addClass('mdl-color--green-600');
//        $('#show-dialog').addClass('mdl-color-text--white');
//    }

//    $('input').keyup(function () {
//        var empty = false;
//        $('input').each(function () {
//            if ($(this).val() === '') {
//                empty = true;
//            }
//        });
//        if (empty) {
//            $('#show-dialog').prop('disabled', true);
//            $('#show-dialog').removeClass('mdl-color--green-600');
//            $('#show-dialog').removeClass('mdl-color-text--white');
//        } else {
//            $('#show-dialog').prop('disabled', false);
//            $('#show-dialog').addClass('mdl-color--green-600');
//            $('#show-dialog').addClass('mdl-color-text--white');
//        }
//    });

    $("#submit-button").on('click', function () {
//        console.log("I just clicked on Submit");
        var name = $("#Name").val();
        var email = $("#Email").val();
        var note = $("#note").val();
//        var count = 0;
        var dataString = 'Name : ' + name + '-Email : ' + email + '-Note : ' + note;
        if (name === '' || email === '') {
            alert("Please Fill All Fields");
        } else {
            var postData = {'dataString': JSON.stringify(dataString)};
//            console.log("sendemail postData : " + postData);
            $.ajax({
                type: "POST",
                url: "sendemail.jsp",
                data: postData,
                dataType: 'JSON',
                async: true,
                success: function (resp) {
//                    count++;
//                    console.log("sendemail inside ajax success with count = " + ++count);

                },
                error: function (request, status, error) {
                    console.log(status.status);
                    console.log(error);
                }
            });
//            console.log("exiting sendemail");

        }
        return false;
    });
});


// Submit form with HTML <form> tag function.
//function submit_by_tag() {
//    var name = document.getElementById("Name").value;
//    var email = document.getElementById("Email").value;
//    var note = document.getElementById("note").value;
//
//
//    var x = document.getElementsByTagName("form");
//    x[0].submit(); //form submission
//    alert(" Name : " + name + " \n Email : " + email + " \n Form Tag : <form>\n\n Form Submitted Successfully......");
//
//}