document.addEventListener("DOMContentLoaded", function () {
    const startDateInput = document.querySelector("input[name='startDate']");
    const endDateInput = document.querySelector("input[name='endDate']");
    const form = document.querySelector("form");

    // Set today's date as minimum for both date inputs
    const today = new Date().toISOString().split("T")[0];
    startDateInput.setAttribute("min", today);
    endDateInput.setAttribute("min", today);

    // Validate end date >= start date
    function validateDates() {
        const startDate = new Date(startDateInput.value);
        const endDate = new Date(endDateInput.value);

        if (endDateInput.value && endDate < startDate) {
            endDateInput.setCustomValidity("End date cannot be before start date.");
        } else {
            endDateInput.setCustomValidity("");
        }
    }

    startDateInput.addEventListener("change", validateDates);
    endDateInput.addEventListener("change", validateDates);

    // Confirm before form submission
    form.addEventListener("submit", function (e) {
        if (!confirm("Are you sure you want to apply for leave with the entered details?")) {
            e.preventDefault();
        }
    });
});
