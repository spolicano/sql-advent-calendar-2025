WITH daily_counts AS (
    SELECT
        m.sent_at::date AS day_sent,
        u.user_id,
        u.user_name,
        COUNT(m.message_id) AS num_msgs
    FROM npn_messages m
    JOIN npn_users u
      ON m.sender_id = u.user_id
    GROUP BY
        m.sent_at::date,
        u.user_id,
        u.user_name
),
ranked AS (
    SELECT
        daily_counts.*,
        RANK() OVER (
            PARTITION BY day_sent
            ORDER BY num_msgs DESC
        ) AS rnk
    FROM daily_counts
)
SELECT
    user_id,
    user_name,
    day_sent,
    num_msgs
FROM ranked
WHERE rnk = 1
ORDER BY day_sent, user_id;