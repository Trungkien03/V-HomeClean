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

    // Check valid password and confirm password
    const passwordInput = document.querySelector(".pass-field input");
    const confirmInput = document.querySelector(".confirm-pass input");
    const eyeIcon = document.querySelector(".pass-field i");
    const eyeIconConfirm = document.querySelector(".confirm-pass i");
    const requirementList = document.querySelectorAll(".requirement-list li");
    const requirementDiv = document.querySelector(".requirement");
    const confirmRequirementDiv = document.querySelector(".requirement-confirm");
    const confirmRequirementItem = document.querySelector(".requirement-confirm li");
    const submitButton = document.querySelector(".registerButton");
    const roomInput = document.querySelector(".room-field input");
    const roomRequirementList = document.querySelector(".room-requirement-list");
    const roomRequirementItem = document.querySelector(".room-requirement-list li");
    const roomRequirementDiv = document.querySelector(".room-requirement");

    const requirements = [
        { regex: /.{8,}/, index: 0 }, // Minimum of 8 characters
        { regex: /[0-9]/, index: 1 }, // At least one number
        { regex: /[a-z]/, index: 2 }, // At least one lowercase letter
        { regex: /[^A-Za-z0-9]/, index: 3 }, // At least one special character
        { regex: /[A-Z]/, index: 4 }, // At least one uppercase letter
    ];

    requirementList.forEach((requirementItem) => {
        requirementItem.addEventListener("input", function () {
            validatePasswordRequirements();
        });
    });

    passwordInput.addEventListener("keyup", (e) => {
        requirements.forEach((item) => {
            const isValid = item.regex.test(e.target.value);
            const requirementItem = requirementList[item.index];

            if (isValid) {
                requirementItem.classList.add("valid");
                requirementItem.firstElementChild.className = "fa-solid fa-check";
            } else {
                requirementItem.classList.remove("valid");
                requirementItem.firstElementChild.className = "fa-solid fa-warning";
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

    confirmInput.addEventListener("input", function () {
        const confirmPass = this.value;
        const hasConfirm = confirmPass.trim() !== "";

        if (hasConfirm) {
            confirmRequirementDiv.style.display = "block";
        } else {
            confirmRequirementDiv.style.display = "none";
        }

        validatePasswordRequirements();
    });

    confirmInput.addEventListener("input", function () {
        const confirmPassword = this.value;
        const password = passwordInput.value;

        if (confirmPassword === password) {
            confirmRequirementItem.classList.add("valid");
            confirmRequirementItem.firstElementChild.className = "fa-solid fa-check";
        } else {
            confirmRequirementItem.classList.remove("valid");
            confirmRequirementItem.firstElementChild.className = "fa-solid fa-warning";
        }

        validatePasswordRequirements();
    });

    eyeIcon.addEventListener("click", () => {
        passwordInput.type = passwordInput.type === "password" ? "text" : "password";
        eyeIcon.className = `fa-solid fa-eye${passwordInput.type === "password" ? "" : "-slash"}`;
        passwordInput.focus();
    });

    eyeIconConfirm.addEventListener("click", () => {
        confirmInput.type = confirmInput.type === "password" ? "text" : "password";
        eyeIconConfirm.className = `fa-solid fa-eye${confirmInput.type === "password" ? "" : "-slash"}`;
        confirmInput.focus();
    });

    roomInput.addEventListener("input", function () {
        const roomValue = this.value;
        const hasRoomValue = roomValue.trim() !== "";
        if (hasRoomValue) {
            roomRequirementDiv.style.display = "block";
        } else {
            roomRequirementDiv.style.display = "none";
        }
        const isValidFormat = /^S\d{2}-\d{2}$/.test(roomValue); // Check if the room code matches the format S01-01

        if (isValidFormat) {
            roomRequirementItem.classList.add("valid");
            roomRequirementItem.firstElementChild.className = "fa-solid fa-check";
        } else {
            roomRequirementItem.classList.remove("valid");
            roomRequirementItem.firstElementChild.className = "fa-solid fa-warning";
        }

        validatePasswordRequirements();
    });

    function validatePasswordRequirements() {
        const allRequirementsValid = Array.from(requirementList).every((requirementItem) =>
            requirementItem.classList.contains("valid")
        );

        const password = passwordInput.value;
        const confirmPassword = confirmInput.value;
        const isPasswordMatch = password === confirmPassword;
        const hasPassword = password.trim() !== "";

        if (allRequirementsValid && isPasswordMatch && hasPassword) {
            submitButton.disabled = false;
        } else {
            submitButton.disabled = true;
        }
    }

    // Disable the register button by default
    submitButton.disabled = true;

})(jQuery);
