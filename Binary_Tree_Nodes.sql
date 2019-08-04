/*
 * A leaf node is one with no children, a root node is a root with no parent, and an inner
 * node is a node that isn't either a leaf or root.
 *
 * To figure out if our node n is a leaf, we ask - do any nodes have n as a parent?
 * If the answer is no, then n is a leaf.
 *
 * To figure out if our node n is a root, we ask - does n have a parent node?
 * If the answer is no, then n is a root.
 */
 
SELECT N, 
CASE WHEN P IS NULL THEN "Root"
WHEN NOT EXISTS (SELECT inner_table.P FROM BST AS inner_table WHERE inner_table.P = outer_table.N) THEN "Leaf"
ELSE "Inner"
END AS NodeType
FROM BST AS outer_table
ORDER BY N ASC;