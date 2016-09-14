###############################################
# Module: AWS RDS Instance
###############################################

// This template creates the following resources
// - A RDS instance

resource "aws_db_instance" "main_rds_instance" {
    identifier = "${var.rds_instance_name}"
    allocated_storage = "${var.rds_allocated_storage}"
    engine = "${var.rds_engine_type}"
    engine_version = "${var.rds_engine_version}"
    instance_class = "${var.rds_instance_class}"
    username = "${var.database_user}"
    password = "${var.database_password}"
	vpc_security_group_ids = [
        "${var.rds_security_group}"
    ]
    parameter_group_name = "${var.rds_db_parameter_group}"
	db_subnet_group_name = "${var.rds_db_subnet_group}"
    multi_az = "${var.rds_is_multi_az}"
	storage_type = "${var.rds_storage_type}"

	// Backup
	backup_retention_period = "${var.rds_backup_retention_period}"
	backup_window = "${var.rds_backup_window}"
    port = "${var.rds_db_port}"
	replicate_source_db = "${var.rds_replicate_source_db}"

    tags {
        Name = "rds-${var.region_code}-${var.env}-${var.rds_instance_name}"
        region = "${var.region_code}"
        env = "${var.env}"
        environment = "${var.environment}"
        team = "${var.team}"
        deploytag = "${var.deploytag}"
    }
}