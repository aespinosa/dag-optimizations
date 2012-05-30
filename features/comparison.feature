Feature: Pipeline workflow optimizations
  We hypothesize that a optimizing a pipeline will have a better load balance
  than a data-aware scheduler.

  Scenario: Load balance comparison of DAG optimization and data-aware scheduler
    Given A pipeline workload with parametarized data
    """
    1->a->1.1->a.a->1.2
    2->b->2.1->b.a->2.2
    """
    When We obtain the load from a data-aware scheduler
    And We obtain the load from the DAG-optimized version
    Then DAG-optimized load is more balanced
