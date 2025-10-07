// signup.js

document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");
    const passwordInput = form.querySelector("input[name='password']");

    // Password strength check (minimum 6 characters)
    passwordInput.addEventListener("input", function () {
        if (this.value.length < 6) {
            this.setCustomValidity("Password must be at least 6 characters long.");
        } else {
            this.setCustomValidity("");
        }
    });
	emailInput.addEventListener("input", function () {
	        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	        if (!emailPattern.test(this.value)) {
	            this.setCustomValidity("Enter a valid email address.");
	        } else {
	            this.setCustomValidity("");
	        }
	    });

    // Confirm before submission
    form.addEventListener("submit", function (e) {
        if (!confirm("Are you sure you want to create this account?")) {
            e.preventDefault();
        }
    });
});
/**
 * 
 */