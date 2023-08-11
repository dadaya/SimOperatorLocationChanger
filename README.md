# SimOperatorLocationChanger


[SimOperatorLocationChanger](https://github.com/westruk/SimOperatorLocationChanger/) with Magisk/KernelSU.

## How it works

This module will start a cron job to constantly update these properties using [resetprop](https://github.com/topjohnwu/Magisk/blob/master/docs/tools.md#resetprop):

- `[gsm.sim.operator.numeric]: [23402]`
- `[gsm.sim.operator.iso-country]: [gb]`
- `[gsm.sim.operator.alpha]: [O2]`
- `[gsm.operator.numeric]: [23402]`
- `[gsm.operator.iso-country]: [gb]`
- `[gsm.operator.alpha]: [O2]`

Also on first reboot after installation, data of the following packages will be cleared:

- `com.google.android.gms`
- `com.google.android.gsf`
