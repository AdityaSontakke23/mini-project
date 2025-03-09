document.addEventListener("DOMContentLoaded", function () {
    const steps = document.querySelectorAll(".form-step");
    let currentStep = 0;
  
    // Show the first step
    steps[currentStep].classList.remove("d-none");
    steps[currentStep].classList.add("active");
  
    const nextBtns = document.querySelectorAll(".next-btn");
    const prevBtns = document.querySelectorAll(".prev-btn");
  
    nextBtns.forEach((btn) => {
      btn.addEventListener("click", () => {
        // Validate the current step using HTML5 validations
        const currentFieldset = steps[currentStep];
        if (!currentFieldset.checkValidity()) {
          currentFieldset.reportValidity();
          return;
        }
        // Move to the next step
        currentFieldset.classList.add("d-none");
        currentFieldset.classList.remove("active");
        currentStep++;
        steps[currentStep].classList.remove("d-none");
        steps[currentStep].classList.add("active");
        updateProgressBar();
      });
    });
  
    prevBtns.forEach((btn) => {
      btn.addEventListener("click", () => {
        steps[currentStep].classList.add("d-none");
        steps[currentStep].classList.remove("active");
        currentStep--;
        steps[currentStep].classList.remove("d-none");
        steps[currentStep].classList.add("active");
        updateProgressBar();
      });
    });
  
    function updateProgressBar() {
      const progressBarFill = document.getElementById("progressBarFill");
      const totalSteps = steps.length;
      const percent = ((currentStep + 1) / totalSteps) * 100;
      progressBarFill.style.width = percent + "%";
      progressBarFill.textContent = "Step " + (currentStep + 1) + " of " + totalSteps;
    }
  });
  