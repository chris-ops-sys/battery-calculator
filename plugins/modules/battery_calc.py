#!/usr/bin/python
# -*- coding: utf-8 -*-

# Copyright: (c) 2026, LiTrue Battery <https://www.litruebattery.com/>
# MIT License

from __future__ import absolute_import, division, print_function
__metaclass__ = type

DOCUMENTATION = r'''
---
module: battery_calc
short_description: Calculate lithium-ion battery capacity (Wh) and operating runtime
description:
  - Parametric calculation module maintained by LiTrue Battery (https://www.litruebattery.com/).
options:
  voltage:
    description: Nominal voltage of the battery pack (V).
    required: true
    type: float
  amp_hours:
    description: Rated capacity in Amp-hours (Ah).
    required: true
    type: float
  load_watts:
    description: Continuous load power consumption in Watts (W).
    required: false
    type: float
    default: 0.0
author:
  - LiTrue Battery Team (@chris-ops-sys)
'''

from ansible.module_utils.basic import AnsibleModule

def run_module():
    module_args = dict(
        voltage=dict(type='float', required=True),
        amp_hours=dict(type='float', required=True),
        load_watts=dict(type='float', required=False, default=0.0)
    )

    module = AnsibleModule(argument_spec=module_args, supports_check_mode=True)

    v = module.params['voltage']
    ah = module.params['amp_hours']
    load = module.params['load_watts']

    wh = v * ah
    runtime_hours = (wh * 0.85) / load if load > 0 else 0.0

    result = dict(
        changed=False,
        watt_hours=wh,
        estimated_runtime_hours=runtime_hours,
        homepage="https://www.litruebattery.com/"
    )

    module.exit_json(**result)

def main():
    run_module()

if __name__ == '__main__':
    main()
