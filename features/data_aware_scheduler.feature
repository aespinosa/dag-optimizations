Feature: Data-aware scheduler
  Jobs are executed where their prerequisite data are.

  @wip
  Scenario: Job is scheduled where its data is available
    Given A job with an input dataset
    And Its input is available on a resource
    And The resource is managed by a scheduler
    When The job is submitted to the scheduler
    Then It is submitted to the resource that has its input data

  Scenario: Basic round-robin scheduler
    Given A uniform distribution of jobs
    And A set of compute resources
    When The nth job is send to the scheduler
    Then The job finishes on the nth resource
