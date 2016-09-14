###############################################
# Module: AWS RDS Instance
###############################################

// Global
variable "region" {}
variable "region_code" {}
variable "env" {}
variable "environment" {}
variable "team" {}
variable "deploytag" {}
variable "rds_vpc" {}

// RDS Instance Variables
variable "rds_instance_name" {}
variable "rds_is_multi_az" {
    default = "false"
}

variable "rds_storage_type" {
    default = "standard"
}

variable "rds_allocated_storage" {
    description = "The allocated storage in GBs"
    // You just give it the number, e.g. 10
}

variable "rds_engine_type" {
    // Valid types are
    // - mysql
    // - postgres
    // - oracle-*
    // - sqlserver-*
    // http://docs.aws.amazon.com/AmazonRDS/latest/CommandLineReference/CLIReference-cmd-CreateDBInstance.html
    // See --engine
}

variable "rds_engine_version" {
    // For valid engine versions, see:
    // See http://docs.aws.amazon.com/AmazonRDS/latest/CommandLineReference/CLIReference-cmd-CreateDBInstance.html
    // --engine-version

}

variable "rds_instance_class" {}

variable "database_user" {}
variable "database_password" {}

// Parameters
variable "rds_db_parameter_group" {
    default = "default.mysql5.6"
}

// Networking
variable "rds_db_subnet_group" { 
    default = ""
}
variable "subnet_az1" {}
variable "subnet_az2" {}
variable "subnet_az3" {}
variable "rds_security_group" {}

// RDS Backup, needed for Replicas
variable "rds_backup_retention_period" {
	default = "1"
}
variable "rds_backup_window" {
	default = "04:00-05:00"
}

// Replicas
variable "rds_replicate_source_db" {}

// DB port
variable "rds_db_port" {
	default = "3306"
}