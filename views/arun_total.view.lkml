view: arun_total {}
# If necessary, uncomment the line below to include explore_source.
# include: "arun_training.model.lkml"

  view: add_a_unique_name_1759473891 {
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
