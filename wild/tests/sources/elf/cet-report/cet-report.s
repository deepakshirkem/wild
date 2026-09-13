# Test -z force-ibt and -z cet-report flags for CET property reporting.
# CET (Control-flow Enforcement Technology) is x86-64 specific.
//#AbstractConfig:default
//#Arch:x86_64
//#Mode:static
//#ReferenceLinkers:
//#RunEnabled:false

//#Config:force-ibt:default
//#WildExtraLinkArgs:-z force-ibt
//#ExpectWarningWild:.*: -z force-ibt: file does not have GNU_PROPERTY_X86_FEATURE_1_IBT property

//#Config:cet-report-warning:default
//#WildExtraLinkArgs:-z cet-report=warning
//#ExpectWarningWild:.*: -z cet-report: file does not have GNU_PROPERTY_X86_FEATURE_1_IBT property
//#ExpectWarningWild:.*: -z cet-report: file does not have GNU_PROPERTY_X86_FEATURE_1_SHSTK property

//#Config:cet-report-error:default
//#WildExtraLinkArgs:-z cet-report=error
//#ExpectErrorWild:.*: -z cet-report: file does not have GNU_PROPERTY_X86_FEATURE_1_IBT property

//#Config:cet-report-none:default
//#WildExtraLinkArgs:-z cet-report=none

//#Config:cet-report-invalid:default
//#WildExtraLinkArgs:-z cet-report=invalid
//#ExpectErrorWild:unknown -z cet-report= value 'invalid'

.globl _start
_start:
  ret
