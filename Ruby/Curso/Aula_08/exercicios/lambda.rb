def capitalize_name(lambda_capitalize)
 lambda_capitalize.call('marshal')
 lambda_capitalize.call('jane')
end
 
lambda_capitalize = -> (name) { puts name.capitalize }
 
capitalize_name(lambda_capitalize)