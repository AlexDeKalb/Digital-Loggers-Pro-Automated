plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet enable ether2; interface ethernet disable ether3; interface ethernet disable ether4; interface ethernet disable ether5; interface ethernet disable ether6; interface ethernet disable ether7; interface ethernet disable ether8; interface ethernet disable sfp9; interface ethernet disable sfp10; interface ethernet disable sfp11; interface ethernet disable sfp12; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/" 
timeout /T 5 /NOBREAK
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable ether2; interface ethernet enable ether3; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/"
timeout /T 5 /NOBREAK 
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable ether3; interface ethernet enable ether4; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/"
timeout /T 5 /NOBREAK 
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable ether4; interface ethernet enable ether5; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/" 
timeout /T 5 /NOBREAK
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable ether5; interface ethernet enable ether6; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/" 
timeout /T 5 /NOBREAK
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable ether6; interface ethernet enable ether7; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/"
timeout /T 5 /NOBREAK 
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable ether7; interface ethernet enable ether8; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/" 
timeout /T 5 /NOBREAK
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable ether8; interface ethernet enable sfp9; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/"
timeout /T 5 /NOBREAK 
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable sfp9; interface ethernet enable sfp10; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/" 
timeout /T 5 /NOBREAK
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable sfp10; interface ethernet enable sfp11; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/" 
timeout /T 5 /NOBREAK
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK
plink.exe -ssh -batch admin@192.168.0.99 "interface ethernet disable sfp11; interface ethernet enable sfp12; quit"

timeout /T 45 /NOBREAK

curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/relay/outlets/all;/state/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=0" "http://192.168.0.100/restapi/config/lockout_delay_minutes/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=1" "http://192.168.0.100/restapi/relay/cycle_delay/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=2" "http://192.168.0.100/restapi/relay/recovery_mode/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=true" "http://192.168.0.100/restapi/config/allow_plaintext_logins/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/relay/keypad_enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/wireless/enabled/" 
curl --digest -u admin:1234 -X PUT -H "X-CSRF: x" --data "value=false" "http://192.168.0.100/restapi/network/same_subnet_only/" 
timeout /T 5 /NOBREAK
curl -H "Accept: application/json" -H "Prefer: return=representation" -H "X-CSRF: x" -X PATCH --data "old_password=1234&new_password=admin" --digest "http://admin:1234@192.168.0.100/restapi/auth/users/is_admin=true/"
curl --digest -u admin:admin -X PUT -H "X-CSRF: x" --data "value=dhcp" "http://192.168.0.100/restapi/network/wired/protocol/" 
timeout /T 5 /NOBREAK


