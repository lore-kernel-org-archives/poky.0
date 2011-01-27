Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 154AF4C811F4
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:39:58 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 75FAB188B5BF;
	Thu, 27 Jan 2011 12:39:57 +0100 (CET)
X-Auth-Info: NY9/PuTi1nfisOS7jok1wAFfo05zfnA1VTL1AUVtKK4=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 8B3A21C0013B;
	Thu, 27 Jan 2011 12:39:57 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 67B5932105AD;
	Thu, 27 Jan 2011 12:39:57 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 44BD4B335;
	Thu, 27 Jan 2011 12:39:57 +0100 (CET)
To: Saul Wold <sgw@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4D40BF02.3020806@linux.intel.com>
References: <20110126222304.75B03CD1385@gemini.denx.de>
	<4D40BF02.3020806@linux.intel.com>
Comments: In-reply-to Saul Wold <sgw@linux.intel.com>
	message dated "Wed, 26 Jan 2011 16:40:34 -0800."
Date: Thu, 27 Jan 2011 12:39:57 +0100
Message-Id: <20110127113957.44BD4B335@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: Build of meta-toolchain-sdk fails
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
X-List-Received-Date: Thu, 27 Jan 2011 11:39:59 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Saul,

In message <4D40BF02.3020806@linux.intel.com> you wrote:
> 
> Was this a scratch build?  I just build
> MACHINE=qemuppc bitbake meta-toolchain-sdk
> 
> and that worked OK, did you do this from an exisiting build?  There was 
> a recent set of changes that require restarting from a clean state.
> 
> If you can please try that.

Well, I did a scratch build of poky-image-sdk which worked fine,
followed by a build of meta-toolchain-sdk in the same tree, which
failed.

I will retry with the now current top of tree.

Thanks.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Reader, suppose you were an idiot. And suppose you were a  member  of
Congress. But I repeat myself.                           - Mark Twain

