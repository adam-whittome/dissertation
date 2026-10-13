#set page(numbering: "1")
#set document(
  title: [Comparing Adaptive Sampling and Filtering Algorithms for Maximising Network Lifetime in Wireless Sensor Networks],
)
#show title: set text(size: 20pt, weight: "regular")
#show title: set align(center)
#show heading: set block(below: 1em)
#show heading: set heading(numbering: "1")
#set text(size: 12pt)

#title()

= Introduction and Description

In wireless sensor networks (WSNs), a large proportion of the energy each sensor node consumes comes from wireless communication between nodes and, depending on the specific application, the operation of the sensing subsystem @raghunathan_energy-aware_2002. Typically, sensor nodes are small, battery-powered devices with a limited energy budget, where it can be inconvenient, or in some circumstances impossible, to recharge their batteries, due to the environment in which the sensor nodes are deployed @anastasi_energy_2009. Improving the energy efficiency of sensor nodes is crucial to prolonging the network's operational lifetime @yetgin_survey_2017, and a variety of techniques aimed at reducing the usage of wireless communication and the sensing subsytem are part of addressing this wider energy concern @rault_energy_2014.

Adaptive sampling algorithms decide the sampling rate of the sensing subsystem @giouroukis_survey_2020, taking advantage of the spatiotemporal correlations in the events being sensed to reduce the number of samples taken, without compromising on accuracy or timeliness. This has the effect of reducing usage of both the sampling and communication subsytems. Adaptive filtering algorithms decide if a sensed value should be transmitted by finding a threshold with respect to a predicted value. This can reduce usage of the communication subsystem. Both of these techniques contribute to reducing energy consumption on a sensor node.

The accuracy of a signal as constructed from sensor node readings, is given as the absolute error with regards to the ground truth signal, taking the mean absolute error and maximum absolute error as variables by which accuracy can be compared across different techniques.

The notion of timeliness is taken as a cumulative distribution function (CDF) of time @oliver_proposal_nodate. Taking delay as the time between an event and when the process of sensing the event and communicating this back to the sink is complete, the CDF gives the probability that the delay is less than the given variable. This definition of timeliness allows for a more complete understanding of the distribution of delays that may be introduced by the techniques under analysis.

This project will investigate the impact on network lifetime that these techniques have, by simulating a WSN in various carefully constructed scenarios, paying attention to the effect on the accuracy and timeliness of the signal.

= Description of Work

In this project, I will use the ns-3 network simulator @nsnam_ns-3_nodate to produce realistic simulations of wireless sensor networks, making use of credible models for wireless propagation, energy expenditure, battery and application @garg_towards_2012. ns-3 is the choice of network simulator for this project due to its standard, widespread use in publications on simulating WSNs @adday_investigating_2024.

It is crucial that the energy model used takes into account the different states of the various subsystems of the sensor node. This addresses the considerable difference in energy consumption of, for example, the radio subsytem operation states, which is in one of sleep, transmit and receive modes @adday_investigating_2024. Hence, I will follow a state-machine-based energy model, with associated energy costs for each state, along with energy costs, and time delays for state transitions @zhou_modeling_2011.

This enables running a variety of adaptive sampling and filtering algorithms on sensor nodes, allowing for useful measurements to be made on energy consumption, accuracy and timeliness.

Consequently, an comparative analysis will be conducted, evaluating how well each technique decreases energy consumption, while considering the compromise on accuracy and timeliness.

= Success Criteria

#list[
  Implemented the WSN simulator, that employs credible models for wireless propagation, energy expenditure, battery and application @garg_towards_2012 of sensor nodes.
][
  Implemented the Backcasting @willett_backcasting_2004 and Kalman-Filter-Based @jain_adaptive_2004 adaptive sampling algorithms.
][
  Implemented the Spanish Inquisition Protocol @goldsmith_spanish_2010 and Event Contour-Based @meng_event_nodate Adaptive Filtering Algorithms. 
][
  Performed an evaluation of the energy consumption, accuracy and timeliness of the implemented algorithms on synthetic data, constructed to cover a variety of sensor types and data patterns.
]

= Extensions

#list[
  Investigate more adaptive sampling algorithms, such as those which feature adaptive compression.  
][
  Investigate improvements that could be made to the adaptive sampling and filtering algorithms.
][
  Derive a method for obtaining optimal sampling and transmission patterns on the given data, perhaps parameterised with acceptable bounds for accuracy and timeliness, for a basis of comparison on the algorithms investigated.
][
  Incorporate real-world datasets into the analysis, for further validation.
]

= Starting Point

I have not completed any work beyond the background research and planning required for this project proposal.
I have no prior experience with any kind of network simulator.

= Project Timeline

The following plan is divided into 2 week sections, starting from the project proposal submission date, to the final month and a half, dedicated to writing up the dissertation.

#enum(spacing: 1.2em)[
  9th Oct - 23rd Oct

  Set up ns-3, implementing a test WSN, using a baseline periodic sense-and-transmit approach on the selected datasets.
][
  24th Oct - 6th Nov

  Construct and implement accurate wireless propagation, energy expenditure, battery and application models into the simulator.
][
  7th Nov - 20th Nov

  Construct a range of simulated WSNs, along with synthetic data to be sensed, appropriate for a complete comparison of the algorithms.
][
  21st Nov - 4th Dec

  Implement the mechanisms for monitoring and collecting data for energy consumption, accuracy and timeliness.
][
  5th Dec - 18th Dec

  Implement the Backcasting adaptive sampling algorithm, collecting the data required to monitor energy consumption, accuracy and timeliness.
][
  2nd Jan - 15th Jan

  Implement the Kalman-Filter-Based adaptive sampling algorithm, collecting data as before.
][
  16th Jan - 29th Jan

  Implement the Spanish Inquisition Protocol adaptive filtering algorithm, collecting data as before.
][
  30th Jan - 12th Feb

  Implement the Event Contour-based adaptive filtering algorithm, collecting data as before.
][
  13th Feb - 26th Feb

  Conduct the comparison of the algorithms, generating suitable graphs and tables.
][
  27th Feb - 26th Mar

  Time allocated for working on extensions or catching up.
][
  27th Mar - 14th May
  
  Dissertation write-up.
]

= Resource Declaration

I will use my personal laptop for development, using Git with GitHub for backups of code in the event of failure. I accept full responsibility for this machine and have taken steps to prevent losses due to hardware/software failure.

= References
#bibliography("references.bib", title: none)