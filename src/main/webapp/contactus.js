// contactus.js

document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");
    const phoneInput = form.querySelector("input[name='phone']");
    const dobInput = form.querySelector("input[name='dob']");

    // Validate phone number format: 10 digits only
    phoneInput.addEventListener("input", function () {
        const phonePattern = /^[0-9]{10}$/;
        if (!phonePattern.test(this.value)) {
            this.setCustomValidity("Phone number must be exactly 10 digits.");
        } else {
            this.setCustomValidity("");
        }
    });

    // Prevent future date for DOB
    const today = new Date().toISOString().split("T")[0];
    dobInput.setAttribute("max", today);

    // Confirm before submission
    form.addEventListener("submit", function (e) {
        if (!confirm("Are you sure you want to send this message?")) {
            e.preventDefault();
        }
    });
});
/**
 * 
 */