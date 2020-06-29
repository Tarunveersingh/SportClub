//for gallery
$(document).ready(function(){

    $(".filter-button").click(function(){
        var value = $(this).attr('data-filter');
        
        if(value == "all")
        {
            //$('.filter').removeClass('hidden');
            $('.filter').show('1000');
        }
        else
        {
//            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
//            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            $(".filter").not('.'+value).hide('3000');
            $('.filter').filter('.'+value).show('3000');
            
        }
    });
    
    

});



// Defining a function to display error message
function printError(elemId, hintMsg) {
    document.getElementById(elemId).innerHTML = hintMsg;
}

function validateForm() {
    // Retrieving the values of form elements 
    var name = document.contactForm.name.value;
    var email = document.contactForm.email.value;
    var subject = document.contactForm.sub.value;
    var message = document.contactForm.message.value;
   
   
    // Defining error variables with a default value
    var nameErr = emailErr = subErr = messageErr = true;
    
    // Validate name
    if(name == "") {
        printError("nameErr", "Please enter your name");
    } else {
        var regex = /^[a-zA-Z\s]+$/;                
        if(regex.test(name) === false) {
            printError("nameErr", "Please enter a valid name");
        } else {
            printError("nameErr", "");
            nameErr = false;
        }
    }
    
    // Validate email address
    if(email == "") {
        printError("emailErr", "Please enter your email address");
    } else {
        // Regular expression for basic email validation
        var regex = /^\S+@\S+\.\S+$/;
        if(regex.test(email) === false) {
            printError("emailErr", "Please enter a valid email address");
        } else{
            printError("emailErr", "");
            emailErr = false;
        }
    }
    
    // Validate Subject
    if(subject == "") {
        printError("subErr", "Please enter your Subject");
    } 
    else{
            printError("subErr", "");
            messageErr = false;
        }
    
    
    // Validate Message
    if(message == "") {
        printError("messageErr", "Please enter your Message");
    } 
    else{
            printError("messageErr", "");
            messageErr = false;
        }
    
    
    // Prevent the form from being submitted if there are any errors
    if((nameErr || emailErr || subErr || messageErr) == true) {
       return false;
    } else {
        // Creating a string from input data for preview
        var dataPreview = "You've entered the following details: \n" +
                          "Full Name: " + name + "\n" +
                          "Email Address: " + email + "\n" +
                          "Persons: " + subject + "\n" +
                          "Message: " + message + "\n"+
                          "Message Send Successfully";
                          
        // Display input data in a dialog box before submitting the form
        alert(dataPreview);
    }
};
