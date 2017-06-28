





update:

fetch: i3-fetch

i3-fetch: $(i3_fetch_dir)/config $(i3_fetch_dir)/conkyrc lemonbar

lemonbar: $(lemonfiles_fetch)
	 $(foreach var,$@,./a.out $(var);)
