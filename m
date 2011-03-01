Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9995C4C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 04:05:59 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so1093790pwi.35
	for <poky@yoctoproject.org>; Tue, 01 Mar 2011 02:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=hweKzz4yz5fmKqa0YcH7KdXj6uN91skn4sDwkRdM9aM=;
	b=LL4phNliG3+8F7iajC5MxUlo9GsocoWPYSOxnd+VOoFuSN5SNvhPbc57QA16mDjgnB
	tzdne7Hanm3kb+NztZWmd0epGinxbIzgRpKKas7UGZj7oFTF5d4COsTA/4M3Klwu4k5K
	HAbSclcxRRn0fxcQ7sFgiWxmsRxYQ9KBQ2fEU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	b=qrUNMPImGv0ikV6mbBJL/+rXKuU8YdZ6CTdFB2S02RMuq1/ZbWS1r/OsLZqaD1O0gh
	7dwkG1EwS6+ZTPHDqKPqK9Nz/sxxeBf29Ex5SjFbplUdfl8Yc6RJSQyTRmproeX+jutD
	FfOnxvgyZAZx6hUa576KS2Agzju9dR/yo6aLU=
Received: by 10.142.248.15 with SMTP id v15mr516375wfh.279.1298973958861;
	Tue, 01 Mar 2011 02:05:58 -0800 (PST)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id z8sm7274786wfj.1.2011.03.01.02.05.56
	(version=SSLv3 cipher=OTHER); Tue, 01 Mar 2011 02:05:58 -0800 (PST)
Message-ID: <4D6CC501.9020004@gmail.com>
Date: Tue, 01 Mar 2011 15:35:53 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110207 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Got error while trying to pull ORBit as package in Poky
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
X-List-Received-Date: Tue, 01 Mar 2011 10:05:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am trying to pull Orbit2 package and got errors as follows. Can any 
one help ?


Log data follows:

| automake (GNU automake) 1.11.1

| Copyright (C) 2009 Free Software Foundation, Inc.

| License GPLv2+: GNU GPL version 2 or later<http://gnu.org/licenses/gpl-2.0.html>

| This is free software: you are free to change and redistribute it.

| There is NO WARRANTY, to the extent permitted by law.

|

| Written by Tom Tromey<tromey@redhat.com>

|        and Alexandre Duret-Lutz<adl@gnu.org>.

| AUTOV is 1.11

| NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint -I /home/ylal/logi/poky-chrome/build/tmp/work/core2-poky-linux/ORBit2-2.10.0-r1/ORBit2-2.10.5/ -I/home/ylal/logi/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/aclocal-1.11 -I /home/ylal/logi/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/aclocal

| autoreconf: Entering directory `.'

| autoreconf: configure.in: not using Gettext

| autoreconf: running: aclocal -I /home/ylal/logi/poky-chrome/build/tmp/work/core2-poky-linux/ORBit2-2.10.0-r1/ORBit2-2.10.5/ -I /home/ylal/logi/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/aclocal-1.11 -I /home/ylal/logi/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/aclocal -I /home/ylal/logi/poky-chrome/build/tmp/work/core2-poky-linux/ORBit2-2.10.0-r1/ORBit2-2.10.5/ -I /home/ylal/logi/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/aclocal-1.11 -I /home/ylal/logi/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/aclocal --force

| autoreconf: configure.in: tracing

| configure.in:198: warning: AC_RUN_IFELSE called without default to allow cross compiling

| ../../lib/autoconf/general.m4:2709: AC_RUN_IFELSE is expanded from...

| ../../lib/autoconf/general.m4:2725: AC_TRY_RUN is expanded from...

| configure.in:198: the top level

| autoreconf: running: libtoolize --copy --force

| libtoolize: putting auxiliary files in `.'.

| libtoolize: copying file `./ltmain.sh'

| libtoolize: Consider adding `AC_CONFIG_MACRO_DIR([m4])' to configure.in and

| libtoolize: rerunning libtoolize, to keep the correct libtool macros in-tree.

| libtoolize: Consider adding `-I m4' to ACLOCAL_AMFLAGS in Makefile.am.

| autoreconf: running: /home/ylal/logi/poky-chrome/build/tmp/sysroots/i686-linux/usr/bin/autoconf --include=/home/ylal/logi/poky-chrome/build/tmp/work/core2-poky-linux/ORBit2-2.10.0-r1/ORBit2-2.10.5/ --include=/home/ylal/logi/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/aclocal-1.11 --include=/home/ylal/logi/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/aclocal --force --warnings=cross

| configure.in:198: warning: AC_RUN_IFELSE called without default to allow cross compiling

| ../../lib/autoconf/general.m4:2709: AC_RUN_IFELSE is expanded from...

| ../../lib/autoconf/general.m4:2725: AC_TRY_RUN is expanded from...

| configure.in:198: the top level

| configure.in:124: error: possibly undefined macro: PKG_CONFIG_MIN_VERSION

|       If this token and others are legitimate, please use m4_pattern_allow.

|       See the Autoconf documentation.

| autoreconf: /home/ylal/logi/poky-chrome/build/tmp/sysroots/i686-linux/usr/bin/autoconf failed with exit status: 1

| FATAL: autoreconf execution failed.

| ERROR: Task failed: ('function do_configure failed', '/home/ylal/logi/poky-chrome/build/tmp/work/core2-poky-linux/ORBit2-2.10.0-r1/temp/log.do_configure.28161')

NOTE: package ORBit2-2.10.0-r1: task do_configure: Failed


Thanks and Regards
Yogesh

