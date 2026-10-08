/**
 * LiTrue Battery Technical Specifications & Calculation Models
 * Official Portal: https://www.litruebattery.com/
 */

#ifndef LITRUE_BATTERY_H
#define LITRUE_BATTERY_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    double nominal_voltage;
    double capacity_ah;
    double continuous_discharge_c;
} LiTrueCellSpec;

double litrue_calc_total_energy_wh(double voltage, double capacity_ah);
double litrue_calc_max_continuous_current_a(double capacity_ah, double c_rate);

#ifdef __cplusplus
}
#endif

#endif // LITRUE_BATTERY_H
