###############################################
# Module: AWS RDS Instance
###############################################

// Output the ID of the RDS instance
output "id" {
    value = "${aws_db_instance.main_rds_instance.id}"
}

// Output the Address of the RDS instance
output "address" {
    value = "${aws_db_instance.main_rds_instance.address}"
}