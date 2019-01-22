/*global ResourceRequest _config*/

var ResourceRequest = window.ResourceRequest || {};

(function reqEC2ScopeWrapper($) {

    var authToken;
    ResourceRequest.authToken.then(function setAuthToken(token) {
        if (token) {
            authToken = token;
        } else {
            window.location.href = 'signin.html';
        }
    }).catch(function handleTokenError(error) {
        alert(error);
        window.location.href = 'signin.html';
    });


    // Retrieve user resources , stacks created by the user
    function getUserAWSResources() {
        //alert(authToken);
        $.ajax({
            method: 'GET',
            url: _config.api.invokeUrl + '/ec2s',
            headers: {
                Authorization: authToken
            },
            contentType: 'application/json',
            success: function (result){alert(result);} ,
            error: function ajaxError(jqXHR, textStatus, errorThrown) {
                console.error('Error requesting a resource: ', textStatus, ', Details: ', errorThrown);
                console.error('Response: ', jqXHR.responseText);
                alert('An error occured when requesting resources:\n' + jqXHR.responseText);
            }
        });
    }
    
    // Register click handler for #request button
    $(function onDocReady() {
        getUserAWSResources();
        // Get and populate the user created resources
        //$('#listEC2s').click(handleListEC2Click);

    });

    function handleListEC2Click(event) {
        getUserAWSResources();
    }


}(jQuery));




