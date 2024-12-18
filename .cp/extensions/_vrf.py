from jinja2.ext import Extension
import jinja2

@jinja2.pass_context
def _vrf(context, value):

    vrf_data_list = list()
    for vrf in context['vrfs']:
        if vrf['Tenant Name'] == value:
            vrf_data_list.append({
                'VRF Name': vrf['VRF Name'],
                "VRF ID": vrf['VRF ID'],
                "Diagnostic Loopback Number": vrf['Diagnostic Loopback Number'],
                'Diagnostic Loopback Range': vrf['Diagnostic Loopback Range']
            })
    
    return vrf_data_list

class vrfExtension(Extension):
    def __init__(self, environment):
        super().__init__(environment)
        environment.filters["_vrf"] = _vrf
