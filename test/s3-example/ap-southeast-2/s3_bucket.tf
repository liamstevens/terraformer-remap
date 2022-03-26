resource "aws_s3_bucket" "tfer--app-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::app.clevero.co"
  bucket         = "app.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    Name = "app.clevero.co"
  }

  tags_all = {
    Name = "app.clevero.co"
  }
}

resource "aws_s3_bucket" "tfer--app-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::app.kalysys.com.au"
  bucket         = "app.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--app-002E-lencia-002E-com-002E-au" {
  arn            = "arn:aws:s3:::app.lencia.com.au"
  bucket         = "app.lencia.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--bookings-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::bookings.kalysys.com.au"
  bucket         = "bookings.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--bookings-002E-lifesanadventure-002E-com-002E-au" {
  arn            = "arn:aws:s3:::bookings.lifesanadventure.com.au"
  bucket         = "bookings.lifesanadventure.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--bookings-demo-dev-serverlessdeploymentbucket-uneblq9nklat" {
  arn            = "arn:aws:s3:::bookings-demo-dev-serverlessdeploymentbucket-uneblq9nklat"
  bucket         = "bookings-demo-dev-serverlessdeploymentbucket-uneblq9nklat"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_s3_bucket" "tfer--bookings-demo-prod-serverlessdeploymentbucket-7enqozkmxc86" {
  arn            = "arn:aws:s3:::bookings-demo-prod-serverlessdeploymentbucket-7enqozkmxc86"
  bucket         = "bookings-demo-prod-serverlessdeploymentbucket-7enqozkmxc86"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }
}

resource "aws_s3_bucket" "tfer--cdn-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::cdn.kalysys.com.au"
  bucket         = "cdn.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--cdn-002E-unshackld-002E-com-002E-au" {
  arn            = "arn:aws:s3:::cdn.unshackld.com.au"
  bucket         = "cdn.unshackld.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--clevero-002E-com-002E-au" {
  arn            = "arn:aws:s3:::clevero.com.au"
  bucket         = "clevero.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--clevero-e-signature-dev" {
  arn            = "arn:aws:s3:::clevero-e-signature-dev"
  bucket         = "clevero-e-signature-dev"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--clevero-e-signature-dev-serverlessdeploymentbucke-ha1416clsrl2" {
  arn            = "arn:aws:s3:::clevero-e-signature-dev-serverlessdeploymentbucke-ha1416clsrl2"
  bucket         = "clevero-e-signature-dev-serverlessdeploymentbucke-ha1416clsrl2"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_s3_bucket" "tfer--clevero-e-signature-dev-serverlessdeploymentbucke-mxepifi2e2b8" {
  arn            = "arn:aws:s3:::clevero-e-signature-dev-serverlessdeploymentbucke-mxepifi2e2b8"
  bucket         = "clevero-e-signature-dev-serverlessdeploymentbucke-mxepifi2e2b8"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_s3_bucket" "tfer--clevero-e-signature-prod" {
  arn            = "arn:aws:s3:::clevero-e-signature-prod"
  bucket         = "clevero-e-signature-prod"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--core-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::core.kalysys.com.au"
  bucket         = "core.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--demo-prod-serverlessdeploymentbucket-d8poo92clbs" {
  arn            = "arn:aws:s3:::demo-prod-serverlessdeploymentbucket-d8poo92clbs"
  bucket         = "demo-prod-serverlessdeploymentbucket-d8poo92clbs"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }
}

resource "aws_s3_bucket" "tfer--dev-002E-lencia-002E-com-002E-au" {
  arn            = "arn:aws:s3:::dev.lencia.com.au"
  bucket         = "dev.lencia.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--dev-002E-suitescale-002E-com" {
  arn            = "arn:aws:s3:::dev.suitescale.com"
  bucket         = "dev.suitescale.com"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--docx-generator-prod" {
  arn            = "arn:aws:s3:::docx-generator-prod"
  bucket         = "docx-generator-prod"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--elasticbeanstalk-ap-southeast-2-069375240252" {
  arn            = "arn:aws:s3:::elasticbeanstalk-ap-southeast-2-069375240252"
  bucket         = "elasticbeanstalk-ap-southeast-2-069375240252"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--experience-002E-japanesemountainretreat-002E-com-002E-au" {
  arn            = "arn:aws:s3:::experience.japanesemountainretreat.com.au"
  bucket         = "experience.japanesemountainretreat.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--firewize-calendar-app" {
  arn            = "arn:aws:s3:::firewize-calendar-app"
  bucket         = "firewize-calendar-app"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--forms-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::forms.clevero.co"
  bucket         = "forms.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    Name = "forms.clevero.co"
  }

  tags_all = {
    Name = "forms.clevero.co"
  }
}

resource "aws_s3_bucket" "tfer--four-paws-training-dev-serverlessdeploymentbucket-j1jp9sddcvsf" {
  arn            = "arn:aws:s3:::four-paws-training-dev-serverlessdeploymentbucket-j1jp9sddcvsf"
  bucket         = "four-paws-training-dev-serverlessdeploymentbucket-j1jp9sddcvsf"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_s3_bucket" "tfer--four-paws-training-prod-serverlessdeploymentbucke-1xhukhzosr7hg" {
  arn            = "arn:aws:s3:::four-paws-training-prod-serverlessdeploymentbucke-1xhukhzosr7hg"
  bucket         = "four-paws-training-prod-serverlessdeploymentbucke-1xhukhzosr7hg"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }
}

resource "aws_s3_bucket" "tfer--fourpawstraining-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::fourpawstraining.kalysys.com.au"
  bucket         = "fourpawstraining.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--generatedpdf-files" {
  arn            = "arn:aws:s3:::generatedpdf-files"
  bucket         = "generatedpdf-files"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }
}

resource "aws_s3_bucket" "tfer--help-002E-kalysys-002E-com" {
  arn            = "arn:aws:s3:::help.kalysys.com"
  bucket         = "help.kalysys.com"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--image-uploads-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::image-uploads.clevero.co"
  bucket         = "image-uploads.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--img-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::img.clevero.co"
  bucket         = "img.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--instance-assets-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::instance-assets.clevero.co"
  bucket         = "instance-assets.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--jmr-endpoint-dev-serverlessdeploymentbucket-1p0qehcxpooqx" {
  arn            = "arn:aws:s3:::jmr-endpoint-dev-serverlessdeploymentbucket-1p0qehcxpooqx"
  bucket         = "jmr-endpoint-dev-serverlessdeploymentbucket-1p0qehcxpooqx"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_s3_bucket" "tfer--jmr-endpoint-prod-serverlessdeploymentbucket-1siz3f4g5eeni" {
  arn            = "arn:aws:s3:::jmr-endpoint-prod-serverlessdeploymentbucket-1siz3f4g5eeni"
  bucket         = "jmr-endpoint-prod-serverlessdeploymentbucket-1siz3f4g5eeni"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }
}

resource "aws_s3_bucket" "tfer--kalokaly-002E-com" {
  arn            = "arn:aws:s3:::kalokaly.com"
  bucket         = "kalokaly.com"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::kalysys.com.au"
  bucket         = "kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-bac" {
  arn            = "arn:aws:s3:::kalysys-bac"
  bucket         = "kalysys-bac"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-bac-dev" {
  arn            = "arn:aws:s3:::kalysys-bac-dev"
  bucket         = "kalysys-bac-dev"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-demo-consulting" {
  arn            = "arn:aws:s3:::kalysys-demo-consulting"
  bucket         = "kalysys-demo-consulting"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-e-signature" {
  arn            = "arn:aws:s3:::kalysys-e-signature"
  bucket         = "kalysys-e-signature"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-qr-code" {
  arn            = "arn:aws:s3:::kalysys-qr-code"
  bucket         = "kalysys-qr-code"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-qr-code-dev" {
  arn            = "arn:aws:s3:::kalysys-qr-code-dev"
  bucket         = "kalysys-qr-code-dev"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-rules" {
  arn            = "arn:aws:s3:::kalysys-rules"
  bucket         = "kalysys-rules"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-uploads-dev" {
  arn            = "arn:aws:s3:::kalysys-uploads-dev"
  bucket         = "kalysys-uploads-dev"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-uploads-prod" {
  arn            = "arn:aws:s3:::kalysys-uploads-prod"
  bucket         = "kalysys-uploads-prod"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-uploads-staging" {
  arn            = "arn:aws:s3:::kalysys-uploads-staging"
  bucket         = "kalysys-uploads-staging"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysys-website" {
  arn            = "arn:aws:s3:::kalysys-website"
  bucket         = "kalysys-website"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--kalysyskoonung-002E-com" {
  arn            = "arn:aws:s3:::kalysyskoonung.com"
  bucket         = "kalysyskoonung.com"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--laa-lambda-functions-dev-serverlessdeploymentbuck-39dhx5ydt3rk" {
  arn            = "arn:aws:s3:::laa-lambda-functions-dev-serverlessdeploymentbuck-39dhx5ydt3rk"
  bucket         = "laa-lambda-functions-dev-serverlessdeploymentbuck-39dhx5ydt3rk"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_s3_bucket" "tfer--laa-lambda-functions-pro-serverlessdeploymentbuck-7tteobcvcilo" {
  arn            = "arn:aws:s3:::laa-lambda-functions-pro-serverlessdeploymentbuck-7tteobcvcilo"
  bucket         = "laa-lambda-functions-pro-serverlessdeploymentbuck-7tteobcvcilo"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }
}

resource "aws_s3_bucket" "tfer--lezyeoh" {
  arn            = "arn:aws:s3:::lezyeoh"
  bucket         = "lezyeoh"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--lezyeoh-002E-com" {
  arn            = "arn:aws:s3:::lezyeoh.com"
  bucket         = "lezyeoh.com"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--mateofamate" {
  arn            = "arn:aws:s3:::mateofamate"
  bucket         = "mateofamate"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--meetings-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::meetings.clevero.co"
  bucket         = "meetings.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    Name = "meetings.clevero.co"
  }

  tags_all = {
    Name = "meetings.clevero.co"
  }
}

resource "aws_s3_bucket" "tfer--mercury-connect" {
  arn            = "arn:aws:s3:::mercury-connect"
  bucket         = "mercury-connect"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--mercury-connect-cdn" {
  arn            = "arn:aws:s3:::mercury-connect-cdn"
  bucket         = "mercury-connect-cdn"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--module-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::module.kalysys.com.au"
  bucket         = "module.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--nh-houses-prod" {
  arn            = "arn:aws:s3:::nh-houses-prod"
  bucket         = "nh-houses-prod"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--nh-houses-staging" {
  arn            = "arn:aws:s3:::nh-houses-staging"
  bucket         = "nh-houses-staging"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--nscodebuilder-002E-com" {
  arn            = "arn:aws:s3:::nscodebuilder.com"
  bucket         = "nscodebuilder.com"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--pdf-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::pdf.clevero.co"
  bucket         = "pdf.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    Name = "pdf.clevero.co"
  }

  tags_all = {
    Name = "pdf.clevero.co"
  }
}

resource "aws_s3_bucket" "tfer--pdf-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::pdf.kalysys.com.au"
  bucket         = "pdf.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--pdf-generator-dev-serverlessdeploymentbucket-oz3pe3f9ajru" {
  arn            = "arn:aws:s3:::pdf-generator-dev-serverlessdeploymentbucket-oz3pe3f9ajru"
  bucket         = "pdf-generator-dev-serverlessdeploymentbucket-oz3pe3f9ajru"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_s3_bucket" "tfer--pdf-generator-prod-serverlessdeploymentbucket-1nnw9tpdw1sgn" {
  arn            = "arn:aws:s3:::pdf-generator-prod-serverlessdeploymentbucket-1nnw9tpdw1sgn"
  bucket         = "pdf-generator-prod-serverlessdeploymentbucket-1nnw9tpdw1sgn"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }
}

resource "aws_s3_bucket" "tfer--predeparture-002E-lifesanadventure-002E-com-002E-au" {
  arn            = "arn:aws:s3:::predeparture.lifesanadventure.com.au"
  bucket         = "predeparture.lifesanadventure.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--preinfoform-002E-lifesanadventure-002E-com-002E-au" {
  arn            = "arn:aws:s3:::preinfoform.lifesanadventure.com.au"
  bucket         = "preinfoform.lifesanadventure.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--rules-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::rules.clevero.co"
  bucket         = "rules.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    Name = "rules.clevero.co"
  }

  tags_all = {
    Name = "rules.clevero.co"
  }
}

resource "aws_s3_bucket" "tfer--serverless-pdf-puppeteer-serverlessdeploymentbuck-1mj84w65sj8v1" {
  arn            = "arn:aws:s3:::serverless-pdf-puppeteer-serverlessdeploymentbuck-1mj84w65sj8v1"
  bucket         = "serverless-pdf-puppeteer-serverlessdeploymentbuck-1mj84w65sj8v1"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_s3_bucket" "tfer--shresthakarun-002E-com-002E-np" {
  arn            = "arn:aws:s3:::shresthakarun.com.np"
  bucket         = "shresthakarun.com.np"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--simple-todo-app" {
  arn            = "arn:aws:s3:::simple-todo-app"
  bucket         = "simple-todo-app"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--snippets-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::snippets.kalysys.com.au"
  bucket         = "snippets.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--sportanatics" {
  arn            = "arn:aws:s3:::sportanatics"
  bucket         = "sportanatics"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--staging-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::staging.clevero.co"
  bucket         = "staging.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    Name = "staging.clevero.co"
  }

  tags_all = {
    Name = "staging.clevero.co"
  }
}

resource "aws_s3_bucket" "tfer--staging-002E-forms-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::staging.forms.kalysys.com.au"
  bucket         = "staging.forms.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--staging-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::staging.kalysys.com.au"
  bucket         = "staging.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--staging-002E-meetings-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::staging.meetings.kalysys.com.au"
  bucket         = "staging.meetings.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--staging2-002E-clevero-002E-co" {
  arn            = "arn:aws:s3:::staging2.clevero.co"
  bucket         = "staging2.clevero.co"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"

  tags = {
    Name = "staging2.clevero.co"
  }

  tags_all = {
    Name = "staging2.clevero.co"
  }
}

resource "aws_s3_bucket" "tfer--staging2-002E-kalysys-002E-com-002E-au" {
  arn            = "arn:aws:s3:::staging2.kalysys.com.au"
  bucket         = "staging2.kalysys.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--testapp-002E-lezyeoh-002E-com" {
  arn            = "arn:aws:s3:::testapp.lezyeoh.com"
  bucket         = "testapp.lezyeoh.com"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--vbac-calculator-dev" {
  arn            = "arn:aws:s3:::vbac-calculator-dev"
  bucket         = "vbac-calculator-dev"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--vbaccalculator-redirects" {
  arn            = "arn:aws:s3:::vbaccalculator-redirects"
  bucket         = "vbaccalculator-redirects"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--widget-002E-lifesanadventure-002E-com-002E-au" {
  arn            = "arn:aws:s3:::widget.lifesanadventure.com.au"
  bucket         = "widget.lifesanadventure.com.au"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--www-002E-lezyeoh-002E-com" {
  arn            = "arn:aws:s3:::www.lezyeoh.com"
  bucket         = "www.lezyeoh.com"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}

resource "aws_s3_bucket" "tfer--www-002E-shresthakarun-002E-com-002E-np" {
  arn            = "arn:aws:s3:::www.shresthakarun.com.np"
  bucket         = "www.shresthakarun.com.np"
  force_destroy  = "false"
  hosted_zone_id = "Z1WCIGYICN2BYD"
}
