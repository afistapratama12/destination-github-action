# generator html slide using marp-cli
git whatchanged -1 --name-only --pretty="" |
grep apps/kampusmerdeka/docs |
grep .md |
xargs grep -l "marp: true\|marp : true" | 
sort --unique |
xargs -I % npx @marp-team/marp-cli@latest % --theme-set apps/kampusmerdeka/themes/rg-theme.css
git ls-files . --exclude-standard --others | tee log-generate