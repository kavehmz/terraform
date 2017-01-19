all:
	set -e;for d in $$(git ls-files '*.tf' | xargs -n1 dirname | sort | uniq);do echo -n "$${d} ";terraform validate "$${d}";echo "✓";done
