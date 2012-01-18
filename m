Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E40D8E004D2
	for <poky@yoctoproject.org>; Wed, 18 Jan 2012 08:27:50 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9C475F811ED; Wed, 18 Jan 2012 09:27:49 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 13016F811DD;
	Wed, 18 Jan 2012 09:27:48 -0700 (MST)
Message-ID: <4F16F304.9030907@mlbassoc.com>
Date: Wed, 18 Jan 2012 09:27:48 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: eglibc schizophrenia?
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
X-List-Received-Date: Wed, 18 Jan 2012 16:27:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Using master 5724ee9c3a99519fea96446638910b727b89898d (2012-01-18)
with MACHINE=beagleboard

I just noticed that a build from scratch is using two different
versions of eglibc:
   eglibc-2_12_www.eglibc.org_.svn.branches._11982_.tar.gz
   eglibc-2_13_www.eglibc.org_.svn.branches._15508_.tar.gz

Is there some reason for this?  Why not just use version 2.13
full stop?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

