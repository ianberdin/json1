#terser -m -d process.env.JSON1_RELEASE_MODE=true -c pure_funcs=log,keep_fargs=false,passes=2 --wrap fn < lib/json1.js

lib/json1.release.js: lib/json1.js
	terser -d process.env.JSON1_RELEASE_MODE=true -c pure_funcs=log,keep_fargs=false,passes=2 -b < $< > $@
