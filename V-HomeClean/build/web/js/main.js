(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();

    // Initiate the wowjs
    new WOW().init();

    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.sticky-top').addClass('shadow-sm').css('top', '0px');
        } else {
            $('.sticky-top').removeClass('shadow-sm').css('top', '-100px');
        }
    });

    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });

    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        items: 1,
        dots: false,
        loop: true,
        nav: true,
        navText: [
            '<i class="bi bi-chevron-left"></i>',
            '<i class="bi bi-chevron-right"></i>'
        ]
    });

    //check valid password
    const passwordInput = document.querySelector(".pass-field input");
    const eyeIcon = document.querySelector(".pass-field i");
    const requirementList = document.querySelectorAll(".requirement-list li");
    const requirementDiv = document.querySelector(".requirement");
    const submitButton = document.querySelector(".registerButton");

    const requirements = [
        {regex: /.{8,}/, index: 0}, // Minimum of 8 characters
        {regex: /[0-9]/, index: 1}, // At least one number
        {regex: /[a-z]/, index: 2}, // At least one lowercase letter
        {regex: /[^A-Za-z0-9]/, index: 3}, // At least one special character
        {regex: /[A-Z]/, index: 4} // At least one uppercase letter
    ];

    passwordInput.addEventListener("keyup", (e) => {
        requirements.forEach((item) => {
            const isValid = item.regex.test(e.target.value);
            const requirementItem = requirementList[item.index];

            if (isValid) {
                requirementItem.classList.add("valid");
               
                requirementItem.firstElementChild.className = "fa-solid fa-check";
            } else {
                requirementItem.classList.remove("valid");
                requirementItem.firstElementChild.className = "fa-solid fa-circle";
            }
        });

        validatePasswordRequirements();
    });

    passwordInput.addEventListener("input", function () {
        const passwordValue = this.value;
        const hasPassword = passwordValue.trim() !== "";

        if (hasPassword) {
            requirementDiv.style.display = "block";
        } else {
            requirementDiv.style.display = "none";
        }

        validatePasswordRequirements();
    });

    eyeIcon.addEventListener("click", () => {
        passwordInput.type = passwordInput.type === "password" ? "text" : "password";
        eyeIcon.className = `fa-solid fa-eye${
            passwordInput.type === "password" ? "" : "-slash"
        }`;

        passwordInput.focus();
    });

    function validatePasswordRequirements() {
        const allRequirementsValid = Array.from(requirementList).every(item =>
            item.classList.contains("valid")
        );

        submitButton.disabled = !allRequirementsValid || passwordInput.value.trim() === "";
    }

    


})(jQuery);
