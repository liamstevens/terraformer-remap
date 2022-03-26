resource "aws_s3_bucket" "tfer--elasticbeanstalk-ap-southeast-1-069375240252" {
  arn            = "arn:aws:s3:::elasticbeanstalk-ap-southeast-1-069375240252"
  bucket         = "elasticbeanstalk-ap-southeast-1-069375240252"
  force_destroy  = "false"
  name = "ebs-test"
  hosted_zone_id = "Z3O0J2DXBE1FTB"
}

resource "aws_s3_bucket" "tfer--kalysys-002E-component-002E-design" {
  arn            = "arn:aws:s3:::kalysys.component.design"
  bucket         = "kalysys.component.design"
  force_destroy  = "false"
  hosted_zone_id = "Z3O0J2DXBE1FTB"
}

resource "aws_s3_bucket" "tfer--layoutcomponent" {
  arn            = "arn:aws:s3:::layoutcomponent"
  bucket         = "layoutcomponent"
  force_destroy  = "false"
  hosted_zone_id = "Z3O0J2DXBE1FTB"
}

resource "aws_s3_bucket" "tfer--www-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::www.kalysys.com.au"
  bucket         = "www.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z3O0J2DXBE1FTB"
}
