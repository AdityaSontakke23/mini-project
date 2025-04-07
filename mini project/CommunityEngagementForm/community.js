function validateStep(step) {
    const errorDiv = document.getElementById("formError");
    errorDiv.classList.add("d-none");
    errorDiv.textContent = "";

    const inputs = step.querySelectorAll("input, select, textarea");

    for (const input of inputs) {
        if (input.type === "radio") {
            const name = input.name;
            const radios = step.querySelectorAll(`input[name="${name}"]`);
            if (![...radios].some(radio => radio.checked)) {
                errorDiv.textContent = "Please select an option before proceeding.";
                errorDiv.classList.remove("d-none");
                return false;
            }
        }

        if (input.type === "email") {
            const emailPattern = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+$/;
            const invalidChars = /[!#$%^&*(),?":{}|<>]/;
            if (!emailPattern.test(input.value) || invalidChars.test(input.value)) {
                errorDiv.textContent = "Please enter a valid email in the format 'example@domain.com' without special characters.";
                errorDiv.classList.remove("d-none");
                return false;
            }
        }

        if (input.name === "phone" && input.value !== "") {
            if (!/^\d{10}$/.test(input.value)) {
                errorDiv.textContent = "Phone number must be exactly 10 digits.";
                errorDiv.classList.remove("d-none");
                return false;
            }
        }

        if (!input.checkValidity()) {
            input.reportValidity();
            return false;
        }
    }

    return true;
}
