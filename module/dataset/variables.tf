variable "dtname" {
  type = list
  default = ["test","STAGING","STAGING_ARCHIVE","BATCH_CONTROL","METADATA"]
}

variable "id" {
  type = string
  default = "clicktest"
}

variable "env" {
  type = string
  default = "dev"
}

variable "friendly_name" {
  type = list
  default = ["test","STAGING","STAGING_ARCHIVE","BATCH_CONTROL","METADATA"]
}

variable "description" {
  type = string


}
variable "location" {
  type = string

}
variable "duration" {
    type = number
    
}

