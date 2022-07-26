SELECT t.id, u1.name as writer, u2.name as recipient, t.message FROM testimonials t
JOIN users u1
ON u1.id = t."writerId"
JOIN users u2
ON u2.id = t."recipientId"