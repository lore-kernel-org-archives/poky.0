Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E54B4C80228
	for <poky@yoctoproject.org>; Sun, 22 May 2011 10:49:25 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id A443F1C1D9FE;
	Sun, 22 May 2011 17:49:24 +0200 (CEST)
X-Auth-Info: FP39aXnClJdaeCKaauhw4ELCfB56jk8Ua4CgO8P8OOY=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 197CF1C0004D;
	Sun, 22 May 2011 17:49:24 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id EABEC320D041;
	Sun, 22 May 2011 17:49:23 +0200 (CEST)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id BE3A0EA6690;
	Sun, 22 May 2011 17:49:23 +0200 (CEST)
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4DD87348.2070700@windriver.com>
References: <cover.1305972143.git.xiaofeng.yan@windriver.com>
	<d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>
	<20110521184855.1248D1499BF2@gemini.denx.de>
	<4DD87348.2070700@windriver.com>
Comments: In-reply-to Xiaofeng Yan <xiaofeng.yan@windriver.com>
	message dated "Sun, 22 May 2011 10:22:00 +0800."
Date: Sun, 22 May 2011 17:49:23 +0200
Message-Id: <20110522154923.BE3A0EA6690@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] sudo: Modify ownership for directory "/var/lib"
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
X-List-Received-Date: Sun, 22 May 2011 15:49:27 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Xiaofeng Yan,

In message <4DD87348.2070700@windriver.com> you wrote:
>
> Thanks for your reply. I am make lsb test to pass LSB certification. LSB 
> Test suite check /vat/lib, but failed with the following information.

I understand what you are doing.

> So "0700" make this directory without access permission. Perhaps it 
> could not be right method, I think you have a better method to solve 
> this problem. If you have, Please share with me.

I'm not even trying to comment if your fix is a correct one or not.

The description of the patch (Modify ownership) does not match with
code (where you do not modify the _ownership_, but the _permissions_).

From the subject I would expect to see a "chown" command, but instead
I see a "chmod".

That's all I wanted to point out.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
panic: kernel trap (ignored)

