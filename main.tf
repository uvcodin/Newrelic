resource "newrelic_one_dashboard" "exampledash" {
  name        = "Simple_Dashboard"
  permissions = "public_read_only"

  page {
    name = "New Relic Terraform Dashboard"

    widget_billboard {
      title  = "Requests per minute"
      row    = 1
      column = 1
      width  = 3
      height = 3

      nrql_query {
        account_id = 4049626
        query = "FROM Transaction SELECT rate(count(*), 1 minute)"
      }
    }

    widget_bar {
      title  = "Average transaction duration, by application"
      row    = 1
      column = 7
      width  = 3
      height = 3

      nrql_query {
        account_id = 4049626
        query      = "FROM Transaction SELECT average(duration) FACET appName"
      }


    }

   
  }
}