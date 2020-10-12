function ADCompare ([System.DirectoryServices.ActiveDirectory.DirectoryServer] $domainController) {
    $domainName = $domainController.toString()
    $ActiveDirectory = Get-ActiveDirectory($domainName);
}
function ADCompare ([String] $domainController) {
    $ActiveDirectory = Get-ActiveDirectory($domainController);
}
function Get-ActiveDirectory([String]$domainName) {
    # Get-ADPrincipalGroupMembership https://docs.microsoft.com/en-us/powershell/module/addsadministration/get-adprincipalgroupmembership?view=win10-ps
    # Get-ADOrganizationalUnit https://docs.microsoft.com/en-us/powershell/module/addsadministration/get-adorganizationalunit?view=win10-ps
    # Get-ADGroupMember https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adgroupmember?view=winserver2012-ps
    # Get-DistributionGroup https://docs.microsoft.com/en-us/powershell/module/exchange/get-distributiongroup?view=exchange-ps
    # Get-ADPermission https://docs.microsoft.com/en-us/powershell/module/exchange/get-adpermission?view=exchange-ps
    # Get-ADUser https://docs.microsoft.com/en-us/powershell/module/addsadministration/Get-ADUser?view=win10-ps
    $Users = Get-ADUser -Filter * -Properties *
    $Users | 
        Select-Object -Properties "DistinguishedName","Enabled","GivenName","InnerDictionary","ModifiedProperties",
                                    "Name","ObjectClass","ObjectGuid","PropertyCount","PropertyNames",""
                                    "DistinguishedName","Enabled","GivenName","Name","ObjectClass","ObjectGuid","SamAccountName","SID","Surname","UserPrincipalName"
    # Get-ADObject https://docs.microsoft.com/en-us/powershell/module/addsadministration/Get-ADObject?view=win10-ps
    # Get-ADGroup https://docs.microsoft.com/en-us/powershell/module/addsadministration/Get-ADGroup?view=win10-ps
    # Get-ADComputer https://docs.microsoft.com/en-us/powershell/module/addsadministration/Get-ADComputer?view=win10-ps
    # Get-ADServiceAccount https://docs.microsoft.com/en-us/powershell/module/addsadministration/Get-ADServiceAccount?view=win10-ps
    # Get-ADAccountAuthorizationGroup https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adaccountauthorizationgroup?view=winserver2012-ps
    # Get-ADAccountResultantPasswordReplicationPolicy https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adaccountresultantpasswordreplicationpolicy?view=winserver2012-ps
    # Get-ADCentralAccessPolicy https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adcentralaccesspolicy?view=winserver2012-ps
    # Get-ADCentralAccessRule https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adcentralaccessrule?view=winserver2012-ps
    # Get-ADClaimTransformPolicy https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adclaimtransformpolicy?view=winserver2012-ps
    # Get-ADClaimType https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adclaimtype?view=winserver2012-ps
    # Get-ADComputerServiceAccount https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adcomputerserviceaccount?view=winserver2012-ps
    # Get-ADDCCloningExcludedApplicationList https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-addccloningexcludedapplicationlist?view=winserver2012-ps
    # Get-ADDefaultDomainPasswordPolicy https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-addefaultdomainpasswordpolicy?view=winserver2012-ps
    # Get-ADDomainControllerPasswordReplicationPolicy https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-addomaincontrollerpasswordreplicationpolicy?view=winserver2012-ps
    # Get-ADDomainControllerPasswordReplicationPolicyUsage https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-addomaincontrollerpasswordreplicationpolicyusage?view=winserver2012-ps
    # Get-ADFineGrainedPasswordPolicy https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adfinegrainedpasswordpolicy?view=winserver2012-ps
    # Get-ADFineGrainedPasswordPolicySubject https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adfinegrainedpasswordpolicysubject?view=winserver2012-ps
    # Get-ADOptionalFeature https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adoptionalfeature?view=winserver2012-ps
    # Get-ADReplicationAttributeMetadata https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationattributemetadata?view=winserver2012-ps
    # Get-ADReplicationConnection https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationconnection?view=winserver2012-ps
    # Get-ADReplicationFailure https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationfailure?view=winserver2012-ps
    # Get-ADReplicationPartnerMetadata https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationpartnermetadata?view=winserver2012-ps
    # Get-ADReplicationQueueOperation https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationqueueoperation?view=winserver2012-ps
    # Get-ADReplicationSite https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationsite?view=winserver2012-ps
    # Get-ADReplicationSiteLink https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationsitelink?view=winserver2012-ps
    # Get-ADReplicationSiteLinkBridge https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationsitelinkbridge?view=winserver2012-ps
    # Get-ADReplicationSubnet https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationsubnet?view=winserver2012-ps
    # Get-ADReplicationUpToDatenessVectorTable https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adreplicationuptodatenessvectortable?view=winserver2012-ps
    # Get-ADResourceProperty https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adresourceproperty?view=winserver2012-ps
    # Get-ADResourcePropertyList https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adresourcepropertylist?view=winserver2012-ps
    # Get-ADResourcePropertyValueType https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adresourcepropertyvaluetype?view=winserver2012-ps
    # Get-ADRootDSE https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adrootdse?view=winserver2012-ps
    # Get-ADTrust https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-adtrust?view=winserver2012-ps
    # Get-ADUserResultantPasswordPolicy https://docs.microsoft.com/en-us/powershell/module/activedirectory/get-aduserresultantpasswordpolicy?view=winserver2012-ps

}v