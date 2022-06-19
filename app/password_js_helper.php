<script>
function changeTitleOfImageUploader(photoElem) {
    if(fileValidation(photoElem)){
        var fileName = $(photoElem).val().replace(/C:\\fakepath\\/i, '');
        $(photoElem).siblings('label').text(ellipsis(fileName));
    }else{
        $(photoElem).siblings('label').text(ellipsis('Choose file'));
        warning_notif("Select Image file!");
         photoElem.value="";
    }
}

function password_show_hide(elm_id) {
  var x = document.getElementById(elm_id);
  if(x){
	  var show_eye = document.getElementById("show_eye_"+elm_id);
	  var hide_eye = document.getElementById("hide_eye_"+elm_id);
	  hide_eye.classList.remove("d-none");
	  if (x.type === "password") {
		x.type = "text";
		show_eye.style.display = "none";
		hide_eye.style.display = "block";
	  } else {
		x.type = "password";
		show_eye.style.display = "block";
		hide_eye.style.display = "none";
	  }
  }
}

if (typeof jQuery === 'undefined') {
  throw new Error('PassRequirements requires jQuery')
}

(function ($) {

    $.fn.PassRequirements = function (options) {

        /*
         * TODO
         * ====
         * 
         * store regexes in variables so they can be used by users through string 
         * specifications,ex 'number', 'special', etc
         * 
         */

        var defaults = {
//            defaults: true
        };
        
        if(
            !options ||                     //if no options are passed                                  /*
            options.defaults == true ||     //if default option is passed with defaults set to true      * Extend options with default ones
            options.defaults == undefined   //if options are passed but defaults is not passed           */
        ){
            if(!options){                   //if no options are passed, 
                options = {};               //create an options object
            }
            defaults.rules = $.extend(<?php echo $password_complexity;?>, options.rules);
        }else{
            defaults = options;     //if options are passed with defaults === false
        }
        

        
        var i = 0;

        return this.each(function () {
            
            if(!defaults.defaults && !defaults.rules){
                console.error('You must pass in your rules if defaults is set to false. Skipping this input with id:[' + this.id + '] with class:[' + this.classList + ']');
                return false;
            }
            
            var requirementList = "";
            $(this).data('pass-req-id', i++);

            $(this).keyup(function () {
                var this_ = $(this);
                Object.getOwnPropertyNames(defaults.rules).forEach(function (val, idx, array) {
                    if (this_.val().replace(defaults.rules[val].regex, "").length > defaults.rules[val].minLength - 1) {
						var popover_id= "#"+ this_.attr('aria-describedby');
						$(popover_id).find('#' + val).css('text-decoration','line-through');
                    } else {
						var popover_id= "#"+ this_.attr('aria-describedby');
						$(popover_id).find('#' + val).css('text-decoration','none');
                    }

                })
            });

            Object.getOwnPropertyNames(defaults.rules).forEach(function (val, idx, array) {
                requirementList += (("<li id='" + val + "'>" + defaults.rules[val].text).replace("minLength", defaults.rules[val].minLength));
            })
            try{
            $(this).popover({
                title: 'Password Requirements',
                trigger: options.trigger ? options.trigger : 'focus',
                html: true,
                placement: options.popoverPlacement ? options.popoverPlacement : 'bottom',
                content: 'Your password should:<ul>' + requirementList + '</ul>'
				
                    //                        '<p>The confirm field is actived only if all criteria are met</p>'
            });
            }catch(e){
                throw new Error('PassRequirements requires Bootstraps Popover plugin');
            }
            $(this).focus(function () {
                $(this).keyup();
            });
        });
    };

}(jQuery));

 var validator_password = new FormValidator('update_password_form', <?php echo $update_password_form_js_field; ?> , function(errors,fields, event) { 
	
		
		var regex = <?php echo $password_complexity.";";?>
	
		var error =false;
		if(document.getElementById('new_password')){
			var new_password = document.getElementById('new_password').value;
			
			var error_msg_pass  ="";
					forEach(regex,function(val,i){
						
						if(i == "minlength"){
							if (new_password.length <= val.minLength-1  ){
								error = true;
								error_msg_pass += val['text'].replace("minLength", val.minLength )+"<br>";
							}
						}else{
							if ( new_password.replace(val['regex'], "").length > val.minLength - 1 ) {
									//console.log("checking");
							} else {
								error = true;
								error_msg_pass += val['text'].replace("minLength", val.minLength ) +"<br>";
							}
						}
					});
		}else{
			error = true;
			document.getElementById('password_form_msg').innerHTML = "";
			addClass(document.getElementById('password_form_msg'),'alert-warning');
			document.getElementById('password_form_msg').innerHTML = "New password is Required!";
			return false;
		}
	

	if(error){
		document.getElementById('password_form_msg').innerHTML = "";
		document.getElementById('password_form_msg').innerHTML = error_msg_pass;
		addClass(document.getElementById('password_form_msg'),'alert-warning');
		event.preventDefault();
	}else if(document.getElementById('new_password').value != document.getElementById('confirm_password').value){
        document.getElementById('password_form_msg').innerHTML = "";
        document.getElementById('password_form_msg').innerHTML = "New password and Confirm password doesn't matched";
		addClass(document.getElementById('password_form_msg'),'alert-warning');
        event.preventDefault();
    }else  if (errors.length > 0) {
        var errorString = '';
        for (var i = 0, errorLength = errors.length; i < errorLength; i++) {
            errorString += errors[i].message + '<br />';
        }
        document.getElementById('password_form_msg').innerHTML = "";
        document.getElementById('password_form_msg').innerHTML = errorString;
		addClass(document.getElementById('password_form_msg'),'alert-warning');
		event.preventDefault();
    }else{ 
        return true;        
    }
	
		//return false;
},false); 



function fileValidation(photoElem) { 
    var fileInput = photoElem;
    var filePath = photoElem.value;  
    var allowedExtensions =   /(\.jpg|\.jpeg|\.png|\.gif)$/i;
    if (!allowedExtensions.exec(filePath)) { 
        return false; 
    }else{ 
      return true;
    } 
} 

</script>