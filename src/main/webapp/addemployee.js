
document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");
    const mobileInput = document.getElementById("mobile");
    const emailInput = document.getElementById("email");
    const dobInput = document.getElementById("dob");

    // Mobile number validation (must be 10 digits)
    mobileInput.addEventListener("input", function () {
        const mobilePattern = /^[0-9]{0,10}$/;
        if (!mobilePattern.test(this.value)) {
            this.setCustomValidity("Mobile number must be 10 digits only.");
        } else {
            this.setCustomValidity("");
        }
    });

    // Email format validation
    emailInput.addEventListener("input", function () {
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(this.value)) {
            this.setCustomValidity("Enter a valid email address.");
        } else {
            this.setCustomValidity("");
        }
    });

    // Prevent future date in DOB
    dobInput.setAttribute("max", new Date().toISOString().split("T")[0]);

    // Optional: Confirm before submission
    form.addEventListener("submit", function (e) {
        const confirmSubmit = confirm("Are you sure you want to register this employee?");
        if (!confirmSubmit) {
            e.preventDefault();
        }
    });
});
