SELECT e.elf_name, COALESCE(v.return_date::text, 'Still resting') AS return_date
FROM elves e
LEFT JOIN vacations v on e.elf_id = v.elf_id;