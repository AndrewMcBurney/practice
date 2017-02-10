# Erlang Notes
- Notes from 'Learn You Some Erlang For Great Good'

## Atoms
- An atom is referred to in an "atom table" which consumes memory (4 bytes/atom in a 32-bit system, 8 bytes/atom in a 64-bit system). The atom table is not garbage collected, and so atoms will accumulate until the system tips over, either from memory usage or because 1048577 atoms were declared.
- Atoms should not be generated dynamically.
