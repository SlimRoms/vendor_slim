cur_dir="$(gettop)/vendor/slim"

list_files=(${cur_dir}/slim.devices)
variants=(userdebug)
[[ ${CUSTOM_DEVICE_LIST} ]] && list_files=(${CUSTOM_DEVICE_LIST})
[[ ${CUSTOM_VARIANTS} ]] && variants=(${CUSTOM_VARIANTS})

for list_file in "${list_files[@]}"
do
    if [[ -f "${list_file}" ]]
    then
        while IFS= read -r device
        do
            for variant in "${variants[@]}"
            do
                add_lunch_combo "slim_${device}-${variant}"
            done
        done < "${list_file}"
    fi
done

