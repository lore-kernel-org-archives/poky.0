Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id D4F554C800C0;
	Sat,  5 Feb 2011 08:07:13 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id A419D1853B8B;
	Sat,  5 Feb 2011 15:07:12 +0100 (CET)
X-Auth-Info: LXOY75M+CdkpsVmdZIs58KfTFSUkIZ9rlCUi6CPBx3A=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 6E6CB1C000E9;
	Sat,  5 Feb 2011 15:07:12 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 46E4030956E6;
	Sat,  5 Feb 2011 15:07:12 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 181EF152161;
	Sat,  5 Feb 2011 15:07:12 +0100 (CET)
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4D4C9919.6060708@intel.com>
References: <4D4C9919.6060708@intel.com>
Comments: In-reply-to Elizabeth Flanagan <elizabeth.flanagan@intel.com>
	message dated "Fri, 04 Feb 2011 16:26:01 -0800."
Date: Sat, 05 Feb 2011 15:07:12 +0100
Message-Id: <20110205140712.181EF152161@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Announcement] Laverne 4.0.1 Release
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
X-List-Received-Date: Sat, 05 Feb 2011 14:07:14 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Elizabeth Flanagan,

In message <4D4C9919.6060708@intel.com> you wrote:
> 
> We are pleased to announce the first bug-fix release of Poky Laverne,
> 4.0.1. This release is available at:
> 
> http://mirrors.kernel.org/yocto/poky/poky-laverne-4.0.1.tar.bz2

Is this Laverne 4.0.1 or 4.1 ? The git tag is laverne-4.0.1, but the
7fa2b1c commit message says:

    Laverne 4.1 release: NOTES and CHANGELOG
    
    Name: Laverne
    Version: 4.0.1
    Built from Revision: fd7a07b3a2153826bedda2ef76b9a33ab2791680
    Build Date: Jan 26 2011
    Builder: autobuilder.pokylinux.org
    
    Commit of final release notes and changelog for Laverne 4.1

And in d1fd60f I see this:

    Setting Yocto rev number to 4.1: poky.conf
...
-DISTRO_NAME = "Yocto Linux (Built by Poky 4.0)"
+DISTRO_NAME = "Yocto Linux (Built by Poky 4.1)"


So I'm a bit confused?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Some people march to the beat of a different drummer. And some people
tango!

