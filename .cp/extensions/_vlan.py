from jinja2.ext import Extension
import jinja2

@jinja2.pass_context
def _vlan(context, value):

    vlan_data_list = list()
    for vlan in context['vlans']:
        if vlan['VRF'] == value:
            vlan_data_list.append({
                'VLAN number': vlan['VLAN number'],
                "VLAN name": vlan['VLAN name'],
                "IP address virtual": vlan['IP address virtual'],
                'Tags': vlan['Tags'].split(',')
            })
    
    return vlan_data_list

class vlanExtension(Extension):
    def __init__(self, environment):
        super().__init__(environment)
        environment.filters["_vlan"] = _vlan
