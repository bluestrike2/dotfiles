packages.install: packages.list
	apm install --packages-file packages.list

packages.list: packages/*/
	apm list --installed --bare > packages.list
