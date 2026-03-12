-- name: DeleteBarByIDAndName :execrows
DELETE FROM bar WHERE id = $1 AND name = $2;

-- name: GetBar :one
SELECT * FROM bar WHERE id = $1 LIMIT 1;

-- name: ListBarUpperNames :many
SELECT id, name AS upper_name FROM bar ORDER BY id;
