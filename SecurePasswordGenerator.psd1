@{
    # Script module or binary module file associated with this manifest.
    RootModule = 'SecurePasswordGenerator.psm1'
    
    # Version number of this module.
    ModuleVersion = '1.0.0'
    
    # ID used to uniquely identify this module
    GUID = 'e7e5d9ae-473b-4147-b8a4-61a29b7267f3'
    
    # Author of this module
    Author = 'Siamak Haj Azim Zanjani'
        
    # Copyright statement for this module
    Copyright = '(c) 2024 Siamak Haj Azim Zanjani. All rights reserved.'
    
    # Description of the functionality provided by this module
    Description = 'A module to generate secure passwords.'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.1'
    
    # Functions to export from this module
    FunctionsToExport = @('New-SecurePassword')
    
    # Cmdlets to export from this module
    CmdletsToExport = @()
    
    # Variables to export from this module
    VariablesToExport = @()
    
    # Aliases to export from this module
    AliasesToExport = @()
    
    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @()
    
    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module
    ScriptsToProcess = @()
    
    # Types files (.ps1xml) to be loaded when importing this module
    TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @()
    
    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules = @()
    
    # DSC resources to export from this module
    DscResourcesToExport = @()
    
    # List of modules packaged with this module
    FileList = @()
    
    # Private data to pass to the module specified in RootModule/ModuleToProcess
    PrivateData = @{
    }
}
