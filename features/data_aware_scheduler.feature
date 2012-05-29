Feature: Data-aware scheduler
  Jobs are executed where their prerequisite data are.

  Scenario: Basic round-robin scheduler
    Given A uniform distribution of jobs
    And A set of compute resources
    When The nth job is send to the scheduler
    Then The job finishes on the nth resource

  #Scenario: Job is scheduled where its data is available
    #Given A job with an input data
    #And Its input is available on a resource
    #When The job is submitted to the scheduler
    #Then It is run on the resource with its input data
