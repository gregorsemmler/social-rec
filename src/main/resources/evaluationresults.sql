(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union

(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="STANDARD" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="DELEGATION_BASED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="INTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="EXTERNAL" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.group_type_id="MIXED" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="PRICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, "ALL" as group_type_id , rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id in ("INTERNAL", "EXTERNAL", "MIXED") and
rc.recommender_type="SOCIAL_CONTEXT" and rc.rating_type="TASTE" and rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="STANDARD"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="DELEGATION_BASED"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="AVERAGE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="TASTE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="PRICE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="CLUMSINESS" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SERVICE" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="HIPPIENESS" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="LOCATION" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and rc.aggregation_strategy_type="AVERAGE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="AVERAGE_WITHOUT_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="APPROVAL_VOTING"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="BORDA_COUNT"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="COPELAND_RULE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="FAIRNESS"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="LEAST_MISERY"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="MAXIMUM_PLEASURE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="MULTIPLICATIVE"
group by er.metric_type
)
union
(
select rc.recommender_type, rc.group_type_id, rc.rating_type, rc.aggregation_strategy_type, er.metric_type, avg(er.score) as average_score from evaluation_result er, recommendation_context rc where 
er.recommendation_context_id = rc.id and rc.group_type_id="GENSUB" and 
rc.recommender_type="SOCIAL_CONTEXT"  and rc.rating_type="SOCIAL_OVERLAP" and
rc.aggregation_strategy_type="PLURALITY_VOTING"
group by er.metric_type
)

