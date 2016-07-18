
$(document).ready(function() {
    // create the image rotator
    setInterval("rotateImages()", 3000);
    
    });

    function rotateImages() {
        var CurPhoto = $('#banner-images div.current');
        var NxtPhoto = CurPhoto.next();
        if (NxtPhoto.length == 0)
            NxtPhoto = $('#banner-images div:first');
            CurPhoto.removeClass('current').addClass('previous');
            NxtPhoto.css({ opacity: 0.0 }).addClass('current')
                    .animate({ opacity: 1.0 }, 1000,
                                function() {
                                    CurPhoto.removeClass('previous');
                                });
        }

(function($,W,D)
{
    var JQUERY4U = {};

    JQUERY4U.UTIL =
    {
        setupFormValidation: function()
        {
            //form validation rules
            $("#register-form").validate({
                rules: {
                    firstname: "required",
                    lastname: "required",
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 4
                    },
                    agree: "required"
                },
                messages: {
                    firstname: "Please enter your firstname",
                    lastname: "Please enter your lastname",
                    email: {                      
                         required:  "Please enter a valid email address"
                    },
                    password: {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 5 characters long"
                    },   
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        }
	}

    //when the dom has loaded setup form validation rules
    $(document).ready(function($) {
        JQUERY4U.UTIL.setupFormValidation();
    });

})(jQuery, window, document);

   
$(document).ready(function()
            {
                setupRotator();
            }); 
            function setupRotator()
            {
                if($('.textItem').length > 1)
                {
                    $('.textItem:first').addClass('current').fadeIn(1000);
                    setInterval('textRotate()', 10000);
                }
            }
            function textRotate()
            {
                var current = $('#quotes > .current');
                if(current.next().length == 0)
                {
                    current.removeClass('current').fadeOut(1000);
                    $('.textItem:first').addClass('current').fadeIn(1000);
                }
                else
                {
                    current.removeClass('current').fadeOut(1000);
                    current.next().addClass('current').fadeIn(1000);
                }
            }