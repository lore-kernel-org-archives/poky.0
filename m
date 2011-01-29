Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 636574C810E5
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 18:06:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2011 16:06:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,394,1291622400"; d="scan'208";a="701819750"
Received: from unknown (HELO [10.7.199.79]) ([10.7.199.79])
	by orsmga001.jf.intel.com with ESMTP; 28 Jan 2011 16:06:54 -0800
Message-ID: <4D435A0A.5010304@intel.com>
Date: Fri, 28 Jan 2011 16:06:34 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1296167950.git.scott.a.garman@intel.com>	<2d59c34ceb4fb3a9c80bfcce999172ae6c16e663.1296167950.git.scott.a.garman@intel.com>
	<1296228416.2704.17.camel@scimitar>
In-Reply-To: <1296228416.2704.17.camel@scimitar>
Subject: Re: [PATCH 1/9] sgml-common: new recipe v0.6.3
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 29 Jan 2011 00:06:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/28/2011 07:26 AM, Joshua Lock wrote:
> On Thu, 2011-01-27 at 14:42 -0800, Scott Garman wrote:
>> From: Scott Garman<scott.a.garman@intel.com>
>>
>> Recipe derived from OpenEmbedded.
>>
>> Signed-off-by: Scott Garman<scott.a.garman@intel.com>
>> ---
>>   .../sgml-common/sgml-common-0.6.3/autohell.patch   |   58 ++++++++++++++++++++
>>   .../sgml-common/sgml-common-native_0.6.3.bb        |   50 +++++++++++++++++
>>   .../sgml-common/sgml-common_0.6.3.bb               |   53 ++++++++++++++++++
>>   3 files changed, 161 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch
>>   create mode 100644 meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
>>   create mode 100644 meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb
>>
>> diff --git a/meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch b/meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch
>> new file mode 100644
>> index 0000000..1366ada
>> --- /dev/null
>> +++ b/meta/recipes-devtools/sgml-common/sgml-common-0.6.3/autohell.patch
>> @@ -0,0 +1,58 @@
>> +Patch obtained from OpenEmbedded.
>> +
>> +Signed-off-by: Scott Garman<scott.a.garman@intel.com>
>> +--- sgml-common-0.6.3/bin/Makefile.am~autohell.patch	2001-01-30 15:42:21.000000000 +0100
>> ++++ sgml-common-0.6.3/bin/Makefile.am	2004-06-17 11:51:11.000000000 +0200
>> +@@ -1,6 +1,5 @@
>> + primitive_scripts = sgmlwhich
>> +
>> +-bindir = $(prefix)/bin
>> + bin_SCRIPTS = install-catalog $(primitive_scripts)
>> +
>> + EXTRA_DIST =  install-catalog.in $(primitive_scripts)
>> +--- /dev/null	2003-09-23 19:59:22.000000000 +0200
>> ++++ sgml-common-0.6.3/bin/sgmlwhich.in	2004-06-17 11:51:11.000000000 +0200
>> +@@ -0,0 +1,7 @@
>> ++#!/bin/sh
>> ++# Location of the main configuration file for consistency with non-LSB platforms
>> ++# Send any comments to Eric Bischoff<eric@caldera.de>
>> ++# This program is under GPL license. See LICENSE file for details.
>> ++
>> ++echo "@sysconfdir@/sgml/sgml.conf"
>> ++# Simple, isn't it? ;-)
>> +--- /dev/null	2003-09-23 19:59:22.000000000 +0200
>> ++++ sgml-common-0.6.3/config/sgml.conf.in	2004-06-17 11:51:11.000000000 +0200
>> +@@ -0,0 +1,2 @@
>> ++SGML_BASE_DIR=@datadir@/sgml
>> ++SGML_CATALOGS_DIR=@sysconfdir@/sgml
>> +--- sgml-common-0.6.3/configure.in~autohell.patch	2001-05-25 18:40:54.000000000 +0200
>> ++++ sgml-common-0.6.3/configure.in	2004-06-17 11:53:22.000000000 +0200
>> +@@ -3,11 +3,6 @@
>> +
>> + AM_INIT_AUTOMAKE(sgml-common, 0.6.3)
>> +
>> +-docdir='$(prefix)/doc'
>> +-AC_SUBST(docdir)
>> +-
>> +-dnl Checks for programs.
>> +-
>> + dnl Checks for libraries.
>> +
>> + dnl Checks for header files.
>> +@@ -18,6 +13,5 @@
>> +
>> + AC_OUTPUT(Makefile \
>> +           bin/Makefile bin/install-catalog \
>> +-          config/Makefile \
>> +-          doc/Makefile doc/HTML/Makefile doc/man/Makefile doc/refentry/Makefile \
>> ++          config/Makefile config/sgml.conf bin/sgmlwhich \
>> +           sgml-iso-entities/Makefile xml-iso-entities/Makefile)
>> +
>> +--- sgml-common-0.6.3/Makefile.am~no-docs	2001-05-25 18:22:01.000000000 +0200
>> ++++ sgml-common-0.6.3/Makefile.am	2004-06-17 11:49:09.000000000 +0200
>> +@@ -1,4 +1,4 @@
>> +-SUBDIRS = bin config doc sgml-iso-entities xml-iso-entities
>> ++SUBDIRS = bin config sgml-iso-entities xml-iso-entities
>> +
>> + sgmlcodir = $(prefix)/share/sgml
>> + sgmlco_DATA = xml.dcl
>> diff --git a/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb b/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
>> new file mode 100644
>> index 0000000..7e9b923
>> --- /dev/null
>> +++ b/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
>> @@ -0,0 +1,50 @@
>> +SUMMARY = "Base utilities for working with SGML and XML"
>> +DESCRIPTION = "The sgml-common package gathers very basic \
>> +stuff necessary to work with SGML and XML, such as xml.dcl, \
>> +a SGML declaration of XML; iso-entities, a list of the basic \
>> +SGML ISO entities; and install-catalog, a script used to \
>> +add entries to (or remove entries from) centralized catalogs \
>> +whose entries are pointers to SGML open catalogs, \
>> +as defined by OASIS."
>> +HOMEPAGE = "http://sources.redhat.com/docbook-tools/"
>> +LICENSE = "GPLv2"
>> +# The COPYING file sgml-common ships with is just a symlink to
>> +# /usr/share/automake/COPYING, which means we can't verify it
>> +# using our normal means. :( Hash the README file instead as
>> +# LIC_FILES_CHKSUM is still required.
>> +LIC_FILES_CHKSUM = "file://README;md5=197bd940bf13548ac2198e4f77d3da92"
>
> Can we add a patch which replaces the symlink with the actual file and
> hash that. Seems slightly more robust... but only slightly.

That this would also mean that when the recipe is upgraded, once the 
issue is fixed upstream, we'd end up overwriting the file with our 
included license file. This would make the license hash verification 
check break (as in not do its intended job of alerting us to license 
changes).

So I will include the license file as a patch, but will also clearly 
comment within the recipe to carefully check for license changes when 
upgrading the recipe.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project
Intel Open Source Technology Center

