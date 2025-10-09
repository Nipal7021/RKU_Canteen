// Form Validation JavaScript
// Contains only validation functions for forms

document.addEventListener('DOMContentLoaded', function() {
    setupFormValidation();
});

// Setup validation for all forms
function setupFormValidation() {
    // Login form validation
    const loginForm = document.getElementById('user-login-form');
    if (loginForm) {
        setupLoginValidation(loginForm);
    }
    
    // Register form validation
    const registerForm = document.getElementById('user-register-form');
    if (registerForm) {
        setupRegisterValidation(registerForm);
    }
    
    // Contact form validation
    const contactForm = document.getElementById('contact-form');
    if (contactForm) {
        setupContactValidation(contactForm);
    }
    
    // Checkout form validation
    const checkoutForm = document.getElementById('checkout-form');
    if (checkoutForm) {
        setupCheckoutValidation(checkoutForm);
    }
    
    // Admin login form validation
    const adminLoginForm = document.getElementById('admin-login-form');
    if (adminLoginForm) {
        setupAdminLoginValidation(adminLoginForm);
    }
}

// Login form validation
function setupLoginValidation(form) {
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const email = document.getElementById('user-email');
        const password = document.getElementById('user-password');
        
        let isValid = true;
        
        // Email validation
        if (!validateEmail(email.value)) {
            showFieldError(email, 'Please enter a valid email address');
            isValid = false;
        } else {
            clearFieldError(email);
        }
        
        // Password validation
        if (!validateRequired(password.value)) {
            showFieldError(password, 'Password is required');
            isValid = false;
        } else {
            clearFieldError(password);
        }
        
        if (isValid) {
            showValidationMessage('Form validation passed', 'success');
        }
    });
}

// Register form validation
function setupRegisterValidation(form) {
    const passwordInput = document.getElementById('register-password');
    if (passwordInput) {
        passwordInput.addEventListener('input', checkPasswordStrength);
    }
    
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const firstName = document.getElementById('register-firstName') || form.querySelector('[name="firstName"]');
        const lastName = document.getElementById('register-lastName') || form.querySelector('[name="lastName"]');
        const email = document.getElementById('register-email') || form.querySelector('[name="email"]');
        const phone = document.getElementById('register-phone') || form.querySelector('[name="phone"]');
        const password = document.getElementById('register-password') || form.querySelector('[name="password"]');
        const confirmPassword = document.getElementById('register-confirmPassword') || form.querySelector('[name="confirmPassword"]');
        
        let isValid = true;
        
        // First name validation
        if (firstName && !validateRequired(firstName.value)) {
            showFieldError(firstName, 'First name is required');
            isValid = false;
        } else if (firstName) {
            clearFieldError(firstName);
        }
        
        // Last name validation
        if (lastName && !validateRequired(lastName.value)) {
            showFieldError(lastName, 'Last name is required');
            isValid = false;
        } else if (lastName) {
            clearFieldError(lastName);
        }
        
        // Email validation
        if (email && !validateEmail(email.value)) {
            showFieldError(email, 'Please enter a valid email address');
            isValid = false;
        } else if (email) {
            clearFieldError(email);
        }
        
        // Phone validation
        if (phone && !validatePhone(phone.value)) {
            showFieldError(phone, 'Please enter a valid phone number');
            isValid = false;
        } else if (phone) {
            clearFieldError(phone);
        }
        
        // Password validation
        if (password && !isPasswordStrong(password.value)) {
            showFieldError(password, 'Password must be at least 8 characters with uppercase, lowercase, and number');
            isValid = false;
        } else if (password) {
            clearFieldError(password);
        }
        
        // Confirm password validation
        if (confirmPassword && password && confirmPassword.value !== password.value) {
            showFieldError(confirmPassword, 'Passwords do not match');
            isValid = false;
        } else if (confirmPassword) {
            clearFieldError(confirmPassword);
        }
        
        if (isValid) {
            showValidationMessage('Registration form validation passed', 'success');
        }
    });
}

// Contact form validation
function setupContactValidation(form) {
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const name = form.querySelector('[name="name"]');
        const email = form.querySelector('[name="email"]');
        const message = form.querySelector('[name="message"]');
        
        let isValid = true;
        
        if (name && !validateRequired(name.value)) {
            showFieldError(name, 'Name is required');
            isValid = false;
        } else if (name) {
            clearFieldError(name);
        }
        
        if (email && !validateEmail(email.value)) {
            showFieldError(email, 'Please enter a valid email address');
            isValid = false;
        } else if (email) {
            clearFieldError(email);
        }
        
        if (message && !validateRequired(message.value)) {
            showFieldError(message, 'Message is required');
            isValid = false;
        } else if (message) {
            clearFieldError(message);
        }
        
        if (isValid) {
            showValidationMessage('Contact form validation passed', 'success');
        }
    });
}

// Checkout form validation
function setupCheckoutValidation(form) {
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const requiredFields = form.querySelectorAll('[required]');
        let isValid = true;
        
        requiredFields.forEach(field => {
            if (!validateRequired(field.value)) {
                showFieldError(field, `${getFieldLabel(field)} is required`);
                isValid = false;
            } else {
                clearFieldError(field);
            }
            
            // Specific validations
            if (field.type === 'email' && field.value && !validateEmail(field.value)) {
                showFieldError(field, 'Please enter a valid email address');
                isValid = false;
            }
            
            if (field.type === 'tel' && field.value && !validatePhone(field.value)) {
                showFieldError(field, 'Please enter a valid phone number');
                isValid = false;
            }
        });
        
        if (isValid) {
            showValidationMessage('Checkout form validation passed', 'success');
        }
    });
}

// Admin login form validation
function setupAdminLoginValidation(form) {
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const username = document.getElementById('admin-username');
        const password = document.getElementById('admin-password');
        
        let isValid = true;
        
        if (!validateRequired(username.value)) {
            showFieldError(username, 'Username is required');
            isValid = false;
        } else {
            clearFieldError(username);
        }
        
        if (!validateRequired(password.value)) {
            showFieldError(password, 'Password is required');
            isValid = false;
        } else {
            clearFieldError(password);
        }
        
        if (isValid) {
            showValidationMessage('Admin login validation passed', 'success');
        }
    });
}

// Validation helper functions
function validateRequired(value) {
    return value && value.trim().length > 0;
}

function validateEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

function validatePhone(phone) {
    const phoneRegex = /^[\d\s\-\+\(\)]{10,}$/;
    return phoneRegex.test(phone);
}

function isPasswordStrong(password) {
    return password.length >= 8 && 
           /[a-z]/.test(password) && 
           /[A-Z]/.test(password) && 
           /[0-9]/.test(password);
}

// Password strength checker
function checkPasswordStrength() {
    const password = document.getElementById('register-password').value;
    const strengthBar = document.querySelector('.strength-fill');
    const strengthText = document.querySelector('.strength-text');
    
    if (!strengthBar || !strengthText) return;
    
    let strength = 0;
    let strengthLabel = 'Weak';
    let color = '#ef4444';
    
    if (password.length >= 8) strength += 25;
    if (/[a-z]/.test(password)) strength += 25;
    if (/[A-Z]/.test(password)) strength += 25;
    if (/[0-9]/.test(password)) strength += 25;
    
    if (strength >= 75) {
        strengthLabel = 'Strong';
        color = '#22c55e';
    } else if (strength >= 50) {
        strengthLabel = 'Medium';
        color = '#fbbf24';
    }
    
    strengthBar.style.width = strength + '%';
    strengthBar.style.backgroundColor = color;
    strengthText.textContent = `Password strength: ${strengthLabel}`;
}

// Toggle password visibility
function togglePassword(inputId) {
    const input = document.getElementById(inputId);
    const button = input.parentElement.querySelector('.password-toggle i');
    
    if (input.type === 'password') {
        input.type = 'text';
        button.className = 'fas fa-eye-slash';
    } else {
        input.type = 'password';
        button.className = 'fas fa-eye';
    }
}

// Error display functions
function showFieldError(field, message) {
    clearFieldError(field);
    
    const errorDiv = document.createElement('div');
    errorDiv.className = 'field-error';
    errorDiv.textContent = message;
    errorDiv.style.cssText = `
        color: #ef4444;
        font-size: 0.875rem;
        margin-top: 0.25rem;
    `;
    
    field.style.borderColor = '#ef4444';
    field.parentNode.appendChild(errorDiv);
}

function clearFieldError(field) {
    const existingError = field.parentNode.querySelector('.field-error');
    if (existingError) {
        existingError.remove();
    }
    field.style.borderColor = '';
}

function getFieldLabel(field) {
    const label = field.parentNode.querySelector('label');
    if (label) {
        return label.textContent.replace('*', '').trim();
    }
    return field.name || field.id || 'Field';
}

// Simple validation message display
function showValidationMessage(message, type = 'info') {
    const existingMessage = document.querySelector('.validation-message');
    if (existingMessage) {
        existingMessage.remove();
    }
    
    const messageDiv = document.createElement('div');
    messageDiv.className = 'validation-message';
    messageDiv.textContent = message;
    messageDiv.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        background: ${type === 'success' ? '#22c55e' : type === 'error' ? '#ef4444' : '#3b82f6'};
        color: white;
        padding: 1rem 1.5rem;
        border-radius: 0.5rem;
        box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        z-index: 1000;
        animation: slideIn 0.3s ease;
    `;
    
    document.body.appendChild(messageDiv);
    
    setTimeout(() => {
        if (messageDiv.parentElement) {
            messageDiv.remove();
        }
    }, 3000);
}

// Add CSS for animations
const style = document.createElement('style');
style.textContent = `
    @keyframes slideIn {
        from {
            transform: translateX(100%);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }
`;
document.head.appendChild(style);

// Make functions available globally for onclick handlers
window.togglePassword = togglePassword;
