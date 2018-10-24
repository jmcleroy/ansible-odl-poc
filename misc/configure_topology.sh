curl -u admin:admin -X PUT -H "Content-Type: application/json"  http://127.0.0.1:8181/restconf/config/network-topology:network-topology/topology/flow:1/ -d \
'{
    "topology": [
            {
                "topology-id": "flow:1",
                "node": [
                    {
                        "node-id": "CE-SiteA",
                        "username": "redhat",
                        "password": "redhat",
                        "device-type": "cisco",
                        "pe-mgmt-ip": "192.168.10.100",
                        "termination-point": [
                                        {
                                            "tp-id": "enp0s4"
                                        }
                        ]
                    },
                    {
                        "node-id": "CE-SiteB",
                        "username": "redhat",
                        "password": "redhat",
                        "device-type": "cisco",
                        "pe-mgmt-ip": "192.168.10.100",
                        "termination-point": [
                                        {
                                            "tp-id": "enp0s4"
                                        }          
                        ]
                       },
                       {
                           "node-id": "cisco-ios1",
                           "username": "redhat",
                           "password": "redhat",
                           "device-type": "cisco",
                           "pe-mgmt-ip": "192.168.10.100",
                           "termination-point": [
                                            {
                                               "tp-id": "GigabitEthernet2"
                                            },
                                            {
                                                "tp-id": "GigabitEthernet3"
                                            }
                           ]
                       },
                       {
                           "node-id": "cisco-ios2",
                           "username": "redhat",
                           "password": "redhat",
                           "device-type": "cisco",
                           "pe-mgmt-ip": "192.168.20.100",
                           "termination-point": [
                                           {
                                               "tp-id": "GigabitEthernet2"
                                           },
                                           {
                                               "tp-id": "GigabitEthernet3"
                                           }
                           ]
                       }
                ],
                "link": [
                    {
                        "link-id": "cisco-ios1",
                        "source": {
                                        "source-tp": "GigabitEthernet2",
                                        "source-node": "cisco-ios1"
                        },
                        "destination":  {
                                            "dest-tp": "GigabitEthernet2",
                                            "dest-node": "cisco-ios2"
                        }
                    }
                ]
            }
        ]
    }'

