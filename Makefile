# Copyright (C) 2015, University of British Columbia
# Written by Yan Peng (July 12th 2017)
#
# License: A 3-clause BSD license.
# See the LICENSE file distributed with ACL2
#

.PHONY: all clean

ACL2_HOME ?= $(HOME)/src/acl2
ACL2 ?= $(ACL2_HOME)/saved_acl2
ACL2_SYSTEM_BOOKS ?= $(ACL2_HOME)/books
ACL2_BUILD_DIR ?= $(ACL2_SYSTEM_BOOKS)/build

JOBS ?= 3

all: top

top:
	$(ACL2_BUILD_DIR)/cert.pl -j $(JOBS) -a $(ACL2) -b $(ACL2_SYSTEM_BOOKS) top

doc:
	$(ACL2_BUILD_DIR)/cert.pl -j $(JOBS) -a $(ACL2) -b $(ACL2_SYSTEM_BOOKS) doc

example:
	$(ACL2_BUILD_DIR)/cert.pl -j $(JOBS) -a $(ACL2) -b $(ACL2_SYSTEM_BOOKS) examples/smtlink3-examples.lisp

clean:
	$(ACL2_BUILD_DIR)/clean.pl
	rm -rf manual
