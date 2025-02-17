document.addEventListener("DOMContentLoaded", function () {
    const signupForm = document.getElementById("signup-form");

    signupForm.addEventListener("submit", function (e) {
        e.preventDefault();

        const name = document.getElementById("name").value;
        const email = document.getElementById("email").value;
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("confirm-password").value;

        if (password !== confirmPassword) {
            alert("Passwords do not match. Please try again.");
            return;
        }

        if (name && email && password) {
            alert("Account created successfully!");
            // Here, you would typically handle form submission (e.g., sending data to a server)
            // For now, just clear the form
            signupForm.reset();
        } else {
            alert("Please fill in all fields.");
        }
    });
});
