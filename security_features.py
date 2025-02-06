class SecurityFeatures:
    def __init__(self):
        self.features = {
            "data_protection": {
                "encryption_at_rest": True,
                "encryption_in_transit": True,
                "key_rotation": "automatic",
                "data_masking": True
            },
            "access_control": {
                "mfa_required": True,
                "session_management": True,
                "ip_whitelist": True,
                "role_based_access": True
            },
            "monitoring": {
                "real_time_alerts": True,
                "audit_logging": True,
                "anomaly_detection": True,
                "compliance_reporting": True
            },
            "backup_recovery": {
                "automated_backups": True,
                "encrypted_backups": True,
                "point_in_time_recovery": True,
                "disaster_recovery": True
            }
        }
