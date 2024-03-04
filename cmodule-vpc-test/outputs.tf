output "azs" {
    value = module.roboshop.azs  
}

output "vpc_id" {
    value = aws_vpc.main.id  
}

output "public_subnet_ids" {
    value = aws_subnet.public[*].id  
}

output "private_subnet_ids" {
    value = aws_subnet.private[*].id  
}

output "dtatabase_subnet_ids" {
    value = aws_subnet.database[*].id  
}