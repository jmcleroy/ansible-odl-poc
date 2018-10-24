curl -u admin:admin -X PUT -H "Content-Type: application/json"  http://127.0.0.1:8181/restconf/config/ietf-l3vpn-svc:l3vpn-svc/sites/site/blue/ -d \
'{
    "site": [
        {
            "site-id": "blue",
            "site-network-accesses": {
                "site-network-access": [
                    {
                        "site-network-access-id": "ios1",
                        "vpn-attachment": {
                            "vpn-id": "blue_vpn1",
                            "site-role": "any-to-any-role"
                        },
                        "ip-connection": {
                            "ipv4": {
                                "addresses": {
                                    "provider-address": "10.10.10.10",
                                    "mask": "24"
                                }
                            }
                        },
                        "pe-2-ce-tp-id": "GigabitEthernet3",
                        "pe-bgp-as": 10,
			"pe-node-id" : "cisco-ios1",
			"ce-node-id" : "CE-SiteA"
                    }
                ]
            }
        }
    ]
}'

curl -u admin:admin -X PUT -H "Content-Type: application/json" http://127.0.0.1:8181/restconf/config/ietf-l3vpn-svc:l3vpn-svc/sites/site/blue2/ -d \
'{
    "site": [
        {
            "site-id": "blue2",
            "site-network-accesses": {
                "site-network-access": [
                    {
                        "site-network-access-id": "ios2",
                        "vpn-attachment": {
                            "vpn-id": "blue_vpn1",
                            "site-role": "any-to-any-role"
                        },
                        "ip-connection": {
                            "ipv4": {
                                "addresses": {
                                    "provider-address": "20.20.20.20",
                                    "mask": "24"
                                }
                            }
                        },
                        "pe-2-ce-tp-id": "GigabitEthernet3",
                        "pe-bgp-as": 10,
			"pe-node-id" : "cisco-ios2",
			"ce-node-id" : "CE-SiteB"
                    }
                ]
            }
        }
    ]
}'
