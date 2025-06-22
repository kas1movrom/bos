grep 'bash$' /etc/passwd | while IFS=: read user passwd uid gid name homedir shell
do
	printf "%16s: %s\n" \
		User "$user" \
		Password "$passwd" \
		"User ID" "$uid" \
		"Group ID" "$gid" \
		Name "$name" \
		"Home directory" "$homedir" \
		Shell "$shell"
	echo
done
