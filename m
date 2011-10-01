Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBFE3E004D1
	for <poky@yoctoproject.org>; Sat,  1 Oct 2011 04:28:45 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id B62DE180400D;
	Sat,  1 Oct 2011 13:28:41 +0200 (CEST)
X-Auth-Info: aipaI4+PYA4FlsfkeThIwYHYQ9sJeo3f12u5Vb36Zdk=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id C0BBD1C0013D;
	Sat,  1 Oct 2011 13:28:41 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 38304C0C846B;
	Sat,  1 Oct 2011 13:28:27 +0200 (CEST)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 7981B18D9ECB;
	Sat,  1 Oct 2011 13:28:26 +0200 (CEST)
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E8463C@ORSMSX101.amr.corp.intel.com>
References: <20110930175612.667D21208F1C@gemini.denx.de>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916E8463C@ORSMSX101.amr.corp.intel.com>
Comments: In-reply-to "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
	message dated "Fri, 30 Sep 2011 21:18:58 -0000."
Date: Sat, 01 Oct 2011 13:28:26 +0200
Message-Id: <20111001112826.7981B18D9ECB@gemini.denx.de>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: debian.o-hand.com unreachable ?
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
X-List-Received-Date: Sat, 01 Oct 2011 11:28:48 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Scott,

In message <41DEA4B02DBDEF40A0F3B6D0DDB1237916E8463C@ORSMSX101.amr.corp.intel.com> you wrote:
> 
> What is the URL you are using for the Poky Handbook? I would suggest
> not using the Poky Handbook, but rather the Poky Reference manual at
> http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html.
> This manual is much more up-to-date.

Thanks for pointing out.  Indeed this was my problem - I used to
gootgle for "Poky Handbook" which takes me to
http://pokylinux.org/doc/poky-handbook.html
which has all these obsolete links.

Hm... would it not make sense to update pokylinux.org and have it
point to the currecnt docs instead?

Thanks.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Wenn Du ein' weise Antwort verlangst, Mußt Du vernünftig fragen.
                                                -- Goethe, Invektiven

