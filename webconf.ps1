$WebConfigFile = 'CWebApi\web.config'



$xml = [xml](Get-Content $WebConfigFile)



$Dictionary = @{

   
    
    PMMSAzureStorageAccount = 'ram';
    
    StorageConnectionString = 'raj';
    
    FtpServer= 'rrr';
    UserId= 'fff';
    PasswordKey= 'zzz';
     
      
}



foreach($key in $Dictionary.Keys)

{

    Write-Host "Locating key: '$key' in XML"

    if(($addKey = $xml.SelectSingleNode("//appSettings/add[@key = '$key']")))

    {

        Write-Host "Found key: '$key' in XML, updating value to $($Dictionary[$key])"

        $addKey.SetAttribute('value',$Dictionary[$key])
    }
   }
    $Dictionary = @{

   
    
    AzureStorageAccount = 'ram';
    
    StorageConnectionString = 'raj';
    
    FtpServer= 'rrr';
    UserId= 'fff';
    PasswordKey= 'zzz';
    
 
}



foreach($key in $Dictionary.Keys)

{

    Write-Host "Locating key: '$key' in XML"
	
	if(($addKey = $xml.SelectSingleNode("//DXXXX/ServerSetting/add[@key = '$key']")))
   {
        Write-Host "Found key: '$key' in XML, updating value to $($Dictionary[$key])"
        
        $addKey.SetAttribute('value',$Dictionary[$key])
    }
	}
	
	$Dictionary = @{

   
    
    PMMSAzureStorageAccount = 'ram';
    
    StorageConnectionString = 'raj';
    
    FtpServer= 'rrr';
    UserId= 'fff';
    PasswordKey= 'zzz';
    

    
}



foreach($key in $Dictionary.Keys)

{

    Write-Host "Locating key: '$key' in XML"

    if(($addKey = $xml.SelectSingleNode("//DKDLXXX/ServerSetting/add[@key = '$key']")))
   {
        Write-Host "Found key: '$key' in XML, updating value to $($Dictionary[$key])"
        
        $addKey.SetAttribute('value',$Dictionary[$key])
    }
}
	
	
	$Dictionary = @{

   
    
    PMMSAzureStorageAccount = 'ram';
    
    StorageConnectionString = 'raj';
    
    FtpServer= 'rrr';
    UserId= 'fff';
    PasswordKey= 'zzz';
    
   
}



foreach($key in $Dictionary.Keys)

{

    Write-Host "Locating key: '$key' in XML"

    if(($addKey = $xml.SelectSingleNode("//DKHXXXX/ServerSetting/add[@key = '$key']")))
    {
         Write-Host "Found key: '$key' in XML, updating value to $($Dictionary[$key])"
         
         $addKey.SetAttribute('value',$Dictionary[$key])
     }
    }
	 
	 $Dictionary = @{

   
    
    PMMSAzureStorageAccount = 'ram';
    
    StorageConnectionString = 'raj';
    
    FtpServer= 'rrr';
    UserId= 'fff';
    PasswordKey= 'zzz';
    
}



foreach($key in $Dictionary.Keys)

{

    Write-Host "Locating key: '$key' in XML"
	 

     if(($addKey = $xml.SelectSingleNode("//AEOLUS/ServerSetting/add[@key = '$key']")))
    {
         Write-Host "Found key: '$key' in XML, updating value to $($Dictionary[$key])"
         
         $addKey.SetAttribute('value',$Dictionary[$key])
     }
}



$xml.Save($WebConfigFile)
