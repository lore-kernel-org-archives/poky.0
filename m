Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CF314C80A75
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 14:44:46 -0500 (CDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id CE1D11800920
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 21:44:45 +0200 (CEST)
X-Auth-Info: k2fL6Yj0JTaPJtx4KcDe3HoEV0RcQSkgebwZqdEq6Po=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id CA3501C000AA
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 21:44:45 +0200 (CEST)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id ABA48327C692
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 21:44:45 +0200 (CEST)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 9BCC5151F83
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 21:44:45 +0200 (CEST)
To: poky@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Thu, 14 Apr 2011 21:44:45 +0200
Message-Id: <20110414194445.9BCC5151F83@gemini.denx.de>
Subject: Distro policy ?
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
X-List-Received-Date: Thu, 14 Apr 2011 19:44:47 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

HI,

we're trying to build our own distribution based on Yocto 1.0.  We
would like to push all modifications / extensions and our distro stuff
upstream into the mainline repository, but we are not sure what is the
best way to do this:

So far we have put our distro-related changes into a separate layer
but it seems that it was not so good idea: it looks like bitbake
can't include files from one layer to another and we have to copy
includes even if we don't want to change them.

Putting our changes back into the main layer would be pretty trivial,
but it appears that current tendency is to move all
distribution-specific things to their respective layers (like the
poky distro configuration itself was moved to the meta-yocto layer).

So, from the policy side I think we should go with our own layer.
On the technical side I'm disappointed with this 'include' problem: I
find it rather impractical to copy things we don't want to change and
just want to use from one layer to another and then having to keep
these in sync with mainline.

What is the recommended way to address this issue?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
How come everyone's going so slow if it's called rush hour?

