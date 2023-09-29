variable "loop_ins" {
  type        = map(any)
  description = "for each loop"
}
variable "own" {
  type        = list(string)
  description = "owner of instance"
}
variable "bucket" {
  type        = list(string)
  description = "bucket name"
}
variable "env" {
  type        = list(string)
  description = "environment of bucket"
}
variable "name" {
  type        = list(string)
  description = "name"
}