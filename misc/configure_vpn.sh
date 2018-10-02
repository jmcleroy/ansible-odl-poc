curl -u admin:admin -X POST -H "Content-Type: application/json"  http://127.0.0.1:8181/restconf/config/ietf-l3vpn-svc:l3vpn-svc/vpn-services/ -d \
'{
    "vpn-services": {
        "vpn-service": [
            {
                "vpn-id": "blue_vpn1",
                "customer-name": "blue",
                "vpn-service-topology": "ietf-l3vpn-svc:any-to-any",
                "vrf-name": "blue"
            }
        ]
    }
}'
