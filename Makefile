PKG_NAMESPACE = yhttp.boilerplate
PKG_NAME = yhttp-boilerplate
PYTEST_FLAGS = -vv
PYDEPS_COMMON = \
	'coveralls' \
	'bddrest >= 6.2.3, < 7' \
	'bddcli >= 2.5.1, < 3' \
	'yhttp-dev >= 3.2.4' 


# Assert the python-makelib version
PYTHON_MAKELIB_VERSION_REQUIRED = 1.5.5


# Ensure the python-makelib is installed
PYTHON_MAKELIB_PATH = /usr/local/lib/python-makelib
ifeq ("", "$(wildcard $(PYTHON_MAKELIB_PATH))")
  MAKELIB_URL = https://github.com/pylover/python-makelib
  $(error python-makelib is not installed. see "$(MAKELIB_URL)")
endif


# Include a proper bundle rule file.
include $(PYTHON_MAKELIB_PATH)/venv-lint-test-webapi.mk


YHTTP_FLAGS = \
	-Odebug=True


serve:
	$(PREFIX)/bin/yhttp-boilerplate $(YHTTP_FLAGS) serve
