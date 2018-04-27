# Social Rec

Social-Rec is a group recommender system and a RESTful webservice which incorporates different types of group recommenders.  It is written in [Groovy][Groovy] and uses [Spring Boot](https://projects.spring.io/spring-boot/) for its REST functionality.

## Installation
1. Clone the repository
2. You can build the project by hand or with an IDE. If you install it by hand, make sure [Gradle][Gradle] is installed on your system. If you choose to use an IDE, it needs to support both [Groovy][Groovy] and [Gradle][Gradle]. [Intellij IDEA](https://www.jetbrains.com/idea/) is recommended. 
3. Install [MySQL](https://dev.mysql.com/downloads) on a server of your choice. By default it is assumed that the  Database server is at **localhost**. Other Database providers are possible but have not been tested.
 To use another database provider or change the location of the database server edit the following lines in src/main/resources/application.properties:  

    > spring.datasource.url=jdbc:mysql://localhost/social_rec

    > spring.datasource.driver-class-name=com.mysql.jdbc.Driver

    To

    > spring.datasource.url=jdbc:&lt;your database provider&gt;://&lt;location of your SQL server&gt;/social_rec

    > spring.datasource.driver-class-name=&lt;your driver name&gt;

4. Create a new database called **social_rec**
5. Create a new database user who has read and write rights for this database. Then edit the following properties (Default username and password are test/test) in application.properties:

    > spring.datasource.username
    
    > spring.datasource.password

6. Import the contents of the **database.sql** file into the social_rec database. (Note: This file has been removed from the public repository)

7. (optional) Adapt the port of the service with the **server.port** property in application.properties.

8. Build the project with the **build.gradle** file. If you encounter problems with the **:bootRun** task, (there seems to be a bug on Windows Systems), alternatively try running the main() function in src/main/groovy/guratorapp/SocialRec.groovy from within your IDE

## Database Model

Under src/guratorapp/model you can find entities which are mapped to different database tables. 

| Table name        | Description   |
|--- | --- |
| average_rating | The average rating for a restaurant by an individual participant |
| clumsiness_rating | The clumsiness rating for a restaurant by an individual participant | 
| combined_rating | A combination of both actual ratings of participants and generated ratings for restaurants which were not actually rated|
| evaluation_result | The result of evaluating a specific metric to a set of predicted (generated) group restaurant ratings with the actual underlying ratings.|
| generated_rating | A generated rating by an individual for restaurants which were not actually rated|
| groupparticipant | Signals the membership of participants in groups|
| grouprestaurantsurvey | The ratings groups gave to specific restaurants |
| grouptype | Describes the different types of groups |
| group_predicted_rating | Predicted ratings for groups on restaurants |
| guratorgroup | A group in the recommendation context|
| hippieness_rating | The hippieness rating for a restaurant by an individual participant | 
| job_info | Information about a long running job |
| job_type | Type of a long running job|
| location_rating | The location rating for a restaurant by a participant |
| participant | An individual participant |
| participantpersonalityquestion | An answer a participant gave to a question in a personality test |
| personality | The personality values from a TKI test of a participant |
| personalityquestion | A question of the personality test |
| price_rating | The price rating for a restaurant by an individual |
| rating_evaluation | Signals which predicted group ratings were used for a specific evaluation |
| recommendation_context | Gives details about a generation of a collection of predicted group ratings|
| restaurantid | Maps the string yelp-id of a restaurant to a numeric id |
| restaurantsurvey | The survey of a restaurant by an individual based on different rating types|
| service_rating | The service rating by an individual participant of a restaurant |
| social_overlap_rating | The social overlap rating of a restaurant by an individual participant|
| taste_rating | The taste rating by an individual participant for a restaurant |
| usersurvey | Assessment for one participant to another on the basis of different social factors |

## REST API

In the following several REST requests to the service are explained which can be used to steer the recommendation process. For more details examine the REST controllers in src/main/groovy/guratorapp/controllers and the services in src/main/groovy/guratorapp/services. 

| HTTP Method | Mapping | Parameters | Description
| --- |--- | --- | --- |
| GET | /aggregate-and-save-ratings | group-type, aggregation-type, rating-type | Chooses all groups that fit to the supplied parameters and generates group predictions on the basis of the aggregation-type and rating-type. A new recommendation_context entry is generated in the database which allows the identification of the generated ratings in the group_predicted_rating database alongside with details about the generation  |
| GET | /delegation-based/aggregate-and-save-ratings | group-type, aggregation-type, rating-type | Same as above, but with the Delegation-based Recommender |
| GET | /evaluate-predicted-ratings | aggregation-type, rating-type, evaluation-metric-type, recommender-type, group-type | Determines all Recommendation Contexts which fit to the parameters and evaluate the ratings with the metric and store the result as evaluation_result entries in the database |
| GET | /rebuild-all-combined-ratings | | Deletes all old generated and combined ratings for individual participants and rebuilds them on the basis of the current settings of the Individual Recommender. Warning: This process is computationally expensive |
| POST | /create-subgroups | sizeRatioThreshold, subgroupIds | Generates subgroups out of existing groups if a fitting group exists and the ratio of the subgroup size to group size is bigger than the threshold |


## Parameters

### Aggregation Strategy Types

Group ratings can be aggregated from individual ratings with different aggregation strategies. In the following a collection of these aggregation strategies with a description and the corresponding parameters in a REST request.

| Aggregation Strategy | REST Parameter | Description |
| --- | --- | --- |
| Average | average | The average of individual ratings is calculated |
| Average without misery | average_without_misery | If any individual has rated a restaurant below a certain threshold it receives the lowest possible rating, otherwise the average is calculated |
| Approval voting | approval_voting | A restaurant receives a point for every rating that is above a certain threshold |
| Borda count | borda_count | Calculates the borda count for each restaurant |
| Copeland rule | copeland_rule | Calculates the score based on the copeland rule |
| Fairness | fairness | The participant take turn in picking a restaurant by chosen their highest rated restaurant which was not yet picked |
| Least misery | least_misery | Restaurants receive the lowest rating that any group participant has given it |
| Most pleasure | maximum_pleasure | Restaurants receive the highest rating that any group participant has given it |
| Multiplicative | multiplicative | Individual scores are multiplied |
| Plurality voting | plurality_voting | Uses "first-past-the-post" voting. This means that a restaurant receives a score corresponding the number of times it received a maximal score by a participant, which is repeated for multiple rounds until all restaurants have received a score |

### Restaurant Rating Type

Describe different ways in which a restaurant can be rated.

| Restaurant Rating Type | REST Parameter |
| --- | --- |
| Average | average |
| Clumsiness | clumsiness |
| Hippieness | hippieness |
| Location | location |
| Price | price |
| Service | service |
| Social overlap | social_overlap |
| Taste | taste |

### Group Type

Describe the type of a group.

| Group Type | REST Parameter | Description |
|--- | --- | --- |
| Internal | internal | Groups with only internal members |
| External | external | Groups with one internal member and multiple external members |
| Mixed | mixed | Groups with external members and more than one internal member |
| Generated Subgroup | gensub | A group which was generated out of a subgroup of an existing group |

## Recommender Type

Describe the type of a recommender.

| Recommender Type | REST Parameter |
| --- | --- |
| Standard Recommender | standard |
| Delegation-based Recommender | delegation_based |

## Evaluation Metric Type

Describe the type of an evaluation metric.

| Evaluation Metric Type | REST Parameter | Description |
| --- | --- | --- |
| Mean Absolute Error | mean_absolute_error | |
| Root Mean Squared Error | root_mean_squared_error | |
| M Success@N | m_success_at_n | 1 if >M restaurants are correctly predicted in the first n restaurants|
| Precision@N | precision_at_n | Precision at the first n restaurants|
| Success@N | success_at_n | 1 if at least one restaurant is correctly predicted in the first n restaurants|

## Subgroup generation

Parameters to be used when creating subgroups.

| REST Parameter | Description |
| --- | --- |
| sizeRatioThreshold | Describes the size ratio which a subgroup needs to exceed to be created. For example a subgroup of 4 members of a group of 6 will be created for ratio of 0.5 since 4/6 > 0.5 |
| subgroupIds | An array of integer arrays containing participant ids for which subgroups should be created. If multiple groups are suitable, one is chosen randomly. Only one subgroup per group is created at once. |

## Resources

src/main/groovy/resources contains resources useful for the recommendation service.

| File | Description |
| --- | --- |
| application.propertes | Configuration file for the service. |
| database.sql | The contents of the database to be imported in a SQL database management system |
| evaluationresults.sql | SQL script which can be executed to get evaluation results for all possible combinations of recommender type, group type, rating type, aggregation strategy type, and metric type |
| usersurvey-cliques.json | User ids of cliques of user surveys which can be used in the generation of subgroups |


[Groovy]: http://groovy-lang.org/ 
[Gradle]: https://gradle.org/
 
