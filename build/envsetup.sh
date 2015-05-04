# slim functions that extend build/envsetup.sh

function slim_device_combos() {
    T="$(gettop)"
    list_file="${T}/vendor/slim/slim.devices"
    variant="userdebug"

    if [[ $1 ]]
    then
        if [[ $2 ]]
        then
            list_file="$1"
            variant="$2"
        else
            if [[ ${VARIANT_CHOICES[@]} =~ (^| )$1($| ) ]]
            then
                variant="$1"
            else
                list_file="$1"
            fi
        fi
    fi

    if [[ ! -f "${list_file}" ]]
    then
        echo "unable to find device list: ${list_file}"
        list_file="${T}/vendor/slim/slim.devices"
        echo "defaulting device list file to: ${list_file}"
    fi

    while IFS= read -r device
    do
        add_lunch_combo "slim_${device}-${variant}"
    done < "${list_file}"
}

function slim_rename_function() {
    eval "original_slim_$(declare -f ${1})"
}

function slim_add_hmm_entry() {
    f_name="${1}"
    f_desc="${2}"

    function _build_entry() {
        printf "%-8s %s" "${f_name}:" "${f_desc}"
    }

    for c in ${!HMM_DESCRIPTIVE[*]}
    do
        if [[ "${f_name}" == $(echo "${HMM_DESCRIPTIVE[$c]}" | cut -f1 -d":") ]]
        then
            HMM_DESCRIPTIVE[${c}]="$(_build_entry)"
            return
        fi
    done
    HMM_DESCRIPTIVE=(HMM_DESCRIPTIVE[@] "$(_build_entry)")
}

function slimremote()
{
    git remote rm slim 2> /dev/null
    PFX=""
    if [ ! -d .git ]
    then
        echo .git directory not found. Please run this from the root directory of the Android repository you wish to set up.
    else
    PROJ=`pwd -P | sed s#$ANDROID_BUILD_TOP/##g`

    if (echo $PROJ | egrep -q 'external|system|build|bionic|art|libcore|prebuilt|dalvik') ; then
        PFX="android_"
    fi

    PROJECT="$(echo $PROJ | sed 's/\//_/g')"

    git remote add slim git@github.com:SlimRoms/$PFX$PROJECT
    echo "Remote 'slim' created"
    fi
}

function cmremote()
{
    git remote rm cm 2> /dev/null
    if [ ! -d .git ]
    then
        echo .git directory not found. Please run this from the root directory of the Android repository you wish to set up.
    fi
    PROJECT=`pwd -P | sed s#$ANDROID_BUILD_TOP/##g`
    PFX="android_$(echo $PROJECT | sed 's/\//_/g')"
    git remote add cm git@github.com:CyanogenMod/$PFX
    echo "Remote 'cm' created"
}

function aospremote()
{
    git remote rm aosp 2> /dev/null
    if [ ! -d .git ]
    then
        echo .git directory not found. Please run this from the root directory of the Android repository you wish to set up.
    fi
    PROJECT=`pwd -P | sed s#$ANDROID_BUILD_TOP/##g`
    if (echo $PROJECT | grep -qv "^device")
    then
        PFX="platform/"
    fi
    git remote add aosp https://android.googlesource.com/$PFX$PROJECT
    echo "Remote 'aosp' created"
}

function cafremote()
{
    git remote rm caf 2> /dev/null
    if [ ! -d .git ]
    then
        echo .git directory not found. Please run this from the root directory of the Android repository you wish to set up.
    fi
    PROJECT=`pwd -P | sed s#$ANDROID_BUILD_TOP/##g`
    if (echo $PROJECT | grep -qv "^device")
    then
        PFX="platform/"
    fi
    git remote add caf git://codeaurora.org/$PFX$PROJECT
    echo "Remote 'caf' created"
}
