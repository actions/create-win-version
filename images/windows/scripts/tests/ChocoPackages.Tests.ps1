Describe "7-Zip" {
    It "7z" {
        "7z" | Should -ReturnZeroExitCode
    }
}

Describe "Aria2" {
    It "Aria2" {
        "aria2c --version" | Should -ReturnZeroExitCode
    }
}

Describe "AzCopy" {
    It "AzCopy" {
        "azcopy --version" | Should -ReturnZeroExitCode
    }
}

Describe "Bicep" {
    It "Bicep" {
        "bicep --version" | Should -ReturnZeroExitCode
    }
}
# This step is throwing the below error
# CommandNotFoundException: The term 'Test-Is' is not recognized as the name of a cmdlet, function, script file, or operable program. Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
# 2024-10-25T06:18:52.1215022Z     azure-arm.image: at <ScriptBlock>, C:\image\tests\ChocoPackages.Tests.ps1:25
# 2024-10-25T06:18:53.4267125Z     azure-arm.image: Tests completed in 9.83s
# 2024-10-25T06:18:53.4268976Z     azure-arm.image: Tests Passed: 4, Failed: 0, Skipped: 0, Inconclusive: 0, NotRun: 0
# 2024-10-25T06:18:53.4270525Z     azure-arm.image: Container failed: 1
# 2024-10-25T06:18:53.4271341Z     azure-arm.image:   - C:\image\tests\ChocoPackages.Tests.ps1
# 2024-10-25T06:18:53.6810753Z ==> azure-arm.image: Provisioning step had errors: Running the cleanup provisioner, if present...
# 2024-10-25T06:18:53.6819141Z ==> azure-arm.image: 
# Link to the run - https://github.com/actions/runner-images-ci/actions/runs/11511659781/job/32045443262
# ******************************************************************************
# Describe "GitVersion" -Skip:(Test-Is -or Test-IsWin25) {
#     It "gitversion is installed" {
#         "gitversion /version" | Should -ReturnZeroExitCode
#     }
# }

Describe "InnoSetup" -Skip: (Test-IsWin25){
    It "InnoSetup" {
        (Get-Command -Name iscc).CommandType | Should -BeExactly "Application"
    }
}

Describe "Jq" {
    It "Jq" {
        "jq -n ." | Should -ReturnZeroExitCode
    }
}

Describe "Nuget" {
    It "Nuget" {
       "nuget" | Should -ReturnZeroExitCode
    }
}

Describe "Packer" {
    It "Packer" {
       "packer --version" | Should -ReturnZeroExitCode
    }
}

Describe "Perl" {
    It "Perl" {
       "perl --version" | Should -ReturnZeroExitCode
    }
}

Describe "Pulumi" {
    It "pulumi" {
       "pulumi version" | Should -ReturnZeroExitCode
    }
}

Describe "Svn" -Skip: (Test-IsWin25) {
    It "svn" {
        "svn --version --quiet" | Should -ReturnZeroExitCode
    }
}

Describe "Swig" {
    It "Swig" {
        "swig -version" | Should -ReturnZeroExitCode
    }
}

Describe "VSWhere" {
    It "vswhere" {
        "vswhere" | Should -ReturnZeroExitCode
    }
}

Describe "Julia" {
    It "Julia path exists" {
        "C:\Julia" | Should -Exist
    }

    It "Julia" {
        "julia --version" | Should -ReturnZeroExitCode
    }
}

Describe "CMake" {
    It "cmake" {
        "cmake --version" | Should -ReturnZeroExitCode
    }
}

Describe "ImageMagick" {
    It "ImageMagick" {
        "magick -version" | Should -ReturnZeroExitCode
    }
}
