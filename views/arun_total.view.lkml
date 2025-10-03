
  view: total_order{
    derived_table: {
      explore_source: orders {
        column: state { field: users.state }
        column: count {}
        filters: {
          field: orders.status
          value: "COMPLETED"
        }
      }
    }
    dimension: state {
      description: ""
    }
    dimension: count {
      description: ""
      type: number
    }
  }
