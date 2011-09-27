Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F45E004CF
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 10:52:25 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id CF9DE1C0F561
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 19:52:22 +0200 (CEST)
X-Auth-Info: +ICAmg5JwoPskZkVur4/UwVizSZduvi7AGwydUnrWp0=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 2A1421C001A7
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 19:52:22 +0200 (CEST)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id EB3B1C913108
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 19:52:21 +0200 (CEST)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 65201140799C
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 19:52:21 +0200 (CEST)
To: poky@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Tue, 27 Sep 2011 19:52:21 +0200
Message-Id: <20110927175221.65201140799C@gemini.denx.de>
Subject: Supported host systems?
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
X-List-Received-Date: Tue, 27 Sep 2011 17:52:29 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Which Linux distributions are actually supported (and known to work)
as host systems for building Yocto / Poky?

The "Poky Handbook" says:

	We recommend Debian-based distributions, in particular a
	recent Ubuntu release (7.04 or newer), as the host system for
	Poky.

But Ubuntu 7.04 does not work, and even 8.04 does not (Python too old,
intltool too old, ...).

I want to use a maximally old known-to-be-working distribution to make
sure the resulting tools will work on a wide range of distributions as
is, i. e. without need to rebuild from the sources everywhere.

Which is the oldest known-to-be-working version of Ubuntu? Or Debian,
or Fedora, or CentOS, or ... ?

Thanks in advance.

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Business is like a wheelbarrow. Nothing ever happens until you  start
pushing.

