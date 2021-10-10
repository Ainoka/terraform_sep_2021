### Local is used for something that's repeated over and over again ### 

// 1. Company has a naming standard and tagging standard

// - Naming standard

// 1. What Cloud Provider? = aws
// 2. What is the environment? = non-prod, prod
// 3. What is particular ? = dev, qa, stage
// 4. What is region ? = us-west-2, us-east-1
// 5. What is the project ? = matrix


// Standard = aws-nonprod-us-west-2-dev-matrix-${resource}

// - Tagging standard (Common Tags)

// 1. environment
// 2. project
// 3. team
// 4. owner
// 5. managed by = Terraform


locals {
  name = "aws-${var.stage}-${var.env}-${var.region}-${var.project}-rtype"
  common_tags = {
    env        = var.env
    project    = var.project
    team       = "DevOps"
    Owner      = "Aina"
    Managed_By = "Terraform"
  }
}