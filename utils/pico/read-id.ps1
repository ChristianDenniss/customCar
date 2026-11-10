# read unique id from a pico in BOOTSEL (RPI-RP2) or running as USB device
# plug ONE pico at a time, then run:
#   powershell -ExecutionPolicy Bypass -File utils/pico/read-id.ps1

$devs = Get-CimInstance Win32_PnPEntity | Where-Object {
  $_.PNPDeviceID -match 'VID_2E8A'
}

if (-not $devs) {
  Write-Host "no pico / rp2 usb device found. hold BOOTSEL, plug in ONE board, run again."
  exit 1
}

foreach ($d in $devs) {
  $id = $d.PNPDeviceID
  # USB\VID_2E8A&PID_xxxx\SERIAL
  $serial = ($id -split '\\')[-1]
  Write-Host "name:   $($d.Name)"
  Write-Host "path:   $id"
  Write-Host "serial: $serial"
  Write-Host "---"
}
